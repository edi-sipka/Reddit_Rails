class CommunitiesController < ApplicationController
  before_authentication :authenticate_account!, expect: [:index, :show]
  
  def index
    
  end

  def show
  end

  def new 
  end

  def create 
  end

end