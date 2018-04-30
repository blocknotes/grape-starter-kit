namespace :db do
  desc 'Seeding data ...'
  task :seed do
    puts 'TODO: create a seed task'
    p ENV['GRAPE_ENV']
    # p ENV.fetch("GRAPE_ENV")
    # Rake::Task['db:seed_posts'].execute
  end
end
