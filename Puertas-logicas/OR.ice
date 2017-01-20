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
          "id": "601f1d03-b2fd-4e00-b8ef-06c4cf2d5c62",
          "type": "basic.input",
          "data": {
            "name": "Botoi1",
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
            "x": -112,
            "y": 56
          }
        },
        {
          "id": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
          "type": "logic.gate.or",
          "position": {
            "x": 96,
            "y": 96
          }
        },
        {
          "id": "1c73c280-1a87-4252-96f3-fc497aecf63e",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 112
          }
        },
        {
          "id": "ae2033f2-7b57-4373-9894-99983fa4ed61",
          "type": "basic.input",
          "data": {
            "name": "Botoi2",
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
            "x": -112,
            "y": 160
          }
        },
        {
          "id": "008b61e3-03ff-40bf-89be-372828a25fb3",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 192
          }
        },
        {
          "id": "c3436a00-fb3d-45cc-8c18-ea09f3a48406",
          "type": "basic.info",
          "data": {
            "info": "OR ate logikoa:\nPlakaren botoi bat EDO bestea sakatzean,\nplakaren led diodo guztiak piztuko dira.\n\nOR\npulsando uno de los botones de la placa \nse encenderán los leds."
          },
          "position": {
            "x": -112,
            "y": 280
          }
        },
        {
          "id": "fcb11f16-043a-4b0d-bb5f-a41c355e14ae",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 288
          }
        },
        {
          "id": "8c6f457c-4f0d-4090-bb2f-43d12a6cad83",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 384
          }
        },
        {
          "id": "ccbff125-c983-47d5-831c-25ce991798d3",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 472
          }
        },
        {
          "id": "0cdab32e-cb35-4b4a-92c3-7029368b2338",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 568
          }
        },
        {
          "id": "864ff50e-5d29-44ab-8498-a59e5e242668",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 656
          }
        },
        {
          "id": "2b871540-3d59-4d72-9ab1-a94c2f5d7518",
          "type": "basic.output",
          "data": {
            "name": "Led_diodoa",
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
            "x": 504,
            "y": 744
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "601f1d03-b2fd-4e00-b8ef-06c4cf2d5c62",
            "port": "out"
          },
          "target": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "ae2033f2-7b57-4373-9894-99983fa4ed61",
            "port": "out"
          },
          "target": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1c73c280-1a87-4252-96f3-fc497aecf63e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "008b61e3-03ff-40bf-89be-372828a25fb3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "fcb11f16-043a-4b0d-bb5f-a41c355e14ae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "8c6f457c-4f0d-4090-bb2f-43d12a6cad83",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "ccbff125-c983-47d5-831c-25ce991798d3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "0cdab32e-cb35-4b4a-92c3-7029368b2338",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "864ff50e-5d29-44ab-8498-a59e5e242668",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fca9cec0-4612-419d-b73b-a90cfd0e7718",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "2b871540-3d59-4d72-9ab1-a94c2f5d7518",
            "port": "in"
          }
        }
      ]
    },
    "deps": {
      "logic.gate.or": {
        "version": "1.0",
        "package": {
          "name": "OR",
          "version": "1.0.0",
          "description": "OR logic gate",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2290%22%20height=%2240%22%20version=%221%22%3E%3Cpath%20d=%22M65%2020h25M26%2010H0M27%2030H0%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22/%3E%3Cpath%20d=%22M19.094%200l2%202.438s5.656%207%205.656%2017.562c0%2010.562-5.656%2017.563-5.656%2017.563l-2%202.437H36.25c2.408%200%207.69.025%2013.625-2.406s12.537-7.344%2017.688-16.875L66.25%2020l1.313-.719C57.258.216%2041.007%200%2036.25%200H19.094zm5.875%203H36.25c4.684%200%2018.287-.13%2027.969%2017-4.767%208.43-10.522%2012.684-15.719%2014.813C43.14%2037.008%2038.658%2037%2036.25%2037H25c1.874-3.108%204.75-9.05%204.75-17%200-7.973-2.909-13.9-4.781-17z%22%20fill-rule=%22evenodd%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "type": "basic.code",
                "data": {
                  "code": "// OR logic gate\n\nassign c = a | b;",
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
        "x": 202,
        "y": 41
      },
      "zoom": 1
    }
  }
}