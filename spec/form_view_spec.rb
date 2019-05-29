require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium

visit 'http://localhost:9393'

describe 'birthday page' do
  it 'has the call to action Enter your birthday' do
    expect(page).to have_content 'Enter your birthday'
  end
  it 'shows name of person' do
    within('form') do
      fill_in 'name', with: 'Anthony'
      fill_in 'month', with: '11'
      fill_in 'day', with: '01'
    end
    click_button 'Submit'
    expect(page).to have_content 'Your birthday will be in:'
  end
end
