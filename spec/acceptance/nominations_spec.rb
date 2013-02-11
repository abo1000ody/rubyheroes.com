require 'acceptance/acceptance_helper'

feature "Nominations", %q{
  In order to nominate a Ruby Hero
  As a member of the Ruby community
  I want to submit a github profile
} do

  scenario "Nomination" do
    visit root_path
    fill_in 'nominee', :with => 'envylabs'
    click_button 'Nominate'
    find_field("What is the Github username of your Ruby Hero?").value.should have_content "envylabs"
  end

end


