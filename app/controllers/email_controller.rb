require 'faker'
class EmailController < ApplicationController
  def index
    @emails = Email.all.sort.reverse
  end

  def create
    @email = Email.create(body: Faker::Lorem.sentence, object: Faker::Artist.name)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.status = true
    @email.save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
  end
  end

  def update
    @email = Email.find(params[:id])
    @email.status = false
    @email.save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

end
