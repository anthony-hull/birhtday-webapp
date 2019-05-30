require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium

visit 'http://localhost:9393'

describe 'birthday page' do
  it 'shows name of person and days to their birthday' do
    # within('form') do
    fill_in 'name', with: 'Anthony'
    fill_in 'users_birthmonth', with: '01'
    fill_in 'users_birthday', with: '01'
    # end
    click_button 'Submit'
    expect(page).to have_content 'Your birthday will be in: 149 days'
  end

end
