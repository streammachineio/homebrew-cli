# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.16.0/strm_darwin_arm64.tar.gz"
      sha256 "42c4d71b6a03913190dfb7fe040053a9375705815762b7822885e416da023a53"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.16.0/strm_darwin_amd64.tar.gz"
      sha256 "25293279511fcd4b18e36e57186300cb67007757ae54db440954f8d367e24f23"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.16.0/strm_linux_arm64.tar.gz"
      sha256 "8daef82b2f8f71247e5a085bb6480c2a457c625a522abe27594c10eb19138a2e"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.16.0/strm_linux_amd64.tar.gz"
      sha256 "75a493e91b0a64dfc58765b3e55f6b60e6d810bde678e0f7a7087fcb83b13512"

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
