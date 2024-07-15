# infrastructure

The following Terraform modules provide the infrastructure for various resources across the org.

This includes the following site resources hosted and maintained in Cloudflare

- eearomatics.com
- torinreine.com

This may also be extended to define other resources necessary for the org that may be useful to maintain as code.

## jumpstarting existing resources

Most of the resources for Cloudflare are already defined. Here is where we have to make use of two features:

- [cf-terraforming](https://github.com/cloudflare/cf-terraforming) for generating resources and import statements
- OpenTofu's ability to import resources

### Helpers

The Nix development shell in the project defines a couple of shell wrappers to make this simpler, make sure to check out the `flake.nix` for more info.

- `cftofu`
  > basic wrapper for `cf-terraforming` that automatically injects the correct OpenTofu binary path and Cloudflare API token

- `cftofu-import $`
  > delegates the `cf-terraforming import` capability, replacing the explicit `tofu` path, and piping to the current shell

- `tofu-mv $resource_name $current_name $target_name`
  > reduces redundancy in consistent resource types when renaming

### Import Cloudflare resources

```shell
CF_RESOURCE=cloudflare_ruleset
ZONE_ID=deadbeef

cftofu generate --resource-type $CF_RESOURCE -z $ZONE_ID > $CF_RESOURCE.tf
cftofu-import --resource-type $CF_RESOURCE -z $ZONE_ID

# for each resource defined in the new output file
tofu-mv $CF_RESOURCE $generated_name $preferred_new_name
```
