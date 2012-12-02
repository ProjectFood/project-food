namespace :db do
  desc "add fake users"
  task :populate => :environment do
    10.times do
      FactoryGirl.create(:user)
    end
  end
end