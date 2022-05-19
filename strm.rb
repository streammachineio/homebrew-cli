# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.1.0/strm_darwin_arm64.tar.gz"
      sha256 "3a1ecf5426042402b2b95a26125f5122c7442f0cb93db41a7e25209856623664"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.1.0/strm_darwin_amd64.tar.gz"
      sha256 "100cc6518386b93034135762c538003b7bd6e54afd9db07680e1e1389d4948d8"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.1.0/strm_linux_arm64.tar.gz"
      sha256 "b6e790d652761ddd0f8b580a9fb74f9873a396747ce7ae19de373c5af5922e14"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.1.0/strm_linux_amd64.tar.gz"
      sha256 "86f9a25e6b51334bf7b9f55cd6b8b781501cb079b3146d6a721517631c348ca4"

      def install
        bin.install "strm"
      end
    end
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
