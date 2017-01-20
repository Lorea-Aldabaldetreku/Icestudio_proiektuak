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
            "x": 472,
            "y": 16
          }
        },
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
            "x": 40,
            "y": 32
          }
        },
        {
          "id": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
          "type": "logic.gate.and",
          "position": {
            "x": 224,
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
            "x": 472,
            "y": 96
          }
        },
        {
          "id": "5d1b4f33-ae65-4154-b4f4-ff1403437600",
          "type": "basic.input",
          "data": {
            "name": "button2",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 40,
            "y": 128
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
            "x": 472,
            "y": 168
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
            "x": 472,
            "y": 248
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
            "x": 472,
            "y": 328
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
            "x": 472,
            "y": 408
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
            "x": 472,
            "y": 488
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
            "x": 472,
            "y": 568
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
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "5d1b4f33-ae65-4154-b4f4-ff1403437600",
            "port": "out"
          },
          "target": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "3cad6e72-e7d3-4273-be1c-ce5f9b4c020a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "897b825d-26b6-4971-b6c0-2bc32544b912",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "596f96e4-1bcb-4bea-a909-addbe41ab2c3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "d0602739-519d-4fba-a7fe-283384a527fe",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1f3a8ee2-3440-4122-9a59-842bfaf5308c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "a527b58b-99e7-4078-934d-b958e27951ae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1dc4f8ef-4ccd-4a31-bb65-62e54e569722",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3a0e2619-ab7a-4493-b81b-5cb3ba8b3878",
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
      "logic.gate.and": {
        "version": "1.0",
        "package": {
          "name": "AND",
          "version": "1.0.0",
          "description": "AND logic gate",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20409.9h26v2h-26zM-252%20429.9h27v2h-27z%22/%3E%3Cpath%20d=%22M-227%20400.9v39.9h20.4c11.3%200%2020-9%2020-20s-8.7-20-20-20H-227zm2.9%202.8h17.6c9.8%200%2016.7%207.6%2016.7%2017.1%200%209.5-7.4%2017.1-17.1%2017.1H-224c-.1.1-.1-34.2-.1-34.2z%22/%3E%3Cpath%20d=%22M-187.911%20419.9H-162v2h-25.911z%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "type": "basic.code",
                "data": {
                  "code": "// AND logic gate\n\nassign c = a & b;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "a"
                      },
                      {
                        "name": "b"
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
                  "y": 80
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
              },
              {
                "id": "97b51945-d716-4b6c-9db9-970d08541249",
                "type": "basic.input",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 64,
                  "y": 208
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
                  "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                  "port": "a"
                }
              },
              {
                "source": {
                  "block": "97b51945-d716-4b6c-9db9-970d08541249",
                  "port": "out"
                },
                "target": {
                  "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                  "port": "b"
                }
              },
              {
                "source": {
                  "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
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
        "x": 32,
        "y": 18
      },
      "zoom": 1
    }
  }
}