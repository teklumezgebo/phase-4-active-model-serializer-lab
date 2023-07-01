class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts
  belongs_to :profile
end
