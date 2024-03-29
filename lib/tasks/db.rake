
# rake db:x
namespace :db do
  desc 'Rebuild the db'
  task :x => :environment do
    db_name = "#{File.basename(Rails.root)}_#{Rails.env}"
    sh = <<EOF
ps xa \
  | grep postgres: \
  | grep #{db_name} \
  | grep -v grep \
  | awk '{print $1}' \
  | xargs kill
EOF
  puts `#{sh}`
  
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:setup"].invoke
  end

# lib/tasks/kill_postgres_connections.rake
task :kill_postgres_connections => :environment do

end

task "db:drop" => :kill_postgres_connections
  
end