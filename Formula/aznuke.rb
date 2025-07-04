class Aznuke < Formula
  include Language::Python::Virtualenv

  desc "A powerful CLI tool for scanning and cleaning up Azure resources"
  homepage "https://github.com/sojay/azure-nuke"
  url "https://github.com/sojay/azure-nuke/archive/v0.1.4.tar.gz"
  sha256 "723fea96287d3d97794f3ed1633df4d35ce689f1d20c011b22c8a90d1a81495c"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/aznuke", "--version"
  end
end 