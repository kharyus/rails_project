class Card < ApplicationRecord
    # Colors
    has_many :card_colors
    has_many :colors, through: :card_colors

    # Types
    has_many :card_types
    has_many :types, through: :card_types

end
