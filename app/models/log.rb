class Log < ActiveRecord::Base
  validates :message, :host, :path, :useragent,  presence: true

  attr_accessible :message, :host, :path, :useragent, :token, :requested_ip
end
