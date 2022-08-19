# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.14.0/strm_darwin_arm64.tar.gz"
      sha256 "d98d25224a1d5921be621accbb198f5ee25293145bd673b5c394f4f1e25c12ce"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.14.0/strm_darwin_amd64.tar.gz"
      sha256 "38c91b8071fc590234228645ae8ae822f5b109ed8cf44373739b276bfc55a3ec"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.14.0/strm_linux_arm64.tar.gz"
      sha256 "272ad1376cf061ad05a48369f5ac4f34096ad74a1b3d5eed60dd09359cff9851"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.14.0/strm_linux_amd64.tar.gz"
      sha256 "c00905072cf0f30b323430d529dc9c7011a243fd97d80c2a6a24d48fb52f6a42"

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
