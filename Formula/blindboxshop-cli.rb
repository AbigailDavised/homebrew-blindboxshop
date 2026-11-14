class BlindboxshopCli < Formula
  desc "Designer Toy Chase-Rate Probability, Gram-Scale Mass & EAN Verification CLI"
  homepage "https://blindboxshop.com"
  url "https://github.com/AbigailDavised/homebrew-blindboxshop/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "482215922b34536c91e87c6706403e152a374e330a1487e946074cd7bfbda48c"
  license "MIT"

  depends_on "node"

  def install
    chmod 0755, "bin/blindboxshop-cli"
    bin.install "bin/blindboxshop-cli"
  end

  test do
    output = shell_output("#{bin}/blindboxshop-cli --version")
    assert_match "1.0.0", output
  end
end
