require 'capybara/dsl'

class ShippingPage

  include Capybara::DSL

  TICK_BOX = '#cgv'

  def terms_box
    find(TICK_BOX).click
  end

  def proceed_to_checkout
    find("button[name='processCarrier']").click
  end

  def current_url
    page.current_url
  end

end
