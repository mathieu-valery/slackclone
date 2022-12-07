class Api::V1::MessagesController < ApplicationController
  before_action :set_channel

  def index

  messages = @channel.messages.order('created_at ASC')
  render json: messages
   # see Message.as_json method !
  end

  def create
    message = Message.create(message_params)
    message.user = current_user
    message.channel = @channel
    message.save
    render json: message
  end

  private

  def set_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end