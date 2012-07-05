require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.libs << "lib/rack"
  t.test_files = FileList['test/epicserver_test.rb']
  t.verbose = true
end

task :default => [:test]
