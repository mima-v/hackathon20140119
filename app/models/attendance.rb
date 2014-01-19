class Attendance
  include ActiveModel::Conversion
  include ActiveModel::Validations
  extend ActiveModel::Naming
  extend ActiveModel::Translation

  CONNPASS   = 'CONNPASS'
  DOORKEEPER = 'DOORKEEPER'
  ZUSAAR     = 'ZUSAAR'
  UNKNOWN    = 'UNKNOWN'

  def initialize(url)
    if /connpass/ =~ url
      @attendance = Attendance::Connpass.new(url)
    elsif /doorkeeper/ =~ url
      @attendance = Attendance::Doorkeeper.new(url)
    elsif /zusaar/ =~ url
      @attendance = Attendance::Zusaar.new(url)
    else
      @attendance = nil
    end
  end

  def limit
    @attendance.limit
  end

  def accepted
    @attendance.accepted
  end

  def waiting
    @attendance.waiting
  end

end
