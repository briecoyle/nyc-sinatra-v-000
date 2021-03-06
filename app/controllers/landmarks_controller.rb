class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.all.find(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.all.find(params[:id])
    erb :'/landmarks/edit'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    redirect to '/landmarks'
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.update(params[:id], params[:landmark])
    redirect to "/landmarks/#{@landmark.id}"
  end

end
