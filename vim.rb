require 'formula'
 
class Vimx < Formula
  # Get stable versions from hg repo instead of downloading an increasing
  # number of separate patches.
  url 'https://vim.googlecode.com/hg/', :revision => '992b24149a9e'
  version '7.3.420'
  homepage 'http://www.vim.org/'
 
  head 'https://vim.googlecode.com/hg/'
 
  def install
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--enable-gui=no",
                          "--with-x",
                          "--disable-nls",
                          "--enable-multibyte",
                          "--with-tlib=ncurses",
                          "--disable-pythoninterp",
                          "--enable-rubyinterp",
                          "--with-ruby-command=/usr/local/bin/ruby",
                          "--with-features=huge"
    system "make"
    system "make install"
  end
end
