scope groups: [:doc, :lint, :unit]

group :doc do
  guard :shell do
    cmd = %w(knife cookbook doc -t _README.md.erb .)
    watch(%r{doc/.+\.md$}) { system(*cmd) }
    watch('metadata.rb') { system(*cmd) }
    watch('_README.md.erb') { system(*cmd) }
  end

  guard :yard do
    watch(%r{^attributes/(.+)\.rb$})
    watch(%r{^definitions/(.+)\.rb$})
    watch(%r{^libraries/(.+)\.rb$})
    watch(%r{^providers/(.+)\.rb$})
    watch(%r{^recipes/(.+)\.rb$})
    watch(%r{^resources/(.+)\.rb$})
  end
end

group :lint do
  guard :rubocop do
    watch(/.+\.rb/)
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end

  guard :foodcritic, cookbook_paths: '.' do
    watch(%r{attributes/.+\.rb$})
    watch(%r{definitions/.+\.rb$})
    watch(%r{libraries/.+\.rb$})
    watch(%r{providers/.+\.rb$})
    watch(%r{recipes/.+\.rb$})
    watch(%r{resources/.+\.rb$})
  end
end

group :unit do
  guard :rspec, cmd: 'bundle exec rspec --color --format Fuubar' do
    watch(%r{^recipes/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^libraries/(.+)\.rb$}) { 'spec' }
    watch(%r{^providers/(.+)\.rb$}) { 'spec' }
    watch(%r{^resources/(.+)\.rb$}) { 'spec' }
    watch(%r{^spec/.+_spec\.rb$})
    watch('spec/spec_helper.rb') { 'spec' }
  end
end

group :integration do
  begin
    require 'guard/kitchen'
    guard :kitchen do
      watch(%r{^attributes/(.+)\.rb$})
      watch(%r{^definitions/(.+)\.rb$})
      watch(%r{^files/(.+)})
      watch(%r{^libraries/(.+)})
      watch(%r{^providers/(.+)\.rb})
      watch(%r{^recipes/(.+)\.rb$})
      watch(%r{^resources/(.+)\.rb})
      watch(%r{^templates/(.+)})
      watch(%r{test/.+})
    end
  rescue LoadError
    puts '>>>>> Kitchen gem not loaded, omitting guards.' unless ENV['CI']
  end
end
