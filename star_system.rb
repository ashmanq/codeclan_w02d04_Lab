class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def count()
      return @planets.size()
  end

  def planet_names()
    planet_names = @planets.map{|planet| planet.name}
    return planet_names
  end

  def get_planet_by_name(name)
    return @planets.find {|planet| planet.name == name}
  end

  def get_largest_planet()
    return @planets.max {|planeta, planetb| planeta.diameter <=> planetb.diameter}
  end

  def get_smallest_planet()
    return @planets.min {|planeta, planetb| planeta.diameter <=> planetb.diameter}
  end

  def get_planets_with_no_moons()
    return @planets.find_all {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(no_of_moons)
    planets_with_more_moons =  @planets.find_all {|planet| planet.number_of_moons > no_of_moons}
    return planets_with_more_moons.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    planets_closer_than_distance = @planets.find_all {|planet| planet.distance_from_sun < distance}
    return planets_closer_than_distance.size()
  end

  def get_total_number_of_moons()
    total_no_of_moons = @planets.reduce(0) {|sum, planet| sum + planet.number_of_moons}
    return total_no_of_moons
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun()
    planets_in_order = @planets.sort {|planeta, planetb| planeta.distance_from_sun<=>planetb.distance_from_sun}
    return planets_in_order.map {|planet| planet.name}
  end

  def get_planet_names_sorted_by_size_decreasing()
    planets_in_order = @planets.sort {|planeta, planetb| planetb.diameter<=>planeta.diameter}
    return planets_in_order.map {|planet| planet.name}
  end



end
