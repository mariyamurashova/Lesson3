  class Train
    attr_accessor :speed, :num_car
    attr_reader :number, :type

    def initialize (speed=0,number, type, num_car)
      @number = number
      @type = type
      @num_car = num_car
      @speed = speed
      @rout_position = 0
      @new_rout = [" "]
    end

    def stop_train
      self.speed = 0
    end

    def increas_speed 
      self.speed += 50
    end   

    def add_car_train
      if self.speed == 0 
        self.num_car += 1
      else ("Невозможно добавить вагон - поезд движется")
      end
    end
   
    def increase_car_train
      if self.speed == 0 
      self.num_car -= 1
      else ("Невозможно отцепить вагон - поезд движется")
      end
    end

    def train_way (rout)
      rout.rout_list[0].come_in_trains(self)
      @new_rout = rout.rout_list 
    end

    def moving_forward 
      @new_rout[@rout_position].come_out_trains(self)
      @rout_position += 1
        if @rout_position <= (@new_rout.length-1)
          @new_rout[@rout_position].come_in_trains(self)
        else puts "Маршрут окончен"
        end
    end

    def moving_back 
      @new_rout[@rout_position].come_out_trains(self)
      @rout_position -= 1
        if @rout_position >= 0
          rout.rout_list[@rout_position].come_in_trains(self)
        else puts "Маршрут окончен"
        end
    end

    def current_station 
      if @rout_position == 0  
        puts "Поезд находится на 1-ой станции маршрута"
      else   
        puts "Поезд находится на станции: #{@new_rout[@rout_position].station_name}"
        puts "Предыдущая станция: #{@new_rout[@rout_position-1].station_name}"
      end

      if @rout_position == @new_rout.length-1
        puts "Это последняя станция маршрута"
      else
        puts "Следующая станция: #{@new_rout[@rout_position+1].station_name}"
      end
    end
end
