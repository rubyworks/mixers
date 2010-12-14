module Mixers
  # Access to project metadata.
  def self.metadata
    @metadata ||= (
      require 'yaml'
      YAML.load(File.new(File.dirname(__FILE__) + '/mixers.yml'))
    )
  end

  # Access to project metadata as constants.
  def self.const_missing(name)
    metadata[name.to_s.downcase] || super(name)
  end

  # TODO: Only here b/c of issue in Ruby 1.8.x.
  VERSION = version['version']
end

require 'mixers/cloneable.rb'
require 'mixers/enumargs.rb'
require 'mixers/equitable.rb'
require 'mixers/expirable.rb'
require 'mixers/hook.rb'
require 'mixers/instantiable.rb'
require 'mixers/ostructable.rb'
require 'mixers/preinitialize.rb'
require 'mixers/registerable.rb'
