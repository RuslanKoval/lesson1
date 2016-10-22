require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split('').map(&:to_i).inject { |a, e| a + e }
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      now = Date.parse(Time.now.to_s)
      day = (now - Date.parse(birthday)).to_i
      string = "I live #{day / 365} years or #{day}, days or #{day * 24} hours,
       or #{day * 24 * 60} minutes, or #{day * 24 * 60 * 60} seconds"
      string
    end
  end

  def name
    puts "What's your name? "
    name = gets
    second_name = gets
    father_name = gets
    name_out = "Hello #{name} #{second_name} #{father_name}!"
    name_out
  end
end
