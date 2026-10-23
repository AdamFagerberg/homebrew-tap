class Teddytokens < Formula
  desc "Watch Claude Code token spend pile up as falling pixel-art characters"
  homepage "https://github.com/AdamFagerberg/teddytokens"
  url "https://github.com/AdamFagerberg/teddytokens/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7cdccc33c9ce775faea6cadec9efaf502d078426f9982e3461446adf52277845"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  test do
    assert_match "teddytokens #{version}", shell_output("#{bin}/teddytokens --version")
  end
end
