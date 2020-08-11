class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        has_many :item_purchases
        has_many :item, through: :item_purchases

          validates :nickname, presence:true,length: { minimum:6}
          validates :email, presence: true, format: {with: /\w+@\w+\.{1}[a-zA-Z]{2,}/}
          #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
          #validatable :email, presence: true, fomat: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
          validates :user_name, uniqueness: true
          validates :password, presence:true, format: {with: /(?=.{6,128})(?=.*\d+.*)(?=.*[a-zA-Z]+.*).*/}
          # confirmation_password

end
