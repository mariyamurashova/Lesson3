class Station

  attr_reader :station_name

  def initialize (station_name)
    @station_name = station_name
    @trains = []
    @num_of_trains = 0
  end
  
  def come_in_trains (train)
    @num_of_trains += 1
    @trains << train
  end
  
  def show_train_list
    freight_tr = 0
    pass_tr = 0
    puts "Сейчас на станции находятся следующие поезда:"
    @trains.each  do |i|  puts "Поезд #{i.number} - #{i.type}"
      if i.type.include?("грузовой") 
        freight_tr += 1
      else pass_tr += 1
      end
    end
    puts "Всего: #{@num_of_trains} поезда"
    puts "Из них #{freight_tr} - грузовых и #{pass_tr}- пассажирских"
  end

  def come_out_trains (train)
    @num_of_trains -= 1
    @trains.delete(train)
  end
  end
