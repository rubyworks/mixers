# = Registerable
#
module Registerable

  # Register format names.

  def register(obj, *names)
    names.each do |name|
      registry[name] = obj
    end
  end

  # Access registry.

  def registry
    @@registry ||= {}
  end

  #

  def registry_invalid?(*types)
    bad = []
    types.each do |type|
      bad << type unless @@registry[type]
    end
    return bad.empty? ? false : bad
  end

end

