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
            "x": -8,
            "y": 64
          }
        },
        {
          "id": "1b9fcabb-f749-4e3a-8366-70489de1b629",
          "type": "logic.gate.not",
          "position": {
            "x": 192,
            "y": 64
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
            "x": 656,
            "y": 64
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
          "id": "c0c1f76c-452c-4b54-aa69-c82fcdfbb785",
          "type": "basic.info",
          "data": {
            "info": "NOT ate logikoa\nPlakaren botoia sakatzean,\nplakaren led diodo guztiak itzaliko dira.\n\nNOT\n\nal pulsar el pulsador se apagarán los leds\nde la placa."
          },
          "position": {
            "x": 120,
            "y": 192
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
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "3cad6e72-e7d3-4273-be1c-ce5f9b4c020a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "897b825d-26b6-4971-b6c0-2bc32544b912",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "596f96e4-1bcb-4bea-a909-addbe41ab2c3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "d0602739-519d-4fba-a7fe-283384a527fe",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1f3a8ee2-3440-4122-9a59-842bfaf5308c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "a527b58b-99e7-4078-934d-b958e27951ae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1dc4f8ef-4ccd-4a31-bb65-62e54e569722",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1b9fcabb-f749-4e3a-8366-70489de1b629",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "da0911f8-fa7d-4779-9dd6-e2886da8317d",
            "port": "in"
          }
        }
      ]
    },
    "deps": {
      "logic.gate.not": {
        "version": "1.0",
        "package": {
          "name": "NOT",
          "version": "1.0.0",
          "description": "NOT logic gate",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "type": "basic.code",
                "data": {
                  "code": "// NOT logic gate\n\nassign c = ~ a;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "a"
                      }
                    ],
                    "out": [
                      {
                        "name": "c"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 256,
                  "y": 48
                }
              },
              {
                "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "type": "basic.input",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 64,
                  "y": 144
                }
              },
              {
                "id": "664caf9e-5f40-4df4-800a-b626af702e62",
                "type": "basic.output",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 752,
                  "y": 144
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                  "port": "out"
                },
                "target": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "a"
                }
              },
              {
                "source": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "c"
                },
                "target": {
                  "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 0,
              "y": 0
            },
            "zoom": 1
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": 34,
        "y": 56
      },
      "zoom": 1
    }
  }
}