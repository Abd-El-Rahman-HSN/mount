class Admin::BaseAdminController < ApplicationController
  before_action :authenticate_admin!
  layout 'dashboard'

  rescue_from ActiveRecord::InvalidForeignKey do
  respond_to do |format|
    format.json { head :forbidden, content_type: 'text/html' }
    format.html do
      redirect_to admin_path, notice: 'Item can not be deleted because'\
                                      'it\'s accossiated with Points,'\
                                      'Campaign, or any other events,'\
                                      ' Please make sure you cancel'\
                                      ' them before proceeding.'
      end
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

end
