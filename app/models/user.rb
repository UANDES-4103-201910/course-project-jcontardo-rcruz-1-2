class User < ApplicationRecord
	has_one :profile
	belongs_to :black_list
	has_many :post
	has_many :comment
	has_many :upvote
	has_many :downvote
	has_one :dumpster


	# Nombre, que tenga un nombre

 	validates :name,presence: true

	# Numero de telefono entre 9 y 12 digitos

 	validates :phone_number,presence: true, length: {in: 9..12}

  # Password entre 8 y 12 digitos alfanumericos

  	validates :password,presence: true, length: {in: 8..12}

  
  # Email formato correcto
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

 	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

 	before_validation :ensure_login_has_a_value
 
  	private
  	  def ensure_login_has_a_value
  	    if login.nil?
  	      self.login = email unless email.blank?
  	    end
  	  end

  	 


end
