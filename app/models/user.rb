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
  after_initialize do
     y=self.native_languages.build
     y.build_learning_level
     y.build_language
     z=self.study_languages.build
     z.build_learning_level
     z.build_language
     
     x=Profile.new
     x.build_country
     self.profile=x
     w=self.user_interested_countries.build
     w.build_country
  end
end
