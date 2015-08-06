class GamesController < ApplicationController
  before_action :set_team, :set_schedule

  def index
  end

  def show
  end


  private

  def set_team
    @team = params[:team].capitalize
  end

  def set_schedule
    @week = 0
    @schedule = {
    "weeks": [{
        "id": "ac0d86b1-ee1c-4b94-893e-4f835b83a1d9",
        "number": 1,
        "games": [{
            "id": "acbb3001-6bb6-41ce-9e91-942abd284e4c",
            "scheduled": "2015-09-11T00:30:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "NE",
            "away": "PIT",
            "status": "scheduled",
            "venue": {
                "id": "e43310b1-cb82-4df9-8be5-e9b39637031b",
                "country": "USA",
                "name": "Gillette Stadium",
                "city": "Foxborough",
                "state": "MA",
                "capacity": 68756,
                "surface": "artificial",
                "type": "outdoor",
                "zip": "02035",
                "address": "One Patriot Place"
            },
            "broadcast": {
                "network": "NBC"
            }
        }, {
            "id": "9920f2a3-720f-4973-998a-eae9b965b8d2",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "BUF",
            "away": "IND",
            "status": "scheduled",
            "venue": {
                "id": "e9e0828e-37fc-4238-a317-49037577dd55",
                "country": "USA",
                "name": "Ralph Wilson Stadium",
                "city": "Orchard Park",
                "state": "NY",
                "capacity": 73079,
                "surface": "artificial",
                "type": "outdoor",
                "zip": "14127",
                "address": "One Bills Drive"
            },
            "broadcast": {
                "network": "CBS"
            }
        }, {
            "id": "95091eb4-5bb9-445d-b3f8-023df4dd8d33",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "NYJ",
            "away": "CLE",
            "status": "scheduled",
            "venue": {
                "id": "5d4c85c7-d84e-4e10-bd6a-8a15ebecca5c",
                "country": "USA",
                "name": "MetLife Stadium",
                "city": "East Rutherford",
                "state": "NJ",
                "capacity": 82500,
                "surface": "artificial",
                "type": "outdoor",
                "zip": "07073",
                "address": "One MetLife Stadium Drive"
            },
            "broadcast": {
                "network": "CBS"
            }
        }, {
            "id": "8c65a3c5-9e23-419d-be18-a7663eb53550",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "CHI",
            "away": "GB",
            "status": "scheduled",
            "venue": {
                "id": "d7866605-5ac6-4b3a-90e8-760cc5a26b75",
                "country": "USA",
                "name": "Soldier Field",
                "city": "Chicago",
                "state": "IL",
                "capacity": 61500,
                "surface": "turf",
                "type": "outdoor",
                "zip": "60605",
                "address": "1410 South Museum Campus Drive"
            },
            "broadcast": {
                "network": "FOX"
            }
        }, {
            "id": "51689a76-5dce-46a1-aa90-c2c04f806340",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "JAC",
            "away": "CAR",
            "status": "scheduled",
            "venue": {
                "id": "4c5c036d-dd3d-4183-b595-71a43a97560f",
                "country": "USA",
                "name": "EverBank Field",
                "city": "Jacksonville",
                "state": "FL",
                "capacity": 67246,
                "surface": "turf",
                "type": "outdoor",
                "zip": "32202",
                "address": "One EverBank Field Drive"
            },
            "broadcast": {
                "network": "FOX"
            }
        }, {
            "id": "83b72efe-7955-4fa4-9149-9eaccbbf0f20",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "STL",
            "away": "SEA",
            "status": "scheduled",
            "venue": {
                "id": "e86a743f-ee77-490f-acfb-3187b7a9633e",
                "country": "USA",
                "name": "Edward Jones Dome",
                "city": "St. Louis",
                "state": "MO",
                "capacity": 66000,
                "surface": "artificial",
                "type": "dome",
                "zip": "63101",
                "address": "701 Convention Plaza"
            },
            "broadcast": {
                "network": "FOX"
            }
        }, {
            "id": "0141a0a5-13e5-4b28-b19f-0c3923aaef6e",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "WAS",
            "away": "MIA",
            "status": "scheduled",
            "venue": {
                "id": "7c11bb2d-4a53-4842-b842-0f1c63ed78e9",
                "country": "USA",
                "name": "FedExField",
                "city": "Landover",
                "state": "MD",
                "capacity": 83000,
                "surface": "turf",
                "type": "outdoor",
                "zip": "20785",
                "address": "1600 FedEx Way"
            },
            "broadcast": {
                "network": "CBS"
            }
        }, {
            "id": "eeda7ddd-91df-4993-9cd0-0e8be266f930",
            "scheduled": "2015-09-13T17:00:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "HOU",
            "away": "KC",
            "status": "scheduled",
            "venue": {
                "id": "6a72e5ca-33d0-40af-8e6b-b32a4d3d9346",
                "country": "USA",
                "name": "NRG Stadium",
                "city": "Houston",
                "state": "TX",
                "capacity": 71054,
                "surface": "turf",
                "type": "retractable_dome",
                "zip": "77054",
                "address": "One Reliant Park"
            },
            "broadcast": {
                "network": "CBS"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "f2a0bd05-7dff-47b9-97b8-4e5d1a2aceca",
            "scheduled": "2015-09-13T20:05:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "ARI",
            "away": "NO",
            "status": "scheduled",
            "venue": {
                "id": "f8e4d2ab-53f9-4e9f-8c4a-9bc278094a84",
                "country": "USA",
                "name": "University of Phoenix Stadium",
                "city": "Glendale",
                "state": "AZ",
                "capacity": 63400,
                "surface": "turf",
                "type": "retractable_dome",
                "zip": "85305",
                "address": "One Cardinals Drive"
            },
            "broadcast": {
                "network": "FOX"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "f32eedba-9552-4200-8e82-4e591bbfcbf5",
            "scheduled": "2015-09-13T20:05:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "SD",
            "away": "DET",
            "status": "scheduled",
            "venue": {
                "id": "7ca47702-8951-45be-a4f5-3e7d78f8f399",
                "country": "USA",
                "name": "Qualcomm Stadium",
                "city": "San Diego",
                "state": "CA",
                "capacity": 70561,
                "surface": "turf",
                "type": "outdoor",
                "zip": "92108",
                "address": "9449 Friars Road"
            },
            "broadcast": {
                "network": "FOX"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "56d3f529-89a1-40a8-a323-4811aacc0044",
            "scheduled": "2015-09-13T20:25:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "DEN",
            "away": "BAL",
            "status": "scheduled",
            "venue": {
                "id": "6589e61d-ef1e-4e30-91b5-9acd2072b8a0",
                "country": "USA",
                "name": "Sports Authority Field at Mile High",
                "city": "Denver",
                "state": "CO",
                "capacity": 76125,
                "surface": "turf",
                "type": "outdoor",
                "zip": "80204",
                "address": "1701 Mile High Stadium Circle"
            },
            "broadcast": {
                "network": "CBS"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "1ca9a0c1-d145-4acb-aca2-cb2b5fe529b9",
            "scheduled": "2015-09-13T20:25:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "TB",
            "away": "TEN",
            "status": "scheduled",
            "venue": {
                "id": "6fccc39c-80bc-4c81-83d9-2d5a848c8c09",
                "country": "USA",
                "name": "Raymond James Stadium",
                "city": "Tampa",
                "state": "FL",
                "capacity": 65890,
                "surface": "turf",
                "type": "outdoor",
                "zip": "33607",
                "address": "4201 North Dale Mabry Highway"
            },
            "broadcast": {
                "network": "CBS"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "fee3509f-34b8-461c-946e-a945b73c2bc1",
            "scheduled": "2015-09-13T20:25:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "OAK",
            "away": "CIN",
            "status": "scheduled",
            "venue": {
                "id": "ba1ad00f-9130-462c-93f9-5612a0015117",
                "country": "USA",
                "name": "O.co Coliseum",
                "city": "Oakland",
                "state": "CA",
                "capacity": 53200,
                "surface": "turf",
                "type": "outdoor",
                "zip": "94621",
                "address": "7000 Coliseum Way"
            },
            "broadcast": {
                "network": "CBS"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "c8ca977e-77ad-42fc-a80b-0d4a78e73b87",
            "scheduled": "2015-09-14T00:30:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "DAL",
            "away": "NYG",
            "status": "scheduled",
            "venue": {
                "id": "1e84213a-ff1f-4c9d-a003-8ee782b25a40",
                "country": "USA",
                "name": "AT&T Stadium",
                "city": "Arlington",
                "state": "TX",
                "capacity": 80000,
                "surface": "artificial",
                "type": "retractable_dome",
                "zip": "76011",
                "address": "One Legends Way"
            },
            "broadcast": {
                "network": "NBC"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "2b75bc2a-a0ee-40c7-8a74-e8b1a6e9c256",
            "scheduled": "2015-09-14T23:10:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "ATL",
            "away": "PHI",
            "status": "scheduled",
            "venue": {
                "id": "216de6bf-bce0-409a-a9e7-90db8df1f7b9",
                "country": "USA",
                "name": "Georgia Dome",
                "city": "Atlanta",
                "state": "GA",
                "capacity": 74228,
                "surface": "artificial",
                "type": "dome",
                "zip": "30313",
                "address": "One Georgia Dome Drive Northwest"
            },
            "broadcast": {
                "network": "ESPN",
                "satellite": "206",
                "internet": "WatchESPN"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }, {
            "id": "718a4f52-c6af-4080-b955-95e8769b68a7",
            "scheduled": "2015-09-15T02:20:00+00:00",
            "home_rotation": "",
            "away_rotation": "",
            "home": "SF",
            "away": "MIN",
            "status": "scheduled",
            "venue": {
                "id": "24c71dbf-6469-46f1-8165-22005c295c8f",
                "country": "USA",
                "name": "Levi's Stadium",
                "city": "Santa Clara",
                "state": "CA",
                "capacity": 68500,
                "surface": "turf",
                "type": "outdoor",
                "zip": "95054",
                "address": "4900 Marie P DeBartolo Way"
            },
            "broadcast": {
                "network": "ESPN",
                "satellite": "206",
                "internet": "WatchESPN"
            },
            "weather": {
                "temperature": "no weather",
                "condition": "no weather",
                "humidity": "no weather",
                "wind": {
                    "speed": "no weather",
                    "direction": "no weather"
                }
            }
        }]
    }]
}
        end


end
