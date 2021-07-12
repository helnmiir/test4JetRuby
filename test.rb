class Realize
    puts "Enter cargo parameters"
a = gets.chomp.to_f     # =>вес
b = gets.chomp.to_f     # =>длина
c = gets.chomp.to_f     # =>ширина
d = gets.chomp.to_f     # =>высота
puts "Enter origin addres" 
oa = gets.chomp        # =>ввод пункта отправления
puts "Enter destination addres" 
da = gets.chomp     # =>ввод пункта назначения
v = (b*c*d)/1000000     #объём в кубических метрах
cargoprice = 0      #цена (рубль\километр)
if v < 1        #расчёт цены(рубль\ктлометр)
    cargoprice = 1
    elsif v > 1 && a <= 10
    cargoprice = 2
else cargoprice = 3
end
puts "cargoprice is #{cargoprice} rub/km" #проверка вывод расчёта цены
arr = ["weight", "#{a.to_i}", "length", "#{b.to_i}", "width", "#{c.to_i}", "height", "#{d.to_i}", cargoprice]
hash = {"weight" => a.to_i, "length" => b.to_i, "width" => c.to_i, "height" => d.to_i, "cargoprice" => cargoprice}
hash.to_hash
puts hash       #вывод хэша как результата работы класса
end

#на данный момент ещё не осовоил использование API, потому в даном коде отсутствуют такие переменные как distace, price.