from weather import Weather, Unit

weather = Weather(unit=Unit.CELSIUS)
location = weather.lookup_by_location('nottingham')

if location is not None:
	condition = location.condition

	print(f"{condition.text}, {condition.temp}° C")

else:
	print("Cannot provide weather")