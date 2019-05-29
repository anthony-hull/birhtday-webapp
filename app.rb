require 'sinatra'
get '/' do
  erb(:birthday_form)
end
post '/birthday-handler' do
  @name = :name
  @birthmonth = :month
  @birthday = :day
  erb(:birthday_countdown)
end