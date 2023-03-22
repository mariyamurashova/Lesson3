class Rout
attr_accessor :rout_list
attr_reader :rout_name

  def initialize ( first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @rout_list = [@first_station, @last_station]
    num_of_stations = 1
  end

  def add_station (station)
    @rout_list.insert(-2, station)
  end

  def delete_station (station)
    @rout_list.delete(station)
    @rout_list.compact
  end

  def show_rout
    puts "Маршрут:" 
    @rout_list.each {|i| puts i.station_name}
  end

end
