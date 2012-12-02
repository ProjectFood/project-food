namespace :db do
  desc "add fake users with meals"
  task :populate => :environment do
    10.times do
      FactoryGirl.create(:user_with_meal)
    end
  end
end