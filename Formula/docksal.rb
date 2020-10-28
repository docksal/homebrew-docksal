class Docksal < Formula
  desc "Docker powered web development environments for macOS, Windows & Linux"
  homepage "https://docksal.io"
  url "https://github.com/docksal/docksal/archive/v1.14.1.tar.gz"
  sha256 "0051a447417d5413efdcb650c387b40cc31b5b4416bdf95e19c6fe0fe3784c9d"
  license "MIT"

  livecheck do
    url "https://github.com/docksal/docksal/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  uses_from_macos "curl"

  on_linux do
    depends_on "curl"
  end

  def install
    bin.install "bin/fin"
  end

  def post_install
    home = ENV["HOME"]
    system "echo #{home}"
  end

  test do
    system "#{bin}/fin" "--version"
  end
end
