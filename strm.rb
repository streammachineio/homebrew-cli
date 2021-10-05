# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://streammachine.io"
  homepage "https://streammachine.io"
  version "1.9.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.1/strm_darwin_amd64.tar.gz"
      sha256 "7506ae1e8c313fdbb2cbfb8113ca54723fdb4a3c3f8393f129ab67ca784fbbe0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.1/strm_darwin_arm64.tar.gz"
      sha256 "a9ec5ff8ec416faff4edbcf276a69382089ff48e2fd065beab30e3f0077e4b18"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.1/strm_linux_amd64.tar.gz"
      sha256 "109816d8d7642eb3bd9a537a9674a1e293ba5f1ed0648c75c9436b1b409d82da"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/streammachineio/cli/releases/download/v1.9.1/strm_linux_arm64.tar.gz"
      sha256 "f0a415dceb772c060593ea66fa89af0ef62338564f6997e977413ee556e044d1"
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
