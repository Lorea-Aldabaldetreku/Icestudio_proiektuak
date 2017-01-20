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
          "id": "5502c099-751a-40d1-af2c-370234445559",
          "type": "basic.code",
          "data": {
            "code": "//-- fsm states\nlocalparam STABLE_0  = 0;  //-- Idle state. Button not pressed\nlocalparam WAIT_1 = 1;     //-- Waiting for the stabilization of 1. Butt pressed\nlocalparam STABLE_1 = 2;   //-- Button is pressed and stable\nlocalparam WAIT_0 = 3;     //-- Button released. Waiting for stabilization of 0\n\n//-- Registers for storing the states\nreg [1:0] state = STABLE_0;\nreg [1:0] next_state;\n\n//-- Control signals\nreg out = 0;\nreg timer_ena_r = 0;\n\nassign sw_out = out;\n\n//-- Transition between states\nalways @(posedge clk)\n  state <= next_state;\n\n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  timer_ena_r = 0;\n  out = 0;\n\n  case (state)\n\n    //-- Button not pressed\n    //-- Remain in this state until the botton is pressed\n    STABLE_0: begin\n      timer_ena_r = 0;\n      out = 0;\n      if (sw_in)\n        next_state = WAIT_1;\n    end\n\n    //-- Wait until x ms has elapsed\n    WAIT_1: begin\n      timer_ena_r = 1;\n      out = 1;\n      if (timer_trig)\n        next_state = STABLE_1;\n    end\n\n    STABLE_1: begin\n      timer_ena_r = 0;\n      out = 1;\n      if (sw_in == 0)\n        next_state = WAIT_0;\n    end\n\n    WAIT_0: begin\n      timer_ena_r = 1;\n      out = 0;\n      if (timer_trig)\n        next_state = STABLE_0;\n    end\n\n    default: begin\n\n    end\n  endcase\nend\n\nassign sw_out = out;\nassign timer_ena = timer_ena_r;\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "sw_in"
                },
                {
                  "name": "timer_trig"
                }
              ],
              "out": [
                {
                  "name": "sw_out"
                },
                {
                  "name": "timer_ena"
                }
              ]
            }
          },
          "position": {
            "x": 656,
            "y": 56
          }
        },
        {
          "id": "69dc9fd9-d440-4388-8f66-2bac6a4a850b",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "x": 64,
            "y": 64
          }
        },
        {
          "id": "b2113046-5733-4221-98d9-b36aa7c8c7b7",
          "type": "basic.output",
          "data": {
            "name": "sw_out",
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
            "x": 1168,
            "y": 88
          }
        },
        {
          "id": "69ca3e51-b565-43e9-8dc8-04d7f624bd67",
          "type": "basic.input",
          "data": {
            "name": "sw_in",
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
            "x": 432,
            "y": 152
          }
        },
        {
          "id": "f02fff53-e111-4185-9ac8-6ffd5836fdd4",
          "type": "prescaler_16",
          "position": {
            "x": 368,
            "y": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f02fff53-e111-4185-9ac8-6ffd5836fdd4",
            "port": "5c81f4f4-79f9-46f6-9c56-1172cdc48a4d"
          },
          "target": {
            "block": "5502c099-751a-40d1-af2c-370234445559",
            "port": "timer_trig"
          }
        },
        {
          "source": {
            "block": "5502c099-751a-40d1-af2c-370234445559",
            "port": "sw_out"
          },
          "target": {
            "block": "b2113046-5733-4221-98d9-b36aa7c8c7b7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "69dc9fd9-d440-4388-8f66-2bac6a4a850b",
            "port": "out"
          },
          "target": {
            "block": "5502c099-751a-40d1-af2c-370234445559",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "5502c099-751a-40d1-af2c-370234445559",
            "port": "timer_ena"
          },
          "target": {
            "block": "f02fff53-e111-4185-9ac8-6ffd5836fdd4",
            "port": "41d642ae-b559-4057-9ade-43d0b2ab9edf"
          },
          "vertices": [
            {
              "x": 624,
              "y": 344
            }
          ]
        },
        {
          "source": {
            "block": "69dc9fd9-d440-4388-8f66-2bac6a4a850b",
            "port": "out"
          },
          "target": {
            "block": "f02fff53-e111-4185-9ac8-6ffd5836fdd4",
            "port": "7551173a-8423-44ce-b999-fbed66737cd8"
          },
          "vertices": [
            {
              "x": 248,
              "y": 128
            }
          ]
        },
        {
          "source": {
            "block": "69ca3e51-b565-43e9-8dc8-04d7f624bd67",
            "port": "out"
          },
          "target": {
            "block": "5502c099-751a-40d1-af2c-370234445559",
            "port": "sw_in"
          }
        }
      ]
    },
    "deps": {
      "prescaler_16": {
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
                "id": "7551173a-8423-44ce-b999-fbed66737cd8",
                "type": "basic.input",
                "data": {
                  "name": "clk",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 40,
                  "y": 64
                }
              },
              {
                "id": "c26a3a55-5de5-4363-a676-05f369e84b64",
                "type": "basic.code",
                "data": {
                  "code": "//-- Bits of the prescaler\nparameter N = 16;\n\n//-- N bits counter\nreg [N-1:0] count = 0;\n\n//-- The most significant bit is used\n//-- as output\nassign clk_out = count[N-1];\n\nalways @(posedge(clk_in)) begin\n  if (!ena)\n    count <= 0;\n  else\n    count <= count + 1;\nend",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk_in"
                      },
                      {
                        "name": "ena"
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
                  "x": 248,
                  "y": 32
                }
              },
              {
                "id": "5c81f4f4-79f9-46f6-9c56-1172cdc48a4d",
                "type": "basic.output",
                "data": {
                  "name": "clk_out",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 776,
                  "y": 128
                }
              },
              {
                "id": "23cecda0-0c13-4fa9-b9fd-d11aa9bd1e89",
                "type": "basic.info",
                "data": {
                  "info": ""
                },
                "position": {
                  "x": 64,
                  "y": 360
                }
              },
              {
                "id": "41d642ae-b559-4057-9ade-43d0b2ab9edf",
                "type": "basic.input",
                "data": {
                  "name": "ena",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 40,
                  "y": 192
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "c26a3a55-5de5-4363-a676-05f369e84b64",
                  "port": "clk_out"
                },
                "target": {
                  "block": "5c81f4f4-79f9-46f6-9c56-1172cdc48a4d",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "7551173a-8423-44ce-b999-fbed66737cd8",
                  "port": "out"
                },
                "target": {
                  "block": "c26a3a55-5de5-4363-a676-05f369e84b64",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "41d642ae-b559-4057-9ade-43d0b2ab9edf",
                  "port": "out"
                },
                "target": {
                  "block": "c26a3a55-5de5-4363-a676-05f369e84b64",
                  "port": "ena"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 4,
              "y": -1
            },
            "zoom": 1
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": 38.6541,
        "y": 145.2856
      },
      "zoom": 1.1687
    }
  }
}