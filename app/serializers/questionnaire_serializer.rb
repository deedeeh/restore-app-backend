class QuestionnaireSerializer < ActiveModel::Serializer
  attributes :id, :user, :job_title, :work_hours, :breaks, :breaks_quantity, :break_length

  def user 
    {id: self.object.user.id, 
     name: self.object.user.name}
  end

end
