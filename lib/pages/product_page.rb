require 'capybara/dsl'

class ProductPage

  include Capybara::DSL

  ADD_TO_CART = '#add_to_cart'

  def add_to_cart
    find(ADD_TO_CART).click
  end

  def proceed_to_checkout
    find("a[title='Proceed to checkout']").click
  end

  def current_url
    page.current_url
  end

end
