class Docksal < Formula
  desc "Docker powered web development environments for macOS, Windows & Linux"
  homepage "https://docksal.io"
  url "https://github.com/docksal/docksal/archive/v1.14.1.tar.gz"
  sha256 "0051a447417d5413efdcb650c387b40cc31b5b4416bdf95e19c6fe0fe3784c9d"
  license "MIT"
  version "{{env "VERSION" }}"

  depends_on "curl"
  uses_from_macos "curl"

  def install
    
  end

  test do
    system "fin" "-h"
  end

end
