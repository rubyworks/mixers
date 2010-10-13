# = Expirable
#
# Generic expirability mixin.
#
module Expirable

  attr_reader :expiration

  # Set the expires timeout for this entry.
  def expiration=(time)
    case time
    when Time, Date, DateTime
      @expiration = time
    else
      @expiration = Time.now + time
    end
  end

  ## Set the expire timeout for this entry. The timeout happens
  ## after (base + rand(spread)) seconds.
  ##
  ##def expires_spread(base, spread)
  ##  @expires = Time.now + base + rand(spread)
  ##end

  # Is this entry expired?
  def expired?
    return true if expiration.nil?
    return true if (Time.now > expiration)
    return false
  end

  # Update the expiration period. Override in your application.
  def touch!
  end

end

