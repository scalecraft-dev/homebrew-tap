# Rendered by .github/scripts/render-formula.py from a published release's
# checksums.txt and pushed to scalecraft-dev/homebrew-tap by release.yml (job
# "tap"). Edit the template here, never the tap's copy.
class Darkplum < Formula
  desc "Operate a private AI platform in your own AWS account"
  homepage "https://github.com/scalecraft-dev/darkplum"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.2.0/darkplum_0.2.0_darwin_arm64.tar.gz"
      sha256 "ec7f0f48369954c6b1fd11836009cdbd2e46cbbfb9a2be937ac56196092afbe5"
    end
    on_intel do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.2.0/darkplum_0.2.0_darwin_amd64.tar.gz"
      sha256 "50b754b2239b3de7c39300e73642e37bfb61e05ad3a9e4cda35e98900419f725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.2.0/darkplum_0.2.0_linux_arm64.tar.gz"
      sha256 "a44128db36fac3ddd43f15e2d41ef0910fa658650f5e0eee161eba00c311661d"
    end
    on_intel do
      url "https://github.com/scalecraft-dev/darkplum/releases/download/v0.2.0/darkplum_0.2.0_linux_amd64.tar.gz"
      sha256 "b4f81299969626ed2ef22a6bd0af003a6f7f8b7cc51ecb73996f81ba327cf3bd"
    end
  end

  def install
    bin.install "darkplum"
  end

  test do
    assert_match "darkplum #{version} (release)", shell_output("#{bin}/darkplum version")
  end
end
