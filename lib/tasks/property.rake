namespace :property do
  desc 'Task to update the properties based on an XML file'
  task update_all: :environment do
    puts 'Enqueuing update of Properties'
    FetchInfoScriptJob.perform_later
  end
end
