class DetailedGroupSerializer < GroupSerializer
  attributes :member, :users
  

  has_many :messages
  # has_many :users

  def member
    object.users.include?(current_user)
  end

  
end
