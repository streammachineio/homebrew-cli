# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://streammachine.io"
  homepage "https://streammachine.io"
  version "1.4.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.4.0/strm_darwin_amd64.tar.gz"
      sha256 "e359f52e486988c07de9a6311b995b39715784282eda31347aaf23c01c01c823"
    end
    if Hardware::CPU.arm?
      url "https://github.com/streammachineio/cli/releases/download/v1.4.0/strm_darwin_arm64.tar.gz"
      sha256 "5f945098347771bb580e6114210f2768757ace696bd29180f14ff4d2351503d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.4.0/strm_linux_amd64.tar.gz"
      sha256 "c79f3df92abe1b0789f3fff9aa8f22f8b6d5727b0aa9fc5ab5100040eac7ed12"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/streammachineio/cli/releases/download/v1.4.0/strm_linux_arm64.tar.gz"
      sha256 "749d175b1640106791374d8f79557f749281566eeb04bd1871d8d0dbe5bda9cc"
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
       source "strm/path.fish.inc"
  EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end
