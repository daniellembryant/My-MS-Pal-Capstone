class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age_group, :email, :location, :diagnosis_date, :image_url, :user_id
end
