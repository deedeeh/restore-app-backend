class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :tasks, :questionnaire

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
    work_hours: self.object.questionnaire.work_hours, 
    breaks: self.object.questionnaire.breaks,
    breaks_quantity: self.object.questionnaire.breaks_quantity,
    break_length: self.object.questionnaire.break_length}
  end

end
