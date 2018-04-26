require 'rails_helper'

RSpec.describe "Quote management", :type => :feature do
  scenario "User adds new quote" do
    visit "/quotes/new"

    fill_in "Text", :with => "Test quote"
    click_button "Save Quote"

    expect(page).to have_text("Test quote")
  end

  scenario "User displays list of all quotes" do
    visit "/quotes"

    expect(find('ul')).to have_selector('li', count: Quote.all.size)
  end
end