class Benevole < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_and_belongs_to_many :assos
has_and_belongs_to_many :missions

validates :nom, presence: true
validates :prenom, presence: true
validates :age, presence: true
validates :competences, presence: true
validates :adresse, presence: true
validates :telephone, presence: true
validates :presentation, presence: true
end
