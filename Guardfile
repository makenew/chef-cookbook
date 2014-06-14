scope groups: [:doc, :lint, :unit]

group :doc do
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
    watch(%r{.+\.rb$})
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
    watch(%r{^spec/.+_spec\.rb$})
    watch('spec/spec_helper.rb') { 'spec' }
  end
end

group :integration do
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
end
