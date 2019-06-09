class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  def self.from_omniauth(auth)
  	puts auth.info.inspect
    where(email: auth.info.email).first_or_initialize.tap do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = "123456789"
      user.save!
    end
  end
end
