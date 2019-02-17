require_relative 'pages/homepage'
require_relative 'pages/sign_in_page'
require_relative 'pages/account_page'
require_relative 'pages/tshirt_page'
require_relative 'pages/product_page'
require_relative 'pages/summary_page'
require_relative 'pages/address_page'
require_relative 'pages/shipping_page'
require_relative 'pages/complete_order_confirmation_page'
require_relative 'pages/complete_order_page'
require_relative 'pages/payment_page'

class Site

  def homepage
    Homepage.new
  end

  def sign_in_page
    SignInPage.new
  end

  def account_page
    AccountPage.new
  end

  def tshirts_page
    TshirtPage.new
  end

  def product_page
    ProductPage.new
  end

  def summary_page
    SummaryPage.new
  end

  def address_page
    AddressPage.new
  end

  def shipping_page
    ShippingPage.new
  end

  def payment_page
    PaymentPage.new
  end

  def complete_order_confirmation_page
    OrderConfirmation.new
  end

  def complete_order_page
    OrderComplete.new
  end

end
