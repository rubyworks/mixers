# = Expirable
#
# Generic expirability mixin.
#
module Expirable

  attr_accessor :expiration

  # Set the expires timeout for this entry.

  def expiration=(time)
    case time
    when Time, Date, DateTime
      @expiration = time
    else
      @expiration = Time.now + time
    end
  end

  #def expires_after(timeout = 86400)
  #  @expires = Time.now + timeout
  #end

  ## Set the expire timeout for this entry. The timeout happens
  ## after (base + rand(spread)) seconds.
  #
  #def expires_spread(base, spread)
  #  @expires = Time.now + base + rand(spread)
  #end

  # Is this entry expired?

  def expired?
    if @expiration.nil? or (Time.now > @expiration)
      return true
    else
      return false
    end
  end

  # Update the expiration period. Override in your application.

  def touch!
  end

end

