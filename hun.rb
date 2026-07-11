class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.2.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.1/hun_darwin_arm64.tar.gz"
      sha256 "fa6e8fbaf685c686b6755f8a2d8cf8cc1760d381ed5a2f84b39dca0929cdf631"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.1/hun_darwin_amd64.tar.gz"
      sha256 "141db2954819175673d43e3b2e4cb62a63fdbe02f3e24875cc43aa551093e96a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.1/hun_linux_arm64.tar.gz"
      sha256 "d84695097d211ba32e812cf9a7c46b3c6767c394b4f15646df7aa7a99a1bc24f"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.1/hun_linux_amd64.tar.gz"
      sha256 "bba6621ad684b3dabbdd353dca39c7143579f75b518197660e334209f6797ac3"
    end
  end

  def install
    bin.install "hun"
  end

  def caveats
    <<~EOS
       _                     
      | |__  _   _ _ __      
      | '_ \| | | | '_ \     
      | | | | |_| | | | |    
      |_| |_|\__,_|_| |_|    

      Welcome to hun.
      Run:
        hun -v
        hun onboard
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hun --version")
  end
end
