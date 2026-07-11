class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.2.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.2/hun_darwin_arm64.tar.gz"
      sha256 "8c593d3e669ca5a3f5feeea83c4d99de9930559d8d118dd446bcf267af7d68fb"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.2/hun_darwin_amd64.tar.gz"
      sha256 "4e97ddc9bed712014bd46b0aa626ab232e211b013b8afa33d48b31e45a566324"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.2/hun_linux_arm64.tar.gz"
      sha256 "7afb2c9a8f56175b96232702fdc1ff3b840f8957ee5d4d8b9c8f86f680d7b634"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.2.2/hun_linux_amd64.tar.gz"
      sha256 "c8efe51004eb79bae7eea9c744c4a6c58fc823bcb8c8b31322a094771021e6cb"
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
