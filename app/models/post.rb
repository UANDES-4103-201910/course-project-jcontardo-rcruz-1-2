class Post < ApplicationRecord

	has_many :comment
	has_many :upvote
	has_many :downvote
	belongs_to :user
	belongs_to :black_list
	belongs_to :dumpster


	 # Un maximo de caracteres para la descripcion

  	validates :description,presence: true, length: {in: 0..140}

  	# Titulo existente y con un maximo de 50 caracteres

  	validates :title, presence: true, length: {in: 0..50}


end
