class House < ApplicationRecord
    validates :address, presence: true

    has_many :residence,
        class_name: :Person,
        primary_key: :id,
        foreign_key: :house_id
end