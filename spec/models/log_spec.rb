require 'spec_helper'

describe Log do
  it { should validate_presence_of :message }
  it { should validate_presence_of :host }
  it { should validate_presence_of :path }
  it { should validate_presence_of :useragent }
end
