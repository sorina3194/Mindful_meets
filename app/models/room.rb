class Room < ApplicationRecord
  before_create do
    opentok = OpenTok::OpenTok.new "47771161", "507d55d52d1a32de0b022531770fa56b08a81d2a"
    session = opentok.create_session
    self.vonage_session_id = session.session_id
  end
end
