require "spec_helper"

describe 'User sign out' do
	
	it "User sign out when click sign out" do
		user = User.create(:email => "saiprashanth93@gmail.com",
											 :password => "ilovegrapes")
		visit '/users/sign_in'

		fill_in "Email",    :with => "saiprashanth93@gmail.com"
    fill_in "Password", :with => "ilovegrapes"

    click_button "Log in"

    page.should have_content("Signed in successfully.")

    
   click_link "Sign out"

    page.should have_content("Signed out successfully.")
		
	end
  
end