class Hun < Formula
  desc "Seamless project context switching for developers"
  homepage "https://hun.sh"
  version "0.1.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.3/hun_darwin_arm64.tar.gz"
      sha256 "3705b7e1f999899b70223ec95a79b0aad5b076f5c3ff76062aec645fd4fa3b4a"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.3/hun_darwin_amd64.tar.gz"
      sha256 "8a4e1cc3f4d54dbc4be7fac5ba01fa9edcb59382b8573e4e438c457e21ec4427"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.3/hun_linux_arm64.tar.gz"
      sha256 "520a1b7992470d42ebea65cfe836bedf41477158b8d7a43b14e8a767d3ebbcdf"
    else
      url "https://github.com/sourabhrathourr/hun/releases/download/v0.1.3/hun_linux_amd64.tar.gz"
      sha256 "e4accb8260876bcc94be4f66fca306366fc6e44ad353806fb1ccd3160935c07e"
    end
  end

  def install
    bin.install "hun"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hun --version")
  end
end
