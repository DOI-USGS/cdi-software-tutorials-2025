from datetime import datetime, timezone

import requests


def get_significant_earthquake_count() -> int:
    # get number of significant earthquakes this week
    response = requests.get(
        "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_week.geojson"
    )
    response_json = response.json()
    metadata = response_json["metadata"]
    number_significant = int(metadata["count"])
    return number_significant


def say_hello(name: str) -> str:
    number_significant = get_significant_earthquake_count()
    if number_significant == 0:
        return f"Hello, {name}! As of {datetime.now(tz=timezone.utc)} UTC there were no significant earthquakes this week."
    else:
        return f"Hello, {name}! As of {datetime.now(tz=timezone.utc)} UTC there were {number_significant} significant earthquakes this week."


def hello():  # type: ignore [no-untyped-def]
    hello_message = say_hello(name="Heather")
    print(hello_message)
