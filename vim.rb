require 'formula'

class Vim < Formula
  homepage 'http://www.vim.org/'
  # Get stable versions from hg repo instead of downloading an increasing
  # number of separate patches.
  url 'https://vim.googlecode.com/hg/', :revision => '0f6ca569356b'
  version '7.3.1286'
  head 'https://vim.googlecode.com/hg/'

  def install
    user_dir = File.exists?("/Users/flah") ? "/Users/flah" : "/Users/pchampon"
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--disable-nls",
                          "--enable-gui=no",
                          "--enable-multibyte",
                          "--enable-clipboard=yes",
                          "--enable-xterm_clipboard=yes",
                          "--enable-rubyinterp",
                          "--enable-cscope",
                          "--with-ruby-command=#{user_dir}/.rbenv/versions/2.0.0-p0/bin/ruby",
                          "--with-features=huge",
                          "--with-x",
                          "--with-tlib=ncurses"
    system "make"
    system "make install"
    system "cp src/vim src/vimtutor /tmp"
  end
end
