class BreakSerializer < ActiveModel::Serializer
  attributes :id, :user, :start, :end, :the_date, :completed

  def user
    {id: self.object.user.id, 
     name: self.object.user.name}
  end 

end
