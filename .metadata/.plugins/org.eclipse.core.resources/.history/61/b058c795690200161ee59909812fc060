require 'rubygems'
require 'serialport'
ser_timeout = 0.005
time = Time.new
ser_addr = ""
ser_baud = 0
ARGV.each_with_index {|arg, index|
  if arg == "-d"
    ser_addr = ARGV[index + 1]
  elsif arg == "-b"
    ser_baud = ARGV[index + 1].to_i
  end
}
if ser_addr == "" || ser_baud == 0
  puts "Usage: ruby bclock.rb [OPTIONS]"
  puts "ALL OF THOSE OPTIONS ARE REQUIRED"
  puts "-d <device> : Set the Device/Port"
  puts "-b <baud>   : Set the Baudrate"
  exit
end
ser = SerialPort.new(ser_addr, ser_baud)
sleep(1.5)

#PIN DECLARATION
am   = "2"
pm   = "3"
h1   = "22"
h2   = "24"
h4   = "26"
h8   = "28"
s32  = "30"
s16  = "32"
s8   = "34"
s4   = "36"
s2   = "38"
s1   = "40"
sec32= "4"
sec16= "5"
sec8 = "6"
sec4 = "7"
sec2 = "8"
sec1 = "9"
cp   = "42"

#Block that returns the hour in a 12 hour format
h12 = lambda do
  time = Time.new
  th = time.hour
  if th >= 12
    th -= 12
  end
  return th
end

#Block that returns AM or PM
am_pm = lambda do
  time = Time.new
  if time.hour >= 12
    return "PM";
  elsif time.hour < 12
    return "AM"
  end
end

#DISPLAY BLOCK
show_t = lambda do
  time = Time.new
  #ap_set_before = false
  #ser.write("99")
  sleep(ser_timeout + 0.005)
 
  #HOUR
  
  th12_bin = ('%04b' % h12.call).to_s
  puts "th12_bin = " << th12_bin << "(#{h12.call})"
  charnum = 1
  th12_bin.split("").each do |i|
    if i == "1"
      if charnum == 1
        ser.write(h8)
        sleep(ser_timeout + 0.005)
      elsif charnum == 2
        ser.write(h4)
        sleep(ser_timeout + 0.005)
      elsif charnum == 3
        ser.write(h2)
        sleep(ser_timeout + 0.005)
      elsif charnum == 4
        ser.write(h1)
        sleep(ser_timeout + 0.005)
      end
    elsif i == "0"
      if charnum == 1
        ser.write((h8.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 2
        ser.write((h4.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 3
        ser.write((h2.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 4
        ser.write((h1.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      end
    end
    charnum += 1
  end
  sleep(ser_timeout + 0.005)
  
  #AM/PM
  
  puts am_pm.call
  if am_pm.call == "AM"
    ser.write(am)
    sleep(ser_timeout + 0.005)
    ser.write((pm.to_i + 60).to_s)
    sleep(ser_timeout + 0.005)
  elsif am_pm.call == "PM"
    ser.write(pm)
    sleep(ser_timeout + 0.005)
    ser.write((am.to_i + 60).to_s)
    sleep(ser_timeout + 0.005)
  end
  sleep(ser_timeout + 0.005)
  
  #MINUTE
  
  m_b = ('%06b' % time.min).to_s
  puts "m_b = " << m_b << "(#{time.min})"
  charnum = 1
  m_b.split("").each do |i|
    if i == "0"
      if charnum == 1
        ser.write((s32.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 2
        ser.write((s16.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 3
        ser.write((s8.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 4
        ser.write((s4.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 5
        ser.write((s2.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 6
        ser.write((s1.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      end
    elsif i == "1"
      if charnum == 1
        ser.write(s32)
        sleep(ser_timeout + 0.005)
      elsif charnum == 2
        ser.write(s16)
        sleep(ser_timeout + 0.005)
      elsif charnum == 3
        ser.write(s8)
        sleep(ser_timeout + 0.005)
      elsif charnum == 4
        ser.write(s4)
        sleep(ser_timeout + 0.005)
      elsif charnum == 5
        ser.write(s2)
        sleep(ser_timeout + 0.005)
      elsif charnum == 6
        ser.write(s1)
        sleep(ser_timeout + 0.005)
      end
    end
    charnum += 1
  end
  sleep(ser_timeout + 0.005)
  
  #SECOND
  
  s_b = ('%06b' % time.sec).to_s
  puts "s_b = " << s_b << "(#{time.sec})\n"
  charnum = 1
  s_b.split("").each do |i|
    if i == "0"
      if charnum == 1
        ser.write((sec32.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 2
        ser.write((sec16.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 3
        ser.write((sec8.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 4
        ser.write((sec4.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 5
        ser.write((sec2.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      elsif charnum == 6
        ser.write((sec1.to_i + 60).to_s)
        sleep(ser_timeout + 0.005)
      end
    elsif i == "1"
      if charnum == 1
        ser.write(sec32)
        sleep(ser_timeout + 0.005)
      elsif charnum == 2
        ser.write(sec16)
        sleep(ser_timeout + 0.005)
      elsif charnum == 3
        ser.write(sec8)
        sleep(ser_timeout + 0.005)
      elsif charnum == 4
        ser.write(sec4)
        sleep(ser_timeout + 0.005)
      elsif charnum == 5
        ser.write(sec2)
        sleep(ser_timeout + 0.005)
      elsif charnum == 6
        ser.write(sec1)
        sleep(ser_timeout + 0.005)
      end
    end
    charnum += 1
  end
  
  puts "\n"  
end

#Block that stores values in variables to compare them later
stovars = lambda do
  time = Time.new
  $prev_th12_bin = ('%04b' % h12.call).to_s
  $prev_m_b = ('%06b' % time.min).to_s
  $prev_s_b = ('%06b' % time.sec).to_s
end

#MAIN LOOP

stovars.call
show_t.call
while true do
  ser.write(cp)
  sleep(ser_timeout + 0.005)
  time = Time.new
  if ('%04b' % h12.call).to_s != $prev_th12_bin || ('%06b' % time.min).to_s != $prev_m_b || ('%06b' % time.sec).to_s != $prev_s_b
    show_t.call
    stovars.call
  end
  sleep(0.1)
end
