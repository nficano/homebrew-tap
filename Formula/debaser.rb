class Debaser < Formula
  desc "Deterministic release name generator"
  homepage "https://github.com/nficano/debaser"
  version "0.1.11"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nficano/debaser/releases/download/v#{version}/debaser-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1408c46996e1bd673b923554f39777cff63f6a51d9c47b3f38f8c31b6d1c4433"
    else
      url "https://github.com/nficano/debaser/releases/download/v#{version}/debaser-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "da7a90bd32ef62c1e2bc7dd87f45f1bcd0e1afe2802c2e038da1fd91fc9557f9"
    end
  end

  on_linux do
    url "https://github.com/nficano/debaser/releases/download/v#{version}/debaser-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c3f29327a18be433b37d0d7bf012fdb162053aec131797d9190b53fdfae2be54"
  end

  def install
    target =
      if OS.mac?
        Hardware::CPU.arm? ? "aarch64-apple-darwin" : "x86_64-apple-darwin"
      else
        "x86_64-unknown-linux-gnu"
      end

    bin.install "debaser-v#{version}-#{target}/debaser"
  end

  test do
    assert_match "-", shell_output("#{bin}/debaser --checksum abcd").strip
  end
end
