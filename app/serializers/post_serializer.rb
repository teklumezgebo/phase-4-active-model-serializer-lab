class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content

  def short_content
    "#{self.object.content[0..39]}..."
  end

  belongs_to :author
  has_many :tags
end
