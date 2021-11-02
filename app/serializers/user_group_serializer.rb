class UserGroupSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id

  
  belongs_to :group, foreign_key: :user_id
  belongs_to :user, foreign_key: :group_id
end
