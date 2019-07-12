class Libp11 < Formula
  desc "PKCS#11 wrapper library in C"
  homepage "https://github.com/OpenSC/libp11/wiki"
  url "https://github.com/OpenSC/libp11/releases/download/libp11-0.4.10/libp11-0.4.10.tar.gz"
  sha256 "639ea43c3341e267214b712e1e5e12397fd2d350899e673dd1220f3c6b8e3db4"
  version "0.4.10"
  revision 1

  head do
    url "https://github.com/OpenSC/libp11.git"
    depends_on "autoconf" => :build
    depends_on "automake" => :build
  end

  depends_on "pkg-config" => :build
  depends_on "libtool"
  depends_on "openssl"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--with-enginesdir=#{prefix}/lib/engines/",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

end
