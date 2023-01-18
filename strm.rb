# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "3.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.10.0/strm_darwin_amd64.tar.gz"
      sha256 "e9c1de49ac2f166a1b860bd50148459f5c15df0965369cf0b02d9728f5aeb1b8"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v3.10.0/strm_darwin_arm64.tar.gz"
      sha256 "9afe5a10a3f52885ed671acf3ed074fd4a8d223a42733d0dfd56c73eedb3bc43"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v3.10.0/strm_linux_arm64.tar.gz"
      sha256 "6fd684a1aa4acb53be503486205debfdaac633c7bf2ad4048d479edf4c85cc83"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.10.0/strm_linux_amd64.tar.gz"
      sha256 "30a281ccac6f8dc162a7369e4819fc1c344d2e0b5c603333e56179f2ebd4c1ea"

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
