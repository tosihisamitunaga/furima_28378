class UserAddress
    include ActiveModel::Model
    attr_accessor  :postal_code, :municipalities, :address, :tell, :building_name, :nickname, :item_id, :user_id

    with_options presence: true do
        validates :nickname, format: { with: /\A[a-z0-9]+\z/i, message: "is invalid. Input half-width characters."}
        validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
        validates :prefecture, numericality: { other_than: 0, message: "can't be blank" }
    end
    def save
        user = User.create(nickname:nickname)
        DelivaryAddress.create!(postal_code: postal_code, municipalities: municipalities, building_name: building_name, tell:tell, user_id: user_id)
        ItemPurchase.create(item_id: item_id, user_id: user_id)
    end
end