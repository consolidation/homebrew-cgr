class Cgr < Formula
  desc "Command-line tool for installing PHP command-line tools."
  homepage "https://github.com/consolidation/cgr/"
  url "https://github.com/consolidation/cgr/releases/download/2.0.5/cgr.phar"
  sha256 "1d408fdd0535a6b996010a2e812fe462b3b9c8837b71e0a07136ba50c46b720f"

  bottle :unneeded

  def install
    bin.install "cgr.phar" => "cgr"
  end

  test do
    output = shell_output("#{bin}/cgr consolidation/cgr")
    assert_match "- Installing consolidation/cgr", output
  end
end

