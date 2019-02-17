require 'capybara/dsl'

class PaymentPage

  include Capybara::DSL

  def pay_by_bankwire
    find("a[title='Pay by bank wire']").click
  end

  def current_url
    page.current_url
  end

end
