[![Website Badge](https://img.shields.io/badge/Website-eearomatics.com-white?style=for-the-badge&logo=square&logoColor=%23ffffff&labelColor=%23bebba8)](https://www.eearomatics.com)

# Ilúvatar

> Eru Ilúvatar, the supreme, delegated the shaping of the world

## About

This project defines the foundations of various critical technologies at Ethereal Elegance Aromatics. This mostly utilizes OpenTofu, but also other supporting technologies and capabilities to provide optimal user experiences on our site.

## Tech

_*Sorted alphabetically_

- Cloudflare
- Direnv
- GitHub Actions
- GPG
- Nix
- NodeJS
- OpenTofu
- S3
- SOPS
- Taskfile
- TypeScript
- Yarn

### OpenTofu

A free and open source fork of Terraform. This is used for defining and maintaining various infrastructure for the application. This includes aspects of the stack such as Cloudflare DNS and Neon databases.
### Nix

The declarative and functional package manager and language: Nix. This is a minimal flake that provided just the development layer tier, though Nix can be utilized for bundling and deploying packages to NixOS environments too.

### Direnv

A useful development tool for augmenting your shell for projects, allowing you to load environment variables and tools transparently by simply changing into a project directory. This, along with the builtin support for Nix with `use flake`, allows anyone with `direnv` and `nix` to immediately enter a shell with the exact versions of tools for the project.

### NodeJS

It's NodeJS! The famous single-threaded event-loop JavaScript runtime powered by the V8 engine.

### TypeScript

Have you ever been like "what the heck is this variable? what can I do with it? what will be there? what might be there?" Well you may have wanted to have some better typing. TypeScript takes the largely unbounded ECMAScript and makes it significantly more tenable to understand and work with as projects expand (or don't). It doesn't alter the runtime at all but exists at the compilation layer- providing static type safety only, but more safe than JS alone.

### Yarn

A Node package manager. You could swap this out for pnpm, npm, etc. It has good out-of-the-box support for workspaces which I often find useful.

### VS Code

This template provides recommendations and settings for the [Nix Env Selector extension](https://marketplace.visualstudio.com/items?itemName=arrterian.nix-env-selector) which utilizes the `shell.nix` file to provide an identical environment for the VS Code editor as the `direnv` shell would. This parity ensures you aren't references different versions of binaries due to variance in your `code` process's `$PATH` and the shell's. 

## Services

Everything lives under `packages/` for now. This supports a basic monorepo structure where individual npm packages can exist through the project with Yarn's workspaces support.

## Infrastructure

You can get started with the OpenTofu stack with the shared S3 state in Cloudflare R2.

There are two **major** requirements:

> ⚠️ Make sure you're inside the `infrastructure/${project}` directory for all the commands, e.g. `infrastructure/torinreine`

> ⚠️ Make sure you have the necessary environment variables sourced to your shell from the `.env` file. This is **encrypted** by `sops`.

Now, initialize the project:

```sh
tofu init -backend-config=../backends/cloudflare-r2.conf
```

Plan the project:

```sh
tofu plan
```

Apply the project:

```sh
tofu apply
```

## Tasks

Common tasks are defined in the `Taskfile.yml` file. Read more on [Taskfile] to learn how to use and interact with it. This will require the `task` CLI.

You can list all tasks with `task --list-all`.

## Secrets

Secrets are managed with [sops] and [gnupg]. You can edit existing sops files, granted you have sufficient access to, with `sops $filepath`. Older version of `sops` also had a command for this using `sops edit $filename`.

<!-- Requirements -->

[Taskfile]: https://taskfile.dev/usage
[sops]: https://getsops.io/
[gnupg]: https://gnupg.org/