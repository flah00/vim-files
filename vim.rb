require 'formula'

class Vim < Formula
  homepage 'http://www.vim.org/'
  # Get stable versions from hg repo instead of downloading an increasing
  # number of separate patches.
  url 'https://vim.googlecode.com/hg/', :revision => '70eff6af1158'
  version '7.3.462'

  head 'https://vim.googlecode.com/hg/'

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--enable-gui=no",
                          "--with-x",
                          "--disable-nls",
                          "--enable-multibyte",
                          "--with-tlib=ncurses",
                          "--enable-rubyinterp",
                          "--enable-cscope",
                          "--with-ruby-command=/Users/flah/.rvm/rubies/ruby-1.9.2-p290/bin/ruby",
                          "--with-features=huge"
    system "make"
    system "make install"
  end
end
