class Bar

attr_reader :drinks_menu

def initialize(till)
  @drinks_menu = []
  @till = till
end

def add_drink_to_menu(drink)
  @drinks_menu.push(drink)
end

def count_drinks()
  @drinks_menu.count
end

def count_cash()
  @till.total_cash()
end

def serve_drink(customer, drink_choice)
    for drink in @drinks_menu
      if drink.type == drink_choice
        @till.total_cash += drink.price
        customer.cash -= drink.price
      else
        return "Sorry, we don't have that drink"
      end
  end
end
 
end

