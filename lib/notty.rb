module Notty

  def respond_to? method_id, include_private = false
    super || if match = method_id.to_s.match(/^not_(.*\?)$/)
      send(:respond_to?, match.captures.first, include_private)
    else
      false
    end
  end

  def method_missing method_id, *args, &block
    if match = method_id.to_s.match(/^not_(.*\?)$/)
      !send(match.captures.first, *args, &block)
    else
      super
    end
  end

end

Object.send :include, Notty
#Class.send :include, Notty