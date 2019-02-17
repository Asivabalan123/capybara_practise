require 'capybara/dsl'

class AddressPage

  include Capybara::DSL

  def proceed_to_checkout
    find("button[name='processAddress']").click
  end

  def current_url
    page.current_url
  end

end
