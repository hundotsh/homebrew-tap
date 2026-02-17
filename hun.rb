class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.1.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.4/hun_darwin_arm64.tar.gz"
      sha256 "6736135f8a052f7e1cd7a26c5a2338c3ff34a7d9b3db2a3d4d24842883551a37"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.4/hun_darwin_amd64.tar.gz"
      sha256 "7e9d663f19d85fe1587f6e108dd5c63d4a1c5358a33c7388bb83a50108dc7606"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.4/hun_linux_arm64.tar.gz"
      sha256 "bfe5fcf986bf880db2afb02112388d609a1979d973387b75880d5ce197233e3b"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.4/hun_linux_amd64.tar.gz"
      sha256 "dcc01c7ef4e097ac764673edfb2aae35868b4870e0c9ea169a32c5160263947d"
    end
  end

  def install
    bin.install "hun"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hun --version")
  end
end
