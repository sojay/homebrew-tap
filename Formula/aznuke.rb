class Aznuke < Formula
  include Language::Python::Virtualenv

  desc "A powerful CLI tool for scanning and cleaning up Azure resources"
  homepage "https://github.com/sojay/azure-nuke"
  url "https://github.com/sojay/azure-nuke/archive/v0.1.5.tar.gz"
  sha256 "54e755ce923ca3a2cd65fa378e0f7c17c3b6f33dfba644238eaafd9d2ad7f690"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/aznuke", "--version"
  end
end 