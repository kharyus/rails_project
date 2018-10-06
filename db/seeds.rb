##########################
# First Data Source: MTG #
##########################

# Delete tables
CardColor.destroy_all
CardType.destroy_all
Card.destroy_all
Color.destroy_all

# Open and parse all mtg cards
file = File.read("AllCards.json")
cards = JSON.parse(file)

# Test Card
#puts cards["Sen Triplets"]

# Save first 400 cards into database
cards.first(400).each do |key, card|
    # Card itself
    newCard = Card.new(Name: card["name"], Manacost: card["manaCost"], TypeText: card["type"], Text: card["text"], Power: card["power"], Thoughness: card["toughness"])
    newCard.save!

    # Card Colors
    if !card["colors"].nil?
        card["colors"].each do |color|
            colorItem = Color.find_or_create_by(Name: color)
            CardColor.create(card: newCard, color: colorItem)
        end
    end

    # Card Types
    if !card["types"].nil?
        card["types"].each do |type|
            typeItem = Type.find_or_create_by(Name: type)
            CardType.create(card: newCard, type: typeItem)
        end
    end
end

# Print number of cards saved
puts Card.count



#############################
# Second Data Source: Faker #
#############################

# Delete Tables
Product.destroy_all
Material.destroy_all

# Generate 400 products
for i in 1..400
    # Find or create material
    material = Material.find_or_create_by(Name: Faker::Commerce.material)

    # Create product
    newProduct = material.products.new(Name: Faker::Commerce.product_name, Price: Faker::Commerce.price, Quantity: Faker::Number.between(1, 1000))
    newProduct.save!
end

# Print number of products saved
puts Product.count