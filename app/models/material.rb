class Material < ApplicationRecord
    has_many :products

    validates :Name, presence: true
end
