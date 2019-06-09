class Post < ApplicationRecord

  has_many :comments
  has_many :upvotes
  has_many :downvotes
  belongs_to :user
  belongs_to :black_list
  belongs_to :dumpster


  # Un maximo de caracteres para la descripcion

  validates :description,presence: true, length: {in: 0..140}

  # Titulo existente y con un maximo de 50 caracteres

  validates :title, presence: true, length: {in: 0..50}

  validates :author, presence: true


end
