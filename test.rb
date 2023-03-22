
st1 = Station.new("Сочи")
st2 = Station.new("Краснодар")
st3 = Station.new("Новороссийск")
st4 = Station.new("Ростов-на-Дону")

tr1 = Train.new("123-765", "грузовой", 24)
tr2 = Train.new("875-328", "пассажирский", 18)
tr3 = Train.new("932-453", "пассажирский", 26)
tr4 = Train.new("124-900", "грузовой", 30)

rt1 = Rout.new(st1, st4)
rt2 = Rout.new(st2, st3)
