require 'spec_helper'

feature "Filmes" do
  scenario "Cadastrando um novo filme" do
    visit new_movie_path
    fill_in 'Title', :with => 'Hobbit'
    fill_in 'Year', :with => '2014'
    fill_in 'Description', :with => 'testetestettstststts'
    page.check('movie[status]')
    fill_in 'Rating', :with => '10'
    click_button 'Create Movie'
    expect(page).to have_content 'Movie was successfully created.'
  end
end
