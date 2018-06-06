class Asso < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :benevoles
has_many :missions

validates :nom, presence: true
validates :code_postal, presence: true
validates :domaine, presence: true
validates :public, presence: true
validates :description, presence: true
end
