class UserAddress
    include ActiveModel::Model
    attr_accessor  :postal_code, :municipalities, :address, :tell, :building_name, :nickname, :item_id, :user_id, :token, :ship_from_id

    with_options presence: true do
        nickname = { with: /\A[a-z0-9]+\z/i, message: "is invalid. Input half-width characters."}
        postal_code = {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}


        validates :nickname, format: nickname
        validates :postal_code, format: postal_code
        validates :prefecture, numericality: { other_than: 0, message: "can't be blank" }
    end
    def save
        DelivaryAddress.create(postal_code: postal_code, municipalities: municipalities, address: address, building_name: building_name, tell:tell, user_id: user_id, ship_from_id: ship_from_id)
        ItemPurchase.create(item_id: item_id, user_id: user_id)
    end
end
