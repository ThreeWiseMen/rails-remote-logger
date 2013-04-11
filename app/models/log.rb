class Log < ActiveRecord::Base
  validates :message, :host, :path, :useragent,  presence: true
end
