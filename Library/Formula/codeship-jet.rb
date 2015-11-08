class CodeshipJet < Formula
  desc "Running Codeship Locally for Development"
  homepage "https://codeship.com"
  url "https://s3.amazonaws.com/codeship-jet-homebrew/0.11.5/jet-darwin_amd64.tar.gz"
  version "0.11.5"
  sha256 "b844855284a078b4dce8418b76cdabbbf1428ce67772ab3e32bdfc3a40d0cb4a"

  bottle :unneeded

  def install
    bin.install "jet"
  end

  test do
    system "#{bin}/jet", "version"
    system "#{bin}/jet", "help"
  end
end