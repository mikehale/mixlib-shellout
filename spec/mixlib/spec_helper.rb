$:.unshift File.expand_path("../../../lib", __FILE__)
require 'mixlib/shellout'

def windows?
  if RUBY_PLATFORM =~ /mswin|mingw|windows/
    true
  else
    false
  end
end

if RUBY_PLATFORM =~ /mswin|mingw|windows/
  LINE_ENDING = "\r\n"
  ECHO_LC_ALL = "echo %LC_ALL%"
else
  LINE_ENDING = "\n"
  ECHO_LC_ALL = "echo $LC_ALL"
end
