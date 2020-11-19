require 'faker'

class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Movie.title, body: Faker::Movie.quote)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

end
