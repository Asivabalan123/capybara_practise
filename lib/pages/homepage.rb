require 'capybara/dsl'

class Homepage

  include Capybara::DSL

  HOME_PAGE = 'http://automationpractice.com/index.php'
  SIGN_IN_ID = '.login'

  def visit_homepage
    visit(HOME_PAGE)
  end

  def current_url
    page.current_url
  end

  def sign_in
    find(SIGN_IN_ID)
  end

  def click_sign_in
    find(SIGN_IN_ID).click
  end

end
