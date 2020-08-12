class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        #has_many :item_purchases
        #has_many :item, through: :item_purchases

        with_options presence: true do
        
          validates :first_name, fomat: {with /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
          validates :family_name, fomat: {with /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}}
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
          validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
          validates :nickname, length: { maximum:6}
          validates :email,  format: {with: /\w+@\w+\.{1}[a-zA-Z]{2,}/}
          #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
          #validatable :email, presence: true, fomat: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
          validates :password,  format: {with: /(?=.{6,128})(?=.*\d+.*)(?=.*[a-zA-Z]+.*).*/}
          #validates :confirmation_password, presende:true
        end
end
