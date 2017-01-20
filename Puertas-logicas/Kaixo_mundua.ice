{
  "version": "1.0",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
          "type": "basic.input",
          "data": {
            "name": "button1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 344,
            "y": 80
          }
        },
        {
          "id": "3cad6e72-e7d3-4273-be1c-ce5f9b4c020a",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 80
          }
        },
        {
          "id": "897b825d-26b6-4971-b6c0-2bc32544b912",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "96"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 160
          }
        },
        {
          "id": "596f96e4-1bcb-4bea-a909-addbe41ab2c3",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "97"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 232
          }
        },
        {
          "id": "d0602739-519d-4fba-a7fe-283384a527fe",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 312
          }
        },
        {
          "id": "1f3a8ee2-3440-4122-9a59-842bfaf5308c",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 392
          }
        },
        {
          "id": "a527b58b-99e7-4078-934d-b958e27951ae",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED5",
                "value": "101"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 472
          }
        },
        {
          "id": "1dc4f8ef-4ccd-4a31-bb65-62e54e569722",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 552
          }
        },
        {
          "id": "da0911f8-fa7d-4779-9dd6-e2886da8317d",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 664,
            "y": 632
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "3cad6e72-e7d3-4273-be1c-ce5f9b4c020a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "897b825d-26b6-4971-b6c0-2bc32544b912",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "596f96e4-1bcb-4bea-a909-addbe41ab2c3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "d0602739-519d-4fba-a7fe-283384a527fe",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "1f3a8ee2-3440-4122-9a59-842bfaf5308c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "a527b58b-99e7-4078-934d-b958e27951ae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "1dc4f8ef-4ccd-4a31-bb65-62e54e569722",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa8bab8b-61e4-4e28-b444-0e68d9484ea1",
            "port": "out"
          },
          "target": {
            "block": "da0911f8-fa7d-4779-9dd6-e2886da8317d",
            "port": "in"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": -67,
        "y": 10
      },
      "zoom": 1
    }
  }
}