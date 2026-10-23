class Teddytokens < Formula
  desc "Watch Claude Code token spend pile up as falling pixel-art characters"
  homepage "https://github.com/AdamFagerberg/teddytokens"
  url "https://github.com/AdamFagerberg/teddytokens/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "fefd2439b1f9d3c5b9a50cd8da48a25c5607819d0418ff39a47c5ee632952b90"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  test do
    assert_match "teddytokens #{version}", shell_output("#{bin}/teddytokens --version")
  end
end
