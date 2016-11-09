class StreamsController < ApplicationController

  before_action :authenticate_user!

  def index
    @stream = current_user.stream
  end

  def create
    current_user.stream.destroy if current_user.stream
    current_user.create_stream
    redirect_to my_stream_streams_path
  end

  def stream
    @stream = current_user.stream
    gon.opentok = opentok_data(@stream)
  end

  def watch
    @stream = Stream.find_by(token: params[:token])
    gon.opentok = opentok_data(@stream)
  end

  private

  def opentok_data(stream)
    token = OpenTokClient.generate_token(stream.opentok_session_id)
    { sessionId: stream.opentok_session_id, apiKey: Figaro.env.opentok_api_key, token: token }
  end
end
