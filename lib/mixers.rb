module Mixers
  DIRECTORY = File.dirname(__FILE__)

  def self.version
    @version ||= YAML.load(File.new(DIRECTORY + '/mixers/version.yml'))
  end

  def self.const_missing(name)
    version[name.to_s.downcase] || super(name)
  end
end
