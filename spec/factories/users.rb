FactoryBot.define do
    factory :user do
        nickname {Faker::Name.initials(number: 2)}
        first_name{ '田中' }
        family_name {'太郎'}
        first_name_kana {'タナカ'}
        family_name_kana {'タロウ'}
        birthday {"1234-03-04"}
        email {Faker::Internet.free_email}
        password { '1a' + Faker::Internet.password(min_length: 7, max_length: 20) }
        password_confirmation {password}
      end
    
    end