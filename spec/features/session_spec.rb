require 'spec_helper'

describe 'Session' do
  describe "GET /" do
    it "displays login button" do
      visit root_path
      page.should have_link("Login")
    end
  end

  describe "GET /login" do
    it "displays login form", :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Cancel')
      page.should have_button('Start Flirting')
    end
  end

  describe 'JS cancel_login_form' do
    it 'it removes the create login form', :js => true do
      visit root_path
      click_link('Login')
      click_button('Cancel')
      page.should_not have_button('Start Flirting')
    end
  end

  describe "POST /login" do
    let(:user) {User.create(email:"jake@jake.com", username:"jakerake", password:"abc", password_confirmation:"abc")}
    it "logs the user into the system", :js => true do
      visit root_path
      click_link("Login")
      fill_in("email", :with => user.email)
      fill_in("password", :with => "abc")
      click_button("Start Flirting")
      page.should_not have_button("Start Flirting")
    end
    it "logs the user into the system incorrectly", :js => true do
      visit root_path
      click_link("Login")
      fill_in("email", :with => "jake@jake.com")
      fill_in("password", :with => "abc")
      click_button("Start Flirting")
      page.should have_button("Start Flirting")
    end
  end


end
