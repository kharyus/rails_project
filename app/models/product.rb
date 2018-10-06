class Product < ApplicationRecord
    belongs_to :material

    validates :Name, presence: true
end
