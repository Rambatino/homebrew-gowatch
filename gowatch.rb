require 'rbconfig'
class Gowatch < Formula
  desc ""
  homepage "https://github.com/Rambatino/gowatch"
  version "0.0.3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.3/gowatch_0.0.3_darwin_amd64.zip"
      sha256 "1b36ae0bee190f62cf452ca1583c23bf52ba6ed7a097203f4a9317632fdc2ab0"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.3/gowatch_0.0.3_linux_amd64.tar.gz"
      sha256 "bc4edd46d5e99ae1955e5e351a95655f405a5dae8fd98cfe547df0d47fb824ef"
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
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.3/gowatch_0.0.3_darwin_386.zip"
      sha256 "a70fe7aed4c53dda749ad72b44963c26f0529fc2ec9abb40a74351a18737d81f"
    when /linux/
      url "https://github.com/Rambatino/gowatch/releases/download/v0.0.3/gowatch_0.0.3_linux_386.tar.gz"
      sha256 "7e0e04c6f0f0ac94f15afe224e59e48f50dacbb1151ead10804470f29f24a8bc"
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
