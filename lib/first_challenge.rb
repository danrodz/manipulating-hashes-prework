def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts["Freddy Mercury"].each do |attribute, value|
    if attribute == :favorite_icecream_flavors
      value.each.with_index do |flavor, index|
        if flavor == "strawberry"
          contacts["Freddy Mercury"][attribute].delete(index)
        end
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end

