require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['tests/*_test.rb']
  t.verbose = true
end

file :rubocop do
  sh 'rubocop -c rubocop.yml'
end

file :rubocop_game do
  sh 'rubocop ./lib -c rubocop.yml'
end

file :rubocop_tests do
  sh 'rubocop ./tests -c rubocop.yml'
end
