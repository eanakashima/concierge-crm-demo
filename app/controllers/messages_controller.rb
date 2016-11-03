class MessagesController < ApplicationController
  before_action :set_contact
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # POST /contacts/1/messages
  def create
    @message = @contact.messages.new(message_params)

    @message.save!
    redirect_to @contact, notice: 'Message was successfully created.'
  end

  # DELETE /contacts/1/messages/1
  # DELETE /contacts/1/messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to @contact, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    def set_message
      @message = @contact.messages.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:body, :sent_at)
    end
end
