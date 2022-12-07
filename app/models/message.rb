class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  validates :content, presence: true

  # after_create :broadcast_message

  def as_json(options = {})
  #Overwrite to_json method and do as below (its needed to have right JSON pushed to api)
  author = user.first_name.nil? ? user.email.match(/[^@]+/)[0] : user.first_name

    {
      id: id,
      author: author,
      content: content,
      created_at: created_at,
      channel: channel.name
    }

    end

  private

  # def broadcast_message
  #   ActionCable.server.broadcast("channel_#{channel.name}", self)
  # end
end
