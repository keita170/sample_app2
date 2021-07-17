class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to ''
  end
  
   def index
    puts "作成したキー #{ENV['SECRET_KEY']}"
    @lists = List.all
   end

  private
  def list_params
    params.require(:list).permit(:titile, :body)
  end

end
