class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age_group, :email, :location, :diagnosis_date, :image_url, :admin 


  has_many :groups

  # attribute :admin

  # def admin
  #   object.users.include?(current_user.admin)
  # end
end
