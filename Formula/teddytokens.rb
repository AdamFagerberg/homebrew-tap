class Teddytokens < Formula
  desc "Watch Claude Code token spend pile up as falling pixel-art characters"
  homepage "https://github.com/AdamFagerberg/teddytokens"
  url "https://github.com/AdamFagerberg/teddytokens/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "21f5e118163d2104df53cfb7067d2a29e219621286c0b984d8e2e446e75d8e01"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  test do
    assert_match "teddytokens #{version}", shell_output("#{bin}/teddytokens --version")
  end
end
