<h1 align="center">
  <br>
  nficano/tap
  <br>
</h1>

<p align="center">
  <b>Homebrew formulae for <a href="https://github.com/nficano">nficano</a> projects.</b>
</p>

<p align="center">
  <a href="#installation">Installation</a> &bull;
  <a href="#formulae">Formulae</a> &bull;
  <a href="#troubleshooting">Troubleshooting</a>
</p>

---

## Installation

```sh
brew tap nficano/tap
```

## Formulae

### debaser

> Deterministic release name generator that converts a Git SHA or checksum into a friendly, alliterative adjective-noun name.

```sh
brew install nficano/tap/debaser
```

```sh
$ debaser --sha HEAD
snappy-sable
```

[Documentation](https://github.com/nficano/debaser) · [Releases](https://github.com/nficano/debaser/releases)

---

### github-runner

> Self-hosted GitHub Actions runner with first-class macOS and Linux support, managed entirely through a single config file.

```sh
brew install nficano/tap/github-runner
```

After installation, configure your GitHub token and start the service:

```sh
$EDITOR $(brew --prefix)/etc/github-runner/config.toml
brew services start github-runner
```

[Documentation](https://github.com/nficano/github-runner) · [Releases](https://github.com/nficano/github-runner/releases)

---

## Troubleshooting

If a formula fails to install, ensure the tap is up to date:

```sh
brew update
brew upgrade nficano/tap/<formula>
```

To report issues, open an issue on the relevant project repository.
