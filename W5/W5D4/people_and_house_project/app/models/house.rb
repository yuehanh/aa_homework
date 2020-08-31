        # == Schema Information
#
# Table name: houses
#
#  id      :bigint           not null, primary key
#  address :string           not null
#
class House < ApplicationRecord
    validates :address, presence: true

    has_many :residence,
        class_name: :Person,
        primary_key: :id,
        foreign_key: :house_id
end
