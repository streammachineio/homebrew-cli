# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://streammachine.io"
  homepage "https://streammachine.io"
  version "1.7.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.7.0/strm_darwin_amd64.tar.gz"
      sha256 "78986f626ac33d6ab553a1e48cf7bea71bb43e7d0356e3deb7b5bc73a469c53d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/streammachineio/cli/releases/download/v1.7.0/strm_darwin_arm64.tar.gz"
      sha256 "8ff6fadb51cbe756c3ce227ccb6f0a1175ad66a56ca100319142d483c4e116cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.7.0/strm_linux_amd64.tar.gz"
      sha256 "edd385697d0e5696cb6ddd21d4f44cbe97fbf2b3e1a3f341a782b2ef35d381cb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/streammachineio/cli/releases/download/v1.7.0/strm_linux_arm64.tar.gz"
      sha256 "c3654cb3f6e36f7e0323e8356da44400e3bd0276fb1acaf960d3eba76cfb41cb"
    end
  end

  def install
    bin.install "strm"
  end

  def caveats; <<~EOS
    In order to set up auto completion, please follow the instructions below. When you've set up auto completion in the past, you can skip these instructions.

     for bash users
       add the following line to your .bash_profile or .bashrc:
         source <(strm completion bash)

       to load completions for each session, execute once:
         - Linux users: strm completion bash > /etc/bash_completion.d/strm
         - macOS users: strm completion bash > /usr/local/etc/bash_completion.d/strm

     for zsh users
       ensure that shell completion is enabled, then run (only needs to be done once):
         /bin/zsh -c 'strm completion zsh > "${fpath[1]}/_strm"'

     for fish users
       strm completion fish > ~/.config/fish/completions/strm.fish # or $XDG_CONFIG_HOME instead of ~/.config
  EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end
