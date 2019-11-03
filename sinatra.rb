require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'doggy.rb'

get '/' do
  erb :index
end

post '/play_with_doggy' do
  @doggy = Doggy.new

  if params[:feed]
    @doggy.feed
  elsif params[:walk]
    @doggy.walk
  elsif params[:go_to_sleep]
    @doggy.go_to_sleep
  elsif params[:play]
    @doggy.play
  elsif params[:bathe]
    @doggy.bathe
  elsif params[:scratch]
    @doggy.scratch
  elsif params[:follow]
    @doggy.follow
  elsif params[:exit]
    "The end"
  end
  erb :play_with_doggy
end