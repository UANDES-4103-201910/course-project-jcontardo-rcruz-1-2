class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable
	has_one :black_list
	has_one :profile
	has_one :dumpster
	has_many :posts
	has_many :comments
	has_many :upvotes
	has_many :downvotes

	# devise :database_authenticatable, :registerable, 
    #      :recoverable, :rememberable, :validatable, :trackable,
    #      :omniauthable, omniauth_providers: [:google_oauth2]

	  # Numero de telefono entre 9 y 12 digitos




  # Password entre 8 y 12 digitos alfanumericos

		validates :email, format: {with: /\A.+@.+\..+\z/}
		validates :encrypted_password, length: { minimum: 8 }

  
  # Email formato correcto



#  	def self.from_omniauth(auth)
#		where(provider: auth.provider ,uid: auth.uid).first_or_create do |user|
#			user.provider = auth.provider
#			user.uid = auth.uid
#			user.email = auth.info.email
#			user.name = auth.info.name
#			user.password = Devise.friendly_token[0, 20]
#		end
#	end

	def self.from_omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
			user.provider = auth.provider
			user.email = auth.info.email
			user.name = auth.info.name
			user.password = Devise.friendly_token[0,20]
	    end
    end
end

