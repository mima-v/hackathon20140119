class Attendance::Connpass
  include ActiveModel::Conversion
  include ActiveModel::Validations
  extend ActiveModel::Naming
  extend ActiveModel::Translation

  def initialize(url)
    /[0-9]+/ =~ url
    @event_id = $&
  end

  def limit
    json["events"][0]["limit"]
  end

  def accepted
    json["events"][0]["accepted"]
  end

  def waiting
    json["events"][0]["waiting"]
  end

  def json
    @json ||= json_update
  end

  def json_update
    require 'open-uri'
    JSON.parse(open("http://connpass.com/api/v1/event/?event_id=#{@event_id}").read)
  end

end


