class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :registerable, :rememberable, :validatable

  has_many :events

  def to_s
    "#{prenom}"
  end
end
