# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://streammachine.io"
  homepage "https://streammachine.io"
  version "1.9.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.2/strm_darwin_amd64.tar.gz"
      sha256 "4f250518a3a550219bd58ae6f0428509d204c545f37c0671bd242bb2cad7d660"
    end
    if Hardware::CPU.arm?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.2/strm_darwin_arm64.tar.gz"
      sha256 "06b00ed04c9677f81c43c406dd13dc7027b8983054bc2a3d49a8afad78c0a321"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.2/strm_linux_amd64.tar.gz"
      sha256 "c51d456a5b3c7b58045abacded161cae75c8bd966bcb38fff30a75c9e5c8180a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.2/strm_linux_arm64.tar.gz"
      sha256 "2fbb0d9aa43d8fc68aeb01207c1d1510d5f4d7edf34fb8a8338555d1e7810866"
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
