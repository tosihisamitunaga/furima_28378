FactoryBot.define do
  factory :item do
    price{3000}
    image{Rack::Test::UploadedFile.new(Rails.root.join('./spec/furima-header01.png'), 'image/png')}#画像付きでダミーを生成できるようにする
    product_name{"商品名"}
    delivery_fee_id{1}
    shipping_date_id{1}
    coments{"商品の説明"}
    ship_from_id{1}
    categori_id{1}
    product_status_id{1}
    
  end
end
