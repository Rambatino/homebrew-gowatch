require 'rbconfig'
class Gowatch < Formula
  desc ""
  homepage "https://github.com/Rambatino/gowatch"
  version "0.0.2"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.2/gowatch_0.0.2_darwin_amd64.zip"
      sha256 "1d531a04ed9e182c6379100f4198f76193f818639113807c125e28db8cfbfccf"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.2/gowatch_0.0.2_linux_amd64.tar.gz"
      sha256 "5441e54af0477d7e2ab3a590bba0a665729b3ebbb2f1ca579a3b4284d589ba37"
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
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.2/gowatch_0.0.2_darwin_386.zip"
      sha256 "e60154fe4f7f1d8950c6a05b55e5f92d8a3e644bfcd86e4bff189b085a3a51d0"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.2/gowatch_0.0.2_linux_386.tar.gz"
      sha256 "0a8531ecc52fac91a9794e7bff58f1da9a6c830d4af648db50a4c529bdf565c7"
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
