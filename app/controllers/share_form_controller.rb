class ShareFormsController < ApplicationController
  def new
    @share_form = ShareModal.share_form
  end

  def create
    @share_form = ShareModal.share_form(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end