class User < ApplicationRecord
    has_many :tasks
    has_one :questionnaire
end
