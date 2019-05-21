require 'rbconfig'
class Gowatch < Formula
  desc ""
  homepage "https://github.com/Rambatino/gowatch"
  version "0.0.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.1/gowatch_0.0.1_darwin_amd64.zip"
      sha256 "3b0918ab5a6f999584604f0cd341fcf972a6a611e714d099a9efce1ab7864a54"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.1/gowatch_0.0.1_linux_amd64.tar.gz"
      sha256 "3d845a9d61e84525d06f956af238f27b63179b2dc3d22a815d9627c8ed9cd8c2"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.1/gowatch_0.0.1_darwin_386.zip"
      sha256 "6f38d115b8c3730f7ec404b677eb879b74c716c11217ecbe562269730055f7c3"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.1/gowatch_0.0.1_linux_386.tar.gz"
      sha256 "edc61ffd15465f66643ad188372aace09666f6e993ce0a181e5bb3ae61b23371"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "gowatch"
  end

  test do
    system "gowatch"
  end

end
