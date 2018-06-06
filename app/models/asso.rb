class Asso < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :benevoles
has_many :created_missions, class_name: "Mission", foreign_key: "assos_id", dependent: :destroy

validates :nom, presence: true
validates :code_postal, presence: true
validates :domaine, presence: true
validates :public, presence: true
validates :description, presence: true
end
