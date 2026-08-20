class Runnel < Formula
  desc "Trace the work. Stop only what the evidence proves safe."
  homepage "https://github.com/ArshyaAI/runnel"
  license "Apache-2.0"

  version "0.1.1"

  if OS.mac?
    on_macos do
      on_arm do
        url "https://github.com/ArshyaAI/runnel/releases/download/v#{version}/runnel_v#{version}_darwin_arm64.tar.gz"
        sha256 "b12d875d77660d3357f5bce378dd556cb0326aef68ea4c904b50db47dc545a77"
      end

      on_intel do
        url "https://github.com/ArshyaAI/runnel/releases/download/v#{version}/runnel_v#{version}_darwin_amd64.tar.gz"
        sha256 "c532c25382231016c4d481e8386d870549030777e8d4b530979dd9c08fad2d75"
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
    assert_match "0.1.1", shell_output("#{bin}/runnel version")
    system bin/"runnel", "doctor", "--self-test"
  end
end
