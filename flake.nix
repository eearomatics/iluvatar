{
  description = "eearomatics/iluvatar";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShells = {
          default = pkgs.mkShell {
            packages = with pkgs; [
                # General dev tools
                biome
                deno
                git
                go-task

                # Secrets management
                gnupg
                sops
                age

                # NodeJS development
                nodejs_18
                yarn
                prisma-engines # Prisma ORM

                # Infrastructure-as-Code tools
                opentofu
                terragrunt
                cf-terraforming

                (pkgs.writeShellScriptBin
                  "cftofu"
                  "cf-terraforming --terraform-binary-path ${pkgs.opentofu}/bin/tofu --provider-registry-hostname $CLOUDFLARE_PROVIDER_REGISTRY_HOSTNAME -t $TF_VAR_cf_api_token $@"
                )

                (pkgs.writeShellScriptBin
                  "tofu-mv"
                  ''
                    ${pkgs.opentofu}/bin/tofu state mv $1.$2 $1.$3
                    find . -type f -iname '*.tf' -exec sed -i "s/$2/$3/g" {} \;
                  ''
                )

                (pkgs.writeShellScriptBin
                  "cftofu-import"
                  "cftofu import $@ | sed 's/terraform/tofu/' | $SHELL"
                )
            ];


            env = {
              PROJECT_NAME = "iluvatar";
              CLOUDFLARE_PROVIDER_REGISTRY_HOSTNAME="registry.opentofu.org";
              CLOUDFLARE_TERRAFORM_BINARY_PATH="${pkgs.opentofu}/bin/tofu";
              TERRAGRUNT_TFPATH= "${pkgs.opentofu}/bin/tofu";

              PRISMA_QUERY_ENGINE_LIBRARY = "${pkgs.prisma-engines}/lib/libquery_engine.node";
              PRISMA_QUERY_ENGINE_BINARY = "${pkgs.prisma-engines}/bin/query-engine";
              PRISMA_SCHEMA_ENGINE_BINARY = "${pkgs.prisma-engines}/bin/schema-engine";
            };

            shellHook = ''
                echo $ Started devshell for $PROJECT_NAME
                echo
                echo Prisma has been configured from Nixpkgs
                echo
                echo Decrypting environment to shell
                echo

                local rd="$(${pkgs.git}/bin/git rev-parse --show-toplevel)"
                if [ ! -f "$rd/.env.dec" ] || [ "$rd/.env.dec" -ot "$rd/.env" ]; then
                  ${pkgs.sops}/bin/sops -d $rd/.env > $rd/.env.dec
                fi
                source $rd/.env.dec
            '';
          };
        };
      }
    );
}