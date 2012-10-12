desc 'Run unit tests'
task :test do
  sh 'ruby -I. tc_radio.rb'
end
task :default => :test
