FactoryBot.define do
  factory :delivary_address do
    postal_code{123-4567}
    municipalities{"横浜市緑区"}
    ship_from_id{1}
    address{"青山1ー1ー1"}
    tell{00000000000}
    user_id{1}
  end
end
