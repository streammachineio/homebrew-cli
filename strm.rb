# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "3.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v3.1.1/strm_darwin_arm64.tar.gz"
      sha256 "344cb8fe598e87160f241aa9c42fc352a8fb9916d8539a8318ac1be4bf8f1c69"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.1.1/strm_darwin_amd64.tar.gz"
      sha256 "5a226172e7959a12c01532468bde5394c290d0f5a11890b637786f4519af0f65"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v3.1.1/strm_linux_arm64.tar.gz"
      sha256 "0b07004ac8385e60cee3d4b3869e152c56209f591c6a54ec94632c9d5803e412"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.1.1/strm_linux_amd64.tar.gz"
      sha256 "9bc0bde2830a03361d8d98fe045e372b2ca078b0ffc9876330de7581de7c64c7"

      def install
        bin.install "strm"
      end
    end
  end

  def caveats
    <<~EOS
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
