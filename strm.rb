# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "3.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.0/strm_darwin_amd64.tar.gz"
      sha256 "0adff3788c32cccfaade4468a4daa722e9db359a4509c74259cdebc839b7da60"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.0/strm_darwin_arm64.tar.gz"
      sha256 "7c6516c42628de1cdbff3d67fdd141aba4fd1114621de8734a8a2cb2289db0ab"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.0/strm_linux_amd64.tar.gz"
      sha256 "0bb9d0458e0024f7b4dd81ba1fe81ba75decacbaa46931b548b9220f2aed6b4f"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.0/strm_linux_arm64.tar.gz"
      sha256 "736ebf7e74dd9a19fbb294f32f434cadf93e424eea0dfd706577617c64837334"

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
           strm completion zsh > "${fpath[1]}/_strm"

       for fish users
         strm completion fish > ~/.config/fish/completions/strm.fish # or $XDG_CONFIG_HOME instead of ~/.config
    EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end
