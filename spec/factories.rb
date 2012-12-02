FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "person#{n}" } 
    sequence(:email) { |n| "person#{n}@example.com" }

    factory :user_with_meal do
      ignore do
        meals_count 5
      end

      after(:create) do |user, evaluator|
        FactoryGirl.create_list(:meal, evaluator.meals_count, user: user)
      end
    end
  end

  factory :meal do
    sequence(:title)         { |n| "title#{n}"       }
    sequence(:description)   { |n| "description#{n}" }
    sequence(:price)         { |n| "#{n}.#{n}#{n}"   }
    sequence(:portion)       { |n| n.to_i            }
    sequence(:category)      { |n| "Entree"          }
    photo                    'https://www.filepicker.io/api/file/ZGasuGPiQ5KTvQvVCmnF'
    user
  end
end