class UploadController < ApplicationController
  def get 
    @picture=Picture.new
  end
  private
  def picture_params
    params.require(:picture).permit(:comment,:uploaded_picture)
  end
end
