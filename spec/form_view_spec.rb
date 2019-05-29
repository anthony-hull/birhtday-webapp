require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium

visit 'http://localhost:9393'

describe 'birthday page' do
  it 'has the call to action Enter your birthday' do
    expect(page).to have_content 'Enter your birthday'
  end
end
