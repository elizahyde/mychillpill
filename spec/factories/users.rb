# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |f|
    f.first_name "Elizabeth"
    f.email "foo@bar.com"
    f.password "foobarbar"
    f.password_confirmation "foobarbar"
  end

end