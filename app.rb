require 'sinatra'
require_relative 'math.rb'

get '/' do
    erb :name 
end

post '/name' do
 first_name = params[:fname]
 redirect '/lastname?fname=' + first_name 
end

get '/lastname' do
    f_name = params[:fname]
    erb :lastname, locals: {f_name: f_name}
end

post '/last_name' do
    first_name = params[:first_n]
    lastname = params[:lname]
    redirect 'age?first_n=' + first_name + '&lname=' + lastname
end

get '/age' do
    lastname = params[:lname]
    firstname = params[:first_n]
    erb :age, locals: {lastname: lastname, firstname: firstname}
end

post '/age' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    redirect 'favcolor?first_n=' + firstname + '&lname=' + lastname + '&yage=' + age
end

get '/favcolor' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    erb :favcolor, locals: {lastname: lastname, firstname: firstname, age: age}
end  

post '/favcolor' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    redirect 'luckynum1?first_n=' + firstname + '&lname=' + lastname + '&yage=' + age + '&fcolor=' + color
end

get '/luckynum1' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    erb :luckynum1, locals: {lastname: lastname, firstname: firstname, age: age, color: color}
end

post '/luckynum1' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    redirect 'luckynum2?first_n=' + firstname + '&lname=' + lastname + '&yage=' + age + '&fcolor=' + color + '&lucky1=' + luckyone
end

get '/luckynum2' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    erb :luckynum2, locals: {lastname: lastname, firstname: firstname, age: age, color: color, luckyone: luckyone}
end

post '/luckynum2' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    luckytwo = params[:lucky2]
    redirect 'luckynum3?first_n=' + firstname + '&lname=' + lastname + '&yage=' + age + '&fcolor=' + color + '&lucky1=' + luckyone +'&lucky2=' + luckytwo
end

get '/luckynum3' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    luckytwo = params[:lucky2]
    erb :luckynum3, locals: {lastname: lastname, firstname: firstname, age: age, color: color, luckyone: luckyone, luckytwo: luckytwo}
end

post '/luckynum3' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    luckytwo = params[:lucky2]
    luckythree = params[:lucky3]
    redirect 'favpet?first_n=' + firstname + '&lname=' + lastname + '&yage=' + age + '&fcolor=' + color + '&lucky1=' + luckyone +'&lucky2=' + luckytwo + '&lucky3=' + luckythree
end

get '/favpet' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    luckytwo = params[:lucky2]
    luckythree = params[:lucky3]
    erb :favpet, locals: {lastname: lastname, firstname: firstname, age: age, color: color, luckyone: luckyone, luckytwo: luckytwo, luckythree: luckythree}
end

post '/favpet' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1]
    luckytwo = params[:lucky2]
    luckythree = params[:lucky3]
    pet = params[:fpet]
    redirect 'info?first_n=' + firstname + '&lname=' + lastname + '&yage=' + age + '&fcolor=' + color + '&lucky1=' + luckyone +'&lucky2=' + luckytwo + '&lucky3=' + luckythree + '&fpet=' + pet
end

get '/info' do
    lastname = params[:lname]
    firstname = params[:first_n]
    age = params[:yage]
    color = params[:fcolor]
    luckyone = params[:lucky1].to_i
    luckytwo = params[:lucky2].to_i
    luckythree = params[:lucky3].to_i
    pet = params[:fpet]
    add_total = addition(luckyone, luckytwo, luckythree)
    multi_total = multiplication(luckyone, luckytwo, luckythree)
    sub_total = subtraction(luckyone, luckytwo, luckythree)
    erb :info, locals: {lastname: lastname, firstname: firstname, age: age, color: color, luckyone: luckyone, luckytwo: luckytwo, luckythree: luckythree, pet: pet, add_total: add_total, multi_total: multi_total, sub_total: sub_total}
end
