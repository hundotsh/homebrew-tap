class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.1.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.6/hun_darwin_arm64.tar.gz"
      sha256 "58692d2cbc4f174ca1bab64ca3cb001f736d08c3f1059da7da990835fe1d0ee5"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.6/hun_darwin_amd64.tar.gz"
      sha256 "590391d59cf864e1b8749ae2e9b3d781a3f14e8ef09be1a53572f6eccccf386e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.6/hun_linux_arm64.tar.gz"
      sha256 "fb297e6376ca7304c20fcc7f76f26164c989d92b7fb3ced1d08b7afb39068552"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.6/hun_linux_amd64.tar.gz"
      sha256 "be7cc68dc106444dc3ef868e3110096a7e051fda0ee62dc29306e146d3646446"
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
