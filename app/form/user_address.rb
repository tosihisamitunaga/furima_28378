class UserAddress
    include ActiveModel::Model
    attr_accessor  :postal_code, :municipalities, :address, :tell, :building_name, :nickname, :item_id, :user_id, :token, :ship_from_id

    with_options presence: true do
        nickname = { with: /\A[a-z0-9]+\z/i, message: "is invalid. Input half-width characters."}
        postal_code = {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
        postal_code = {with: /\A\d{3}[-]\d{4}\z/}
        tell = {with: /\A\d{11}\z/,  maximum:11}


        
        validates :postal_code, format: postal_code
        validates :postal_code,  format:  postal_code
        validates :municipalities 
        validates :address
        validates :tell,format: tell
        validates :ship_from_id
    end
    def save
        DelivaryAddress.create(postal_code: postal_code, municipalities: municipalities, address: address, building_name: building_name, tell:tell, user_id: user_id, ship_from_id: ship_from_id)
        ItemPurchase.create(item_id: item_id, user_id: user_id)
    end
end
