require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end

  scenario "user can visit about page" do
    visit '/'
    click_on "About"
    expect(page).to have_content("Not much to say here.")
  end
end
