class Map
  def initialize
    @map = {}
  end

  def set(key, value)
    @map[key] = value
  end

  def get(key)
    @map[key].dup
  end

  def delete(key)
    @map.delete(key)
  end

  def show
    @map.dup
  end

  def inspect
    "#<Map:#{object_id}>" # redefine the inspect method to limit the info output
  end
end
