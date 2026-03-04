# Homebrew Tap

Homebrew formulae for [nficano](https://github.com/nficano) projects.

## Installation

```sh
brew tap nficano/tap
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| [debaser](https://github.com/nficano/debaser) | Deterministic release name generator |
| [github-runner](https://github.com/nficano/github-runner) | Self-hosted GitHub Actions runner |

### debaser

```sh
brew install nficano/tap/debaser
```

For more details, see the [debaser documentation](https://github.com/nficano/debaser).

### github-runner

```sh
brew install nficano/tap/github-runner
```

After installation, edit the config with your GitHub token:

```sh
$EDITOR $(brew --prefix)/etc/github-runner/config.toml
```

Start as a background service:

```sh
brew services start github-runner
```

For more details, see the [github-runner documentation](https://github.com/nficano/github-runner).
