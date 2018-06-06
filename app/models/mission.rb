class Mission < ApplicationRecord
belongs_to :creator, class_name: "Assos", foreign_key: "mission_id"
has_many :benevoles

validates :nom, presence: true
validates :dat_debut, presence: true
validates :date_fin, presence: true
validates :lieu, presence: true
validates :descriptif, presence: true
validates :objectifs, presence: true
validates :competences, presence: true

end
