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
     self.native_languages.new
     self.study_languages.new
     self.profile=Profile.new
     self.user_interested_countries.new
  end
end
