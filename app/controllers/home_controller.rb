class HomeController < ApplicationController

  def index
    @upload = BasicForm.new
    @form_format = YAML::load(File.open('public/formdata.yml'))
  end

  def create
    @upload = BasicForm.create(upload_params)
    redirect_to '/'
  end

  private

  def upload_params
    params.require(:basic_form).permit(
      :name,
      :email
    )
  end
  
end
