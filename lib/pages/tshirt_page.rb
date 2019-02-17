require 'capybara/dsl'

class TshirtPage

  include Capybara::DSL

  HOME_PAGE = 'http://automationpractice.com/index.php?id_category=5&controller=category'
  CLOTHING_LINK = 'http://automationpractice.com/index.php?id_product=1&controller=product'

  def visit_homepage
    visit(HOME_PAGE)
  end

  def current_url
    page.current_url
  end

  def click_tshirt
    visit(CLOTHING_LINK)
  end

end
