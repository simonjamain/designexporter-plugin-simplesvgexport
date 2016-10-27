require 'fileutils'
require 'shellwords'

def exportsvg (sourceFileName, outputFileName)

  # ensure path exists
  FileUtils.mkpath(File.dirname(outputFileName))

  #convert svg to pdf
  print "#{outputFileName} produced.\n" if system "\ninkscape -C --export-pdf=#{outputFileName.shellescape} --without-gui #{sourceFileName.shellescape}\n"

end
