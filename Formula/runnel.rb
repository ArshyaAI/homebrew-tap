class Runnel < Formula
  desc "Trace the work. Stop only what the evidence proves safe."
  homepage "https://github.com/ArshyaAI/runnel"
  license "Apache-2.0"

  version "0.1.0"

  if OS.mac?
    on_macos do
      on_arm do
        url "https://github.com/ArshyaAI/runnel/releases/download/v#{version}/runnel_v#{version}_darwin_arm64.tar.gz"
        sha256 "11df9477183e32907dc5bfc5778961628160a0e17d6c7acfa50d9ed41b6a14a7"
      end

      on_intel do
        url "https://github.com/ArshyaAI/runnel/releases/download/v#{version}/runnel_v#{version}_darwin_amd64.tar.gz"
        sha256 "361ca7b78d62f14b3327d1e1a7977eded4a25fcd6f7603e9c7aacd71aa9a6986"
      end
    end
  end

  def install
    bin.install "runnel"
    bash_completion.install "completions/runnel.bash"
    zsh_completion.install "completions/runnel.zsh" => "_runnel"
    fish_completion.install "completions/runnel.fish"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/runnel version")
    system bin/"runnel", "doctor", "--self-test"
  end
end
