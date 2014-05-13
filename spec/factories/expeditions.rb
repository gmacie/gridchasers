# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expedition do
    grid "MyString"
    call "MyString"
    start_date "2014-05-12"
    end_date "2014-05-12"
    qsl_info "MyString"
    more_info "MyText"
  end
end
