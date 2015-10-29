task :default => :tu

desc "Pruebas unitarias de la clase numerosFraccionarios"
task :tu do
    sh "ruby -I. test/tc_numerosFraccionarios.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
    sh "ruby -I. test/tc_numerosFraccionarios.rb -n /simple/"
end