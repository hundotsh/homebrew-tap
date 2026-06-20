class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.0/hun_darwin_arm64.tar.gz"
      sha256 "3d9a393478558f82893ea4c14dac2ee8a585e278a775f7f1186e69b24bfd2d59"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.0/hun_darwin_amd64.tar.gz"
      sha256 "a6d3056afec1be518d68624fbc69f3d3196298d863bdc092c6578fc9314465d0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.0/hun_linux_arm64.tar.gz"
      sha256 "e46c670b56e74253ff8711a6c5c0e33f6adea1116ab09f605eb5f5e5815a3685"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.0/hun_linux_amd64.tar.gz"
      sha256 "a61fef2005f4a0f57389b28ea034f7f96ea2b3434e3c8cd46830fdad889a31fd"
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
