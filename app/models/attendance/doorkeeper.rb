class Attendance::Doorkeeper
  include ActiveModel::Conversion
  include ActiveModel::Validations
  extend ActiveModel::Naming
  extend ActiveModel::Translation

  def initialize(url)
    /[0-9]+/ =~ url
    @event_id = $&
    /([a-zA-Z0-9]+)(\.doorkeeper\.jp)/ =~ "http://devlove.doorkeeper.jp/events/8166"
    @group = $1
  end

  def limit
    json["ticket_limit"]
  end

  def accepted
    json["participants"]
  end

  def waiting
    0
  end

  def json
    @json ||= json_update
  end

  def json_update
    require 'open-uri'
    jsons = JSON.parse(open("http://api.doorkeeper.jp/groups/#{@group}/events").read)
    jsons.each do |json|
      return json["event"] if json["event"]["id"].to_i == @event_id.to_i
    end
    return {}
  end

end

