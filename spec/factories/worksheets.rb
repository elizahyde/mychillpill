# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :worksheet do
    name "MyString"
    text_answer1 "MyText"
    text_answer2 "MyText"
    text_answer3 "MyText"
    text_answer4 "MyText"
    text_answer5 "MyText"
    integer_answer1 1
    integer_answer2 1
    user nil
  end
end
