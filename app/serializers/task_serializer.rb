class TaskSerializer < ActiveModel::Serializer
  attributes :id, :user, :task_type, :task_quantity, :each_task_length, :check_time
  
  def user
    {id: self.object.user.id, 
     name: self.object.user.name}
  end 

end
