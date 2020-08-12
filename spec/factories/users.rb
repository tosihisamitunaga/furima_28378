FactoryBot.define do
    factory :user do
        nickname {Faker::Name.initials(number: 2)}
        first_name{ '田中' }
        family_name {'太郎'}
        first_name_kana {'タナカ'}
        family_name_kana {'タロウ'}
        birthday {"1234-03-04"}
        email {Faker::Internet.free_email}
        password = Faker::Internet.password(min_length: 6)
        password {password}
        password_confirmation {password}
      end
    
    end

    # first_name{Faker::Name.first_name}
    #     family_name {Faker::Name.family_name}