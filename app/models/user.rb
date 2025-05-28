class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :prototypes
  has_many :comments

  #以下はUserテーブルの認証機能
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true 
  validates :profile, presence: true 
  validates :occupation, presence: true  
  validates :position, presence: true        
end
