require 'twilio-ruby'

class Application < ApplicationRecord

  belongs_to :user
  belongs_to :job

  validates :job, uniqueness: { scope: :user_id }
  validates :status, presence: true

  def save
    super

    Twilio.configure do |config|
      config.account_sid = Rails.application.secrets.account_sid
      config.auth_token = Rails.application.secrets.auth_token
    end

    @client = Twilio::REST::Client.new

    @client.api.account.calls.create(
      from: '+16042273817',
      to: '+16047679548',
      url: 'http://62acb080.ngrok.io'
    )
  end
end
