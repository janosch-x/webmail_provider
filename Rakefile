require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task mutate: :spec do
  arguments = %w(
    bundle exec mutant
    --include lib
    --require webmail_provider
    --use rspec
    -- WebmailProvider*
  )

  Kernel.system(*arguments) || raise('Mutant task is not successful')
end

task default: :mutate
