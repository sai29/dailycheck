require "spec_helper"

feature 'Obtaining Emails of Team members' do
  scenario 'create email list' do
    visit '/email_lists/new'

    click_link 'Create List'
     fill_in 'Email', with: 'saiprashanth93@gmail.com, sai@gmail.com, randomguy@gmail.com'
     click_link 'Create List'

     expect(page).to have_content('Team List has been created')

  end
end