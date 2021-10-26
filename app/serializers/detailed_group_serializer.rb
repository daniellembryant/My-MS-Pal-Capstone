class DetailedGroupSerializer < GroupSerializer
  attribute :member

  has_many :users
  has_many :messages

  def member
    object.users.include?(current_user)
  end
end
