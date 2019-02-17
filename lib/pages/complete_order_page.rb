require 'capybara/dsl'

class OrderComplete

  include Capybara::DSL

  def current_url
    page.current_url
  end

end
