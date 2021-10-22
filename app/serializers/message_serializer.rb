class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :body

  
end
