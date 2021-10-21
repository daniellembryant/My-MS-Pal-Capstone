class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :body

  validates :body, presence: true
end
