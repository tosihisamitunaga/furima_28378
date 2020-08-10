class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validatable :nickname, presence:true,length: { minimum:6}
         validatable :email, presence: true
         validatable :email, presence: true, fomat: /\w+@\w+\.{1}[a-zA-Z]{2,}/
         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
         validatable :email, {presence: true, ,fomat: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}}
         validatable :password, presence :true
         validatable :password, presence :true,length:{minimum:6}
         validatable :passeord, presence :true, fomat: /(?=.{6,})(?=.*\d+.*)(?=.*[a-zA-Z]+.*).*/
         validatable :password, confirmation: true

end
