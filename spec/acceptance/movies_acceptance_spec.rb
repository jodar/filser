require 'spec_helper'
require 'capybara/rails'   

  scenario "Signing in with correct credentials" do
    visit '/movies/new'
    within("#new") do
      fill_in 'Title', :with => 'Hobbit'
      fill_in 'Year', :with => '2014'
      fill_in 'Description', :with => 'testetestettstststts'
      fill_in 'Status', :with => 'true'
      fill_in 'Rating', :with => '10'
    end
    click_button 'Create Movie'
    expect(page).to have_content 'Movie was successfully created.'
  end