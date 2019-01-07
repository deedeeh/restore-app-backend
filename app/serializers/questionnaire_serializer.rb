class QuestionnaireSerializer < ActiveModel::Serializer
  attributes :user_id, :job_title, :working_hours_from, :working_hours_to, :breaks_interval, :break_length

end
