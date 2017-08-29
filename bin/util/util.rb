require "rubygems"
require "rubygems/package"
require "zlib"
require "fileutils"

module Util
  PROCESS_LABEL = "#{$0}".gsub("/", ".").gsub(/^\.+/, "")
  def self.log(msg, label = :debug)
    puts "[#{PROCESS_LABEL}.#{label}] #{msg}"
  end
end