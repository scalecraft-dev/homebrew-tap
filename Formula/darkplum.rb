# Rendered by .github/scripts/render-formula.py from a published release's
# checksums.txt and pushed to scalecraft-dev/homebrew-tap by release.yml (job
# "tap"). Edit the template here, never the tap's copy.
class Darkplum < Formula
  desc "Operate a private AI platform in your own AWS account"
  homepage "https://github.com/scalecraft-dev/darkplum"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.1.0/darkplum_0.1.0_darwin_arm64.tar.gz"
      sha256 "66bb11534636e970819a7eca143467b340f666e51153664c6c7705ed866deca6"
    end
    on_intel do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.1.0/darkplum_0.1.0_darwin_amd64.tar.gz"
      sha256 "0c31b1b6a7d6fe97335f4d337797d9a7c97bea84ede50ce24570cc53b86ae425"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.1.0/darkplum_0.1.0_linux_arm64.tar.gz"
      sha256 "c22e06ec46f6dd09b82d782626f5f48f007dfcd5dc578789ce54f5bca6656e19"
    end
    on_intel do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.1.0/darkplum_0.1.0_linux_amd64.tar.gz"
      sha256 "67a5dc47a3e22366da9bf6355676794b7a23fd5b0db372d27d6d786ba9d76a4c"
    end
  end

  def install
    bin.install "darkplum"
  end

  test do
    assert_match "darkplum #{version} (release)", shell_output("#{bin}/darkplum version")
  end
end
