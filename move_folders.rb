require 'fileutils'

(1..9).each do |num|
  FileUtils.mv('problem_'+num.to_s,'problem_0'+num.to_s)
end
