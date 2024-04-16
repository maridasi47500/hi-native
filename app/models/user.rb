class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :native_languages
  accepts_nested_attributes_for :native_languages
  has_many :study_languages
  accepts_nested_attributes_for :study_languages
  belongs_to :profile
  accepts_nested_attributes_for :profile
  has_many :user_interested_countries
  accepts_nested_attributes_for :user_interested_countries
  def myfunc 
    if !self.persisted?
      y=self.native_languages.build(learning_level: LearningLevel.new, language: Language.new)
      #y.learning_level_id=""
      #y.language_id=""
      z=self.study_languages.build(learning_level: LearningLevel.new, language: Language.new)
      #z.learning_level_id=""
      #z.language_id=""
      
      #x=Profile.new(country: Country.new)
      #x.country_id=""
      self.build_profile(country: Country.new)
      w=self.user_interested_countries.build(country:Country.new)
      #w.country_id=""
    end
  end
end
