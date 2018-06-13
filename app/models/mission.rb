class Mission < ApplicationRecord
belongs_to :asso
has_many :benevoles
belongs_to :creator, class_name: "Asso", foreign_key: "asso_id"

validates :nom, presence: true
validates :date_debut, presence: true
validates :date_fin, presence: true
validates :lieu, presence: true
validates :descriptif, presence: true
validates :objectifs, presence: true
validates :competences, presence: true

end
