# Standard imports
from time import sleep

# Third party imports
from weather import Weather, Unit

import requests

from requests.exceptions import ConnectionError

"""

TODO: replace weather API with OpenWeatherMap

"""

CITY = "Nottingham"


def fetch_local_weather() -> object or None:
	
	try:
		response = requests.get(f"http://api.openweathermap.org/data/2.5/weather?q={CITY},uk&units=metric&appid={APP_ID}")

		weather = response.json()

		return weather 

	except ConnectionError as e:
		print("Couldn't fetch weather")

		return None

	except Exception as e:
		print(f"Some weird shit's going on: {e}")

		return None


def main():

	weather = fetch_local_weather()

	if weather is None:
		exit()
	else:
		temperature = weather["main"]["temp"] 
		clouds = weather["clouds"]["all"]
		wind_speed = weather["wind"]["speed"]
		humidity = weather["main"]["humidity"]

		print(f"Wew, {temperature}ºC, {clouds}% clouds, {humidity}% humidity and it's blowing {wind_speed} m/s!")


if __name__ == "__main__":
	main()
