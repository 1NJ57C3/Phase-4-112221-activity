class ReviewSerializer < ActiveModel::Serializer
  attributes :review, :user, :game

  belongs_to :game
  
  def user
    object.user.username
  end
end
