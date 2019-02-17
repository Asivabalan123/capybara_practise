require 'capybara/dsl'

class SignInPage

  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  EMAIL_ID = '#email'
  PASSWORD_ID = '#passwd'
  SIGN_IN_BUTTON_ID = '#SubmitLogin'

  def visit_sign_in
    visit(SIGN_IN_PAGE_URL)
  end

  def current_url
    page.current_url
  end

  def input_user_email
    find(EMAIL_ID).set('abinu_siv@hotmail.com')
  end

  def get_user_email
    find(EMAIL_ID).value
  end

  def input_user_password
    find(PASSWORD_ID).set('bobby123')
  end

  def get_user_password
    find(PASSWORD_ID).value
  end

  def click_sign_in
    find(SIGN_IN_BUTTON_ID).click
  end

end
