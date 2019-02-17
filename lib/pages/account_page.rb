require 'capybara/dsl'

class AccountPage

  include Capybara::DSL

  HOME_PAGE = 'http://automationpractice.com/index.php?controller=my-account'
  CLOTHING_LINK = 'http://automationpractice.com/index.php?id_category=5&controller=category'

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
