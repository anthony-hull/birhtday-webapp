require 'sinatra'
require 'Date'
get '/' do
  erb(:birthday_form)
end
post '/birthday-handler' do
  @name = params[:users_name]
  @birthmonth = params[:users_birthmonth].to_i
  @birthday = params[:users_birthday].to_i
  @b_date = Date.new(Date.today.year, @birthmonth, @birthday)
  @days_until_birthday = (@b_date - Date.today).to_i.abs
  erb(:birthday_countdown)
end