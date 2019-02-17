require 'capybara/dsl'

class OrderConfirmation

  include Capybara::DSL
  ORDER_CONFIRMATION = 'http://automationpractice.com/index.php?controller=order-confirmation&id_cart=827526&id_module=3&id_order=84795&key=c4837e3e9ced7cd60e9fb1e92d194a9e'

  def confirm_order
   visit(ORDER_CONFIRMATION)
  end

  def current_url
    page.current_url
  end

end
