require 'spec_helper'

describe 'A user should be able to sign in and buy a product' do

  before(:all) do
    @eccomerce_site = Site.new
  end

  context 'A user should be able to go to the sign in page' do

    it "should load the homepage" do
      @eccomerce_site.homepage.visit_homepage
      expect(@eccomerce_site.homepage.current_url).to eq 'http://automationpractice.com/index.php'
    end

    it "should go onto the sign in page " do
      @eccomerce_site.homepage.click_sign_in
      expect(@eccomerce_site.sign_in_page.current_url).to eq "http://automationpractice.com/index.php?controller=authentication&back=my-account"
    end
  end

  context 'A user should be able to sign in' do

    it "user should be able to enter their email" do
      @eccomerce_site.sign_in_page.input_user_email
      expect(@eccomerce_site.sign_in_page.get_user_email).to eq 'abinu_siv@hotmail.com'
    end

    it "A user should be able to enter the password" do
      @eccomerce_site.sign_in_page.input_user_password
      expect(@eccomerce_site.sign_in_page.get_user_password).to eq 'bobby123'
    end

    it "A user should be able to sign the user in" do
      @eccomerce_site.sign_in_page.click_sign_in
      expect(@eccomerce_site.account_page.current_url).to eq "http://automationpractice.com/index.php?controller=my-account"
    end
  end

  context 'A user should be able to go to the t-shirt page' do

    it "A user should be able to click on the t-shirts page" do
      @eccomerce_site.account_page.click_tshirt
      expect(@eccomerce_site.tshirts_page.current_url).to eq 'http://automationpractice.com/index.php?id_category=5&controller=category'
    end
  end

  context 'A user should be able to click on the t-shirt' do

    it "A user should be able to click on the t-shirt to view more" do
      @eccomerce_site.tshirts_page.click_tshirt
      expect(@eccomerce_site.product_page.current_url).to eq 'http://automationpractice.com/index.php?id_product=1&controller=product'
    end
  end

  context 'A user should be able to add the item to the cart and proceed to the checkout' do

    it " A user should be able to click on the add to cart button and proceed to checkout" do
      @eccomerce_site.product_page.add_to_cart
      @eccomerce_site.product_page.proceed_to_checkout
      expect(@eccomerce_site.summary_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order'
    end
  end

  context 'A user should be able to proceed to checkout' do

    it " A user should be able to proceed to checkout" do
      @eccomerce_site.summary_page.click_proceed_to_checkout
      expect(@eccomerce_site.address_page.current_url).to eq  "http://automationpractice.com/index.php?controller=order&step=1"
    end
  end

  context 'A user should be able to proceed to the address page' do

    it " A user should be able to continue through the checkout process" do
      @eccomerce_site.address_page.proceed_to_checkout
      expect(@eccomerce_site.shipping_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order'
    end
  end

  context 'A user should be able to go to the shipping page and click terms' do

    it "A user should be able to click the terms" do
      @eccomerce_site.shipping_page.terms_box
      @eccomerce_site.shipping_page.proceed_to_checkout
      expect(@eccomerce_site.payment_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order&multi-shipping='
    end
  end

  context 'A user should be able to go to the payment page and click by bank wire' do

    it " A user should be able to click pay by bank wire" do
      @eccomerce_site.payment_page.pay_by_bankwire
      expect(@eccomerce_site.complete_order_confirmation_page.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=bankwire&controller=payment'
    end
  end

  context 'A user should be able to confirm there order' do

    it "A user should be able to confirm the order " do
      @eccomerce_site.complete_order_confirmation_page.confirm_order
      expect(@eccomerce_site.complete_order_page.current_url).to eq "http://automationpractice.com/index.php?controller=history"
 
    end
  end

end
