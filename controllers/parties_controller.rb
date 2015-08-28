class PartiesController < ApplicationController


  require './models/party'


  get '/' do
    @parties = Party.all
      erb :'parties/index'
  end

#Form for creating new party
get '/new' do
  erb :'parties/new'
end

#create new party
post '/' do
  Party.create(params[:party])
  redirect '/parties'
end

#Show Individual party
get '/:id' do
  @party = Party.find(params[:id])
  erb :'/parties/show'
end

#Form for editing a party
get '/:id/edit' do
  @parties = Party.find(params[:id])
  erb :'parties/edit'
end

#Updating an party
put '/:id' do
  party = Party.find(params[:id])
  party.update(params[:party])
  redirect "/parties/#{party.id}"
end

delete '/:id' do
     party = Party.find(params[:id])
     party.destroy()
     redirect '/parties'
  end


 # delete '/:id' do
 #    party = Party.find(params[:id])
 #    party.delete()
 #    redirect '/parties'
 #  end

end
