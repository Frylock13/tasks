class Stream < ApplicationRecord
  
  has_secure_token :token

  before_create do |stream|
    session = OpenTokClient.create_session
    stream.opentok_session_id = session.session_id
  end

  belongs_to :user
end