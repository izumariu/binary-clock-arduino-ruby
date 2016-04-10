timezone = 0

from time import gmtime, strftime
import serial
import sys
from pygame import time

try:
	ser_addr = sys.argv[1]
	ser_baud = int(sys.argv[2])
except:
	print("Usage: python bclock.py <DEVICE> <BAUDRATE>")
	exit()
ser = serial.Serial(ser_addr, ser_baud)
time.wait(2000)
ser_timeout = 5
#PIN DECLARATION
am = "2"
pm = "3"
h1 = "22"
h2 = "24"
h4 = "26"
h8 = "28"
s32= "30"
s16= "32"
s8 = "34"
s4 = "36"
s2 = "38"
s1 = "40"

def show_t():
	ap_set_before = 0
	ser.write("99")
	time.wait(ser_timeout + 5)

	#HOUR
	h12_b_pre = int(strftime("%I"))+timezone
	print h12_b_pre
	if h12_b_pre >= 12:
		print "Activated 3"
		h12_b_pre -= 12
		print h12_b_pre
		ap_set_before = 1
		time.wait(ser_timeout + 5)
		if strftime("%p") == "AM":
			ser.write(am)
		else:	
			ser.write(pm)
		time.wait(ser_timeout + 5)
	elif h12_b_pre < 0:
		print "Activated 2"
		h12_b_pre += 12
		print h12_b_pre
		ap_set_before = 1
		time.wait(ser_timeout + 5)
		if strftime("%p") == "AM":
			ser.write(pm)
		else:	
			ser.write(am)
		time.wait(ser_timeout + 5)
	"""
	elif h12_b_pre == 0 and int(strftime("%H")) == h12_b_pre:
		print h12_b_pre
		print "Activated"
		ap_set_before = 1
		time.wait(ser_timeout + 5)
		if strftime("%p") == "AM":
			ser.write(am)
		else:	
			ser.write(pm)
		time.wait(ser_timeout + 5)
	"""
	h12_b = (4 - len(str(bin(int(h12_b_pre))[2:]))) * "0" + str(bin(int(h12_b_pre))[2:])
	print("h12_b = " + h12_b)
	if h12_b[3] == "1":	
		ser.write(h1)
		time.wait(ser_timeout + 5)
	if h12_b[2] == "1":	
		ser.write(h2)
		time.wait(ser_timeout + 5)
	if h12_b[1] == "1":
		ser.write(h4)
		time.wait(ser_timeout + 5)
	if h12_b[0] == "1":
		ser.write(h8)
		time.wait(ser_timeout + 5)

	#AM/PM
	if ap_set_before == 0:
		ap = strftime("%p")
		print(ap)
		if ap == "AM":
			ser.write(am)
			time.wait(ser_timeout + 5)
		elif ap == "PM":	
			ser.write(pm)
			time.wait(ser_timeout + 5)

	
	#MINUTE
	m_b = (6 - len(str(bin(int(strftime("%M"))))[2:])) * "0" + str(bin(int(strftime("%M"))))[2:]
	print("m_b = " + m_b)
	if m_b[0] == "1":
		ser.write(s32)
		time.wait(ser_timeout + 5)
	if m_b[1] == "1":
		ser.write(s16)
		time.wait(ser_timeout + 5)
	if m_b[2] == "1":
		ser.write(s8)
		time.wait(ser_timeout + 5)
	if m_b[3] == "1":
		ser.write(s4)
		time.wait(ser_timeout + 5)
	if m_b[4] == "1":
		ser.write(s2)
		time.wait(ser_timeout + 5)
	if m_b[5] == "1":
		ser.write(s1)
		time.wait(ser_timeout + 5)
	print("+++++++++++++++++++++++++++++++++++++++++++++++++")

###########################MAIN
print("Current timezone: " + strftime("%Z"))
prev_h12_b_pre = int(strftime("%I"))+timezone
print prev_h12_b_pre
if prev_h12_b_pre >= 12:
	prev_h12_b_pre -= 12
	print prev_h12_b_pre
elif prev_h12_b_pre < 0:
	prev_h12_b_pre += 12
	print prev_h12_b_pre
"""
elif h12_b_pre == 0:
	print h12_b_pre
	ap_set_before = 1
	time.wait(ser_timeout + 5)
	if strftime("%p") == "AM":
		ser.write(am)
	else:	
		ser.write(pm)
	time.wait(ser_timeout + 5)
"""
prev_h12_b = (4 - len(str(bin(int(prev_h12_b_pre))[2:]))) * "0" + str(bin(int(prev_h12_b_pre))[2:])

prev_m_b = (6 - len(str(bin(int(strftime("%M"))))[2:])) * "0" + str(bin(int(strftime("%M"))))[2:]
show_t()
while 1:
	ser.write("42")
	time.wait(ser_timeout + 5)
	if prev_h12_b != (4 - len(str(bin(int(prev_h12_b_pre)))[2:])) * "0" + str(bin(int(prev_h12_b_pre)))[2:] or prev_m_b != (6 - len(str(bin(int(strftime("%M"))))[2:])) * "0" + str(bin(int(strftime("%M"))))[2:]:
		show_t()
		#####################################################################################################
		prev_h12_b_pre = int(strftime("%I"))+timezone
		print prev_h12_b_pre
		if prev_h12_b_pre >= 12:
			prev_h12_b_pre -= 12
			print prev_h12_b_pre
		elif prev_h12_b_pre < 0:
			prev_h12_b_pre += 12
			print prev_h12_b_pre
		elif prev_h12_b_pre == 0:
			print h12_b_pre
			ap_set_before = 1
			time.wait(ser_timeout + 5)
			if strftime("%p") == "AM":
				ser.write(am)
			else:	
				ser.write(pm)
			time.wait(ser_timeout + 5)

		prev_h12_b = (4 - len(str(bin(int(prev_h12_b_pre))[2:]))) * "0" + str(bin(int(prev_h12_b_pre))[2:])
		prev_m_b = (6 - len(str(bin(int(strftime("%M"))))[2:])) * "0" + str(bin(int(strftime("%M"))))[2:]

	time.wait(250)
