require "rails_helper"

feature "Gifs" do

  scenario "User can add a gif" do
    visit '/'
    click_on "New gif"
    fill_in "URL", with: "http://www.somecrazygif.com"
    fill_in "Title", with: "Random Cat Gif"
    click_on "Create gif"
    expect(page).to have_content "Random Cat Gif"
    expect(page).to have_content "gif created successfully"
  end

end