# A sample Guardfile
# More info at https://github.com/guard/guard#readme

#guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  #watch('config/application.rb')
  #watch('config/environment.rb')
  #watch(%r{^config/environments/.+\.rb$})
  #watch(%r{^config/initializers/.+\.rb$})
  #watch('Gemfile')
  #watch('Gemfile.lock')
  #watch('spec/spec_helper.rb') { :rspec }
  #watch('test/test_helper.rb') { :test_unit }
  #watch(%r{features/support/}) { :cucumber }
#end

guard 'rspec', :cli => "--drb --color --format nested", :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

