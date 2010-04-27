# = Expirable
#
# Generic expirability mixin.
#
module Expirable

  attr_accessor :expires

  # Set the expires timeout for this entry.

  def expires_after(timeout = (60*60*24))
    @expires = Time.now + timeout
  end

  # Set the expire timeout for this entry. The timeout happens
  # after (base + rand(spread)) seconds.

  def expires_spread(base, spread)
    @expires = Time.now + base + rand(spread)
  end

  # Is this entry expired?

  def expired?
    if @expires.nil? or (Time.now > @expires)
      return true
    else
      return false
    end
  end

  # Update the expiration period. Override in your application.

  def touch!
  end

end

