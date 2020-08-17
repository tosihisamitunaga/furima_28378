class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        has_many :item_purchases
        has_many :items

        with_options presence: true do

          first_name = {with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
          family_name = {with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
          first_name_kana = { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
          family_name_kana = { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
          nickname = { maximum:6}
          email = {with: /\w+@\w+\.{1}[a-zA-Z]{2,}/}
          password = {with: /(?=.{6,128})(?=.*\d+.*)(?=.*[a-zA-Z]+.*).*/}
          
          
        
          validates :first_name, format: first_name
          validates :family_name, format: family_name
          validates :first_name_kana, format: first_name_kana
          validates :family_name_kana, format: family_name_kana
          validates :nickname, length: nickname
          validates :email,  format: email
          validates :password,  format: password
        end
end
