task :default => :test

desc "Ejecucion de test"

task :test do
	sh "Ruby -Ilib test/tc_rps.rb"
	
desc "Ejecutar un test especifico"
task :t, :test_name do|t,args|
	test_name = args[:test_name] || 'test_play'
	sh "ruby -w -Ilib test/tc_rps.rb --name" #{test_name}"
end
