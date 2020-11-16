#!/usr/bin/env python3
from subprocess import check_output

status = str(check_output(['acpi']))

def color(percent):
         # change color based on percentage
	if percent < 10:
		return "#FFFFFF"
	if percent < 20:
		return "#FF3300"
	if percent < 30:
		return "#FF6600"
	if percent < 40:
		return "#FF9900"
	if percent < 50:
		return "#FFCC00"
	if percent < 60:
		return "#FFFF00"
	if percent < 70:
		return "#FFFF33"
	if percent < 80:
		return "#FFFF66"
	return "#FFFFFF"

def icon(percent):
	if percent < 10:
		return "<span font='FontAwesome'></span>"
	if percent < 35:
		return "<span font='FontAwesome'></span>"
	if percent < 55:
		return "<span font='FontAwesome'></span>"
	if percent < 80:
		return "<span font='FontAwesome'></span>"
	return "<span font='FontAwesome'></span>"

if status == "No support for device type: power supply":
        test = ""
elif not status:
	# no battery
	text = "<span color='red'><span font='FontAwesome'> </span></span>"
else:
	status = status.split(' ')
	battery = dict(chr_stat=status[2], percent=int(status[3][:-2]), time=('(' + status[4] + ')'))
	if status[2] == 'Charging,':
		text = "<span font='FontAwesome'><span color='yellow'></span>  </span>"
	elif status[2] == 'Discharging,':
		text = ""
	percent = int(status[3][:-2])
	form =  '<span color="{}">{}%</span>'
	form = form.format(color(percent), percent)
	text += ' '.join([icon(percent), form, '(' + status[4] + ')'])

print(text)
