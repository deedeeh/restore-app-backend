class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :tasks, :questionnaire, :breaks

  def tasks 
    self.object.tasks.map do |task|
      {task_type: task.task_type, 
      task_quantity: task.task_quantity,
      each_task_length: task.each_task_length,
      check_time: task.check_time}
    end
  end

  def questionnaire 
    {job_title: self.object.questionnaire.job_title,
    working_hours_from: self.object.questionnaire.working_hours_from, 
    working_hours_to: self.object.questionnaire.working_hours_to,
    breaks_interval: self.object.questionnaire.breaks_interval,
    break_length: self.object.questionnaire.break_length}
  end

end
