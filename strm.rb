# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.0/strm_darwin_amd64.tar.gz"
      sha256 "a6ce90560e1aee0740055624fd36a50690d9a9be6a5016928ae162b2aba807d7"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.0/strm_darwin_arm64.tar.gz"
      sha256 "3840f67552fb09c8cd6363bac0c23b276378db1d32e37c757a763f869ab15810"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.0/strm_linux_amd64.tar.gz"
      sha256 "63ac00548632093a333556ef504fb6ca97f3f3c22454a518b67f6ebcbc8e1ce8"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.0/strm_linux_arm64.tar.gz"
      sha256 "56c03920b638b5a12280312acd62a516eb91b09cbdc931ce82b76d356343727f"

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
