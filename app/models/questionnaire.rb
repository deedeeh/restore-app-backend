class Questionnaire < ApplicationRecord
    belongs_to :user

    validates :job_title, presence: true
    validates :working_hours_from, presence: true
    validates :working_hours_to, presence: true
    validates :breaks_interval, presence: true
    validates :break_length, presence: true, inclusion: {in: 5..60}
end
