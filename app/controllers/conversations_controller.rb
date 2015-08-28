class ConversationsController < ApplicationController
	# part of devise if user not authenticated they will be sent back to sign in page
  before_action :authenticate_user!
  before_action :get_mailbox

  
  # paginate method from will_paginate + styling from bootstrap-will_paginate
  def index
    @conversations = @mailbox.inbox.paginate(page: params[:page], per_page: 10)
  end

  private

  def get_mailbox
    @mailbox ||= current_user.mailbox
  end
end
