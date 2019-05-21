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
      sha256 "401b5a3819b97b86f8cc9d4b0913ad39562230b3d70d18a4530db5d6134055ba"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.1/gowatch_0.0.1_linux_amd64.tar.gz"
      sha256 "73f5351e9b9a9780c1e58f82395bb22bfd60ecc53c77aa70f95d8c002c1e2bf5"
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
      sha256 "ef8f327e48a9cd6eb877ce1ba24e3a54146880d530104a034cfe1f1b75acf149"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.1/gowatch_0.0.1_linux_386.tar.gz"
      sha256 "f4f7b6f1c3d08ae9adb6e456a7e60c45e35774f2755c4fcbcc5e6cd91440fa1f"
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
