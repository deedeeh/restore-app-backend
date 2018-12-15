class QuestionnaireSerializer < ActiveModel::Serializer
  attributes :id, :user, :job_title, :working_hours_from, :working_houts_to, :take_breaks, :breaks_quantity, :break_length

  def user 
    {id: self.object.user.id, 
     name: self.object.user.name}
  end

end
