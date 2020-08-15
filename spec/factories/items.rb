FactoryBot.define do
  factory :item do
    price{3000}
    image{Rack::Test::UploadedFile.new(Rails.root.join('./spec/furima-header01.png'), 'image/png')}#画像付きでダミーを生成できるようにする
    product_name{"商品名"}
    delivery_fee{1}
    shipping_date{1}
    coments{"商品の説明"}
    ship_from{1}
    categori{1}
    product_status{1}
    
  end
end
