class StudyLanguage < ApplicationRecord
    belongs_to :user
      belongs_to :learning_level
        belongs_to :language
end
