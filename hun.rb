class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.1.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.5/hun_darwin_arm64.tar.gz"
      sha256 "c8d44b781ddf4dbbf16acdbd2d3b44125cc931bba4e7d57a896ea8bf98196c33"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.5/hun_darwin_amd64.tar.gz"
      sha256 "d1ab66ecda01cb6c49a71dccf00220c40227120d1887a52e71a6272502cf81f8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.5/hun_linux_arm64.tar.gz"
      sha256 "dd2a9af39c25a924ce7b128f5f426d6a310de115fbf4b1e4a5c743b8057b6d5d"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.5/hun_linux_amd64.tar.gz"
      sha256 "26f5547b27b7d3f7ca12401c86ef2d0f7bfccee0c6438b3dbfd876267a8b6682"
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
