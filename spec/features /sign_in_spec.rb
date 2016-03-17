require 'spec_helper'

describe "User sign in do" do
  it "allows users to sign in after they have registered" do
  	user = User.create(:email => "saiprashanth93@gmail.com",
  										 :password => "ilovegrapes")
  	visit '/users/sign_in'

  	fill_in "Email", :with => "saiprashanth93@gmail.com"
  	fill_in "Password", :with => "ilovegrapes"

  	click_button "Log in"

  	page.should have_content("Signed in successfully.")

  end
end