# frozen_string_literal: true

namespace :db do
  desc "Run db:environment:set db:drop db:create db:migrate db:seed"
  task :overhaul do
    %w(db:environment:set db:drop db:create db:migrate db:seed).each do |t|
      Rake::Task[t].invoke
    end
  end
end
