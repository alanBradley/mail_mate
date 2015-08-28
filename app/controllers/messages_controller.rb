class MessagesController < ApplicationController
before_action :authenticate_user!

	def new
	end

	def create
		recipients = User.where(id: params['recipients'])
		# send_message method from Mailboxer passes in the recipients, body and the subject
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
	end

end
