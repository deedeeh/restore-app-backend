class User < ApplicationRecord
    has_many :tasks
    has_one :questionnaire

    has_secure_password
end
