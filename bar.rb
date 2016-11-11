class Bar

attr_reader :drinks_menu

def initialize
  @drinks_menu = []
end

def add_drink_to_menu(drink)
  @drinks_menu.push(drink)
end

def count_drinks()
  @drinks_menu.count
end

def serve_drink(drink_choice)
  for drink in @drinks_menu
    if drink.type == drink_choice
      return "£#{drink.price} please"
    end
  return "Sorry, dinnae have it, pal."
  end
end

end