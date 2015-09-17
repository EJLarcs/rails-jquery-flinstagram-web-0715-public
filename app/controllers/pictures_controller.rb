class PicturesController < ApplicationController

# Make the page update in real-time by changing the like button to fire an Ajax call.
# __Hint:__ Select the button and make the Ajax call by using jQuery.
# Also, remember to update your controller so that it renders JSON!

# //change route
# //change controller
  def index
    @pictures = Picture.all
  end

  def like
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
      format.json { render :like}
    end

  end

end
