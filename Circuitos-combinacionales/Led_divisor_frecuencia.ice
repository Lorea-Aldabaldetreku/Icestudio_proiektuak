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
          "id": "e1363488-a8b3-4140-9c6f-8a1e3637e1c3",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 24
          }
        },
        {
          "id": "dc13869e-c753-4522-ab16-dbe04d1a9fd0",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 104
          }
        },
        {
          "id": "e2cbe336-8862-48c1-9002-6aa6e5ca5fa9",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 184
          }
        },
        {
          "id": "1e2720e1-3471-4b8e-a75c-929f888852fc",
          "type": "basic.input",
          "data": {
            "name": "in",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 72,
            "y": 280
          }
        },
        {
          "id": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
          "type": "div_1s",
          "position": {
            "x": 272,
            "y": 280
          }
        },
        {
          "id": "61f0b029-fdbd-43fe-826d-d57624caadfd",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 280
          }
        },
        {
          "id": "bf6e2744-aa40-46eb-9848-987274ca95c5",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 360
          }
        },
        {
          "id": "9f8262f2-0de0-43ee-8b3c-c352a9e4682b",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 440
          }
        },
        {
          "id": "ef69278a-8cb0-404f-bcc0-d19da4091e9f",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 536
          }
        },
        {
          "id": "2861da35-5a7b-4966-bea9-554230801c0d",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 536,
            "y": 616
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1e2720e1-3471-4b8e-a75c-929f888852fc",
            "port": "out"
          },
          "target": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "e1363488-a8b3-4140-9c6f-8a1e3637e1c3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "dc13869e-c753-4522-ab16-dbe04d1a9fd0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "e2cbe336-8862-48c1-9002-6aa6e5ca5fa9",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "bf6e2744-aa40-46eb-9848-987274ca95c5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "9f8262f2-0de0-43ee-8b3c-c352a9e4682b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "61f0b029-fdbd-43fe-826d-d57624caadfd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "ef69278a-8cb0-404f-bcc0-d19da4091e9f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ab741e2c-e370-4a33-aefc-808e5ed756b9",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "2861da35-5a7b-4966-bea9-554230801c0d",
            "port": "in"
          }
        }
      ]
    },
    "deps": {
      "div_1s": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "47969141-dd7d-4df0-88d2-b6d38c3f70d2",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 12_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk_in"
                      }
                    ],
                    "out": [
                      {
                        "name": "clk_out"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 368,
                  "y": 456
                }
              },
              {
                "id": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7",
                "type": "basic.input",
                "data": {
                  "name": "in"
                },
                "position": {
                  "x": 168,
                  "y": 552
                }
              },
              {
                "id": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9",
                "type": "basic.output",
                "data": {
                  "name": "out"
                },
                "position": {
                  "x": 880,
                  "y": 552
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7",
                  "port": "out"
                },
                "target": {
                  "block": "47969141-dd7d-4df0-88d2-b6d38c3f70d2",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "47969141-dd7d-4df0-88d2-b6d38c3f70d2",
                  "port": "clk_out"
                },
                "target": {
                  "block": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -129,
              "y": -365.8587
            },
            "zoom": 1
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": -12,
        "y": 13
      },
      "zoom": 1
    }
  }
}