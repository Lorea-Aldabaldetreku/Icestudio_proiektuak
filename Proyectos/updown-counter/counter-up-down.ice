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
          "id": "00c88286-461a-47dc-a162-20202a8fe8ed",
          "type": "basic.output",
          "data": {
            "name": "led",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1296,
            "y": 168
          }
        },
        {
          "id": "54acc268-9847-41db-883e-2caf5aae89d0",
          "type": "basic.code",
          "data": {
            "code": "// Up-Down counter\nreg [7:0] counter = 0;\n\n always @(posedge clk) begin\n   if (up == 1)\n     counter <= counter + 1;\n   else\n     if (down ==1)\n       counter <= counter - 1;\n end\n\n assign zenbat = counter - 1;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "up"
                },
                {
                  "name": "down"
                }
              ],
              "out": [
                {
                  "name": "zenbat",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 816,
            "y": 184
          }
        },
        {
          "id": "ee549271-dcf9-4078-b41a-16eb84d85bc2",
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
            "x": 328,
            "y": 192
          }
        },
        {
          "id": "23c9b03d-51ad-46c1-a4b1-aa1b57179584",
          "type": "debouncer-pulse",
          "position": {
            "x": 544,
            "y": 280
          }
        },
        {
          "id": "561f9ffc-b530-465d-b7ee-9856c1cdccf8",
          "type": "basic.input",
          "data": {
            "name": "sw1",
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
            "x": 144,
            "y": 296
          }
        },
        {
          "id": "982268a4-2d84-4f83-a078-9a4845dcb066",
          "type": "config.pull_up_inv",
          "position": {
            "x": 336,
            "y": 296
          }
        },
        {
          "id": "05db54cc-1023-472b-88a1-b5cf2164af76",
          "type": "debouncer-pulse",
          "position": {
            "x": 544,
            "y": 368
          }
        },
        {
          "id": "20e11191-1228-47aa-837e-0ff78a0e98dd",
          "type": "basic.input",
          "data": {
            "name": "sw2",
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
            "x": 144,
            "y": 384
          }
        },
        {
          "id": "d6f09b4e-5641-4a79-9d1b-afa87c662e8e",
          "type": "config.pull_up_inv",
          "position": {
            "x": 336,
            "y": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "561f9ffc-b530-465d-b7ee-9856c1cdccf8",
            "port": "out"
          },
          "target": {
            "block": "982268a4-2d84-4f83-a078-9a4845dcb066",
            "port": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150"
          }
        },
        {
          "source": {
            "block": "20e11191-1228-47aa-837e-0ff78a0e98dd",
            "port": "out"
          },
          "target": {
            "block": "d6f09b4e-5641-4a79-9d1b-afa87c662e8e",
            "port": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150"
          }
        },
        {
          "source": {
            "block": "54acc268-9847-41db-883e-2caf5aae89d0",
            "port": "zenbat"
          },
          "target": {
            "block": "00c88286-461a-47dc-a162-20202a8fe8ed",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ee549271-dcf9-4078-b41a-16eb84d85bc2",
            "port": "out"
          },
          "target": {
            "block": "54acc268-9847-41db-883e-2caf5aae89d0",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "d6f09b4e-5641-4a79-9d1b-afa87c662e8e",
            "port": "a139fa0d-9b45-4480-a251-f4a66b49aa23"
          },
          "target": {
            "block": "05db54cc-1023-472b-88a1-b5cf2164af76",
            "port": "443d5166-7d17-4267-a336-e2c0cd46a971"
          }
        },
        {
          "source": {
            "block": "982268a4-2d84-4f83-a078-9a4845dcb066",
            "port": "a139fa0d-9b45-4480-a251-f4a66b49aa23"
          },
          "target": {
            "block": "23c9b03d-51ad-46c1-a4b1-aa1b57179584",
            "port": "443d5166-7d17-4267-a336-e2c0cd46a971"
          }
        },
        {
          "source": {
            "block": "05db54cc-1023-472b-88a1-b5cf2164af76",
            "port": "4f1763cf-61c3-4eab-ad22-5de3d115bfc0"
          },
          "target": {
            "block": "54acc268-9847-41db-883e-2caf5aae89d0",
            "port": "down"
          }
        },
        {
          "source": {
            "block": "23c9b03d-51ad-46c1-a4b1-aa1b57179584",
            "port": "4f1763cf-61c3-4eab-ad22-5de3d115bfc0"
          },
          "target": {
            "block": "54acc268-9847-41db-883e-2caf5aae89d0",
            "port": "up"
          }
        },
        {
          "source": {
            "block": "ee549271-dcf9-4078-b41a-16eb84d85bc2",
            "port": "out"
          },
          "target": {
            "block": "23c9b03d-51ad-46c1-a4b1-aa1b57179584",
            "port": "7711d750-d1f1-4a51-b514-54d14dfacc53"
          }
        },
        {
          "source": {
            "block": "ee549271-dcf9-4078-b41a-16eb84d85bc2",
            "port": "out"
          },
          "target": {
            "block": "05db54cc-1023-472b-88a1-b5cf2164af76",
            "port": "7711d750-d1f1-4a51-b514-54d14dfacc53"
          },
          "vertices": [
            {
              "x": 504,
              "y": 264
            }
          ]
        }
      ]
    },
    "deps": {
      "config.pull_up_inv": {
        "version": "1.0",
        "package": {
          "name": "Pull up inv",
          "version": "1.0.0",
          "description": "FPGA internal pull up configuration on the connected input port plus a logic inverter",
          "author": "Juan González",
          "image": "%3Csvg%20id=%22svg2%22%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-265%20401.5%2063.5%2038.4%22%3E%3Cstyle%3E.st0%7Bdisplay:none%7D.st1%7Bfill:none;stroke:#000;stroke-width:.75;stroke-linejoin:round;stroke-miterlimit:10%7D.st2%7Bfill:#010002%7D%3C/style%3E%3Cpath%20class=%22st0%22%20d=%22M-242.5%20411.8v11.8h-5.4v-11.8h5.4m1-1h-7.4v13.8h7.4v-13.8z%22/%3E%3Cpath%20d=%22M-207.6%20425.4c-.3-.9-1.1-1.6-2.1-1.6-1.1%200-2%20.8-2.2%201.8l-15.4-8.7v8.5h-17.4v-2.7c0-.2-.1-.4-.3-.4l-2.3-1.2%205.6-2.9c.2-.1.3-.3.3-.5s-.1-.4-.3-.4l-5.7-2.7%202.4-1.6c.1-.1.2-.2.2-.4v-2.7h3.1l-3.5-6.1-3.5%206.1h3v2.5l-2.9%202c-.1.1-.2.3-.2.5s.1.3.3.4l5.6%202.6-5.6%202.9c-.2.1-.3.3-.3.4s.1.4.3.4l2.9%201.5V425.5H-265v1.2h37.6v8.5l15.4-8.7c.2%201%201.1%201.8%202.2%201.8%201%200%201.9-.7%202.1-1.6h6.1v-1.2h-6zm-37.7-20.2l2.2%203.9h-4.5l2.3-3.9zm19.2%2027.7v-13.8l12.3%206.9-12.3%206.9zm16.3-5.5c-.8%200-1.4-.6-1.4-1.4%200-.8.6-1.4%201.4-1.4s1.4.6%201.4%201.4c0%20.8-.6%201.4-1.4%201.4z%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "2b245a71-2d80-466b-955f-e3d61839fe25",
                "type": "basic.code",
                "data": {
                  "code": "// Pull up inv\n\nwire din, dout, outen;\n\nassign o = ~din;\n\nSB_IO #(\n    .PIN_TYPE(6'b 1010_01),\n    .PULLUP(1'b 1)\n) io_pin (\n    .PACKAGE_PIN(i),\n    .OUTPUT_ENABLE(outen),\n    .D_OUT_0(dout),\n    .D_IN_0(din)\n);",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "i"
                      }
                    ],
                    "out": [
                      {
                        "name": "o"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 256,
                  "y": 104
                }
              },
              {
                "id": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150",
                "type": "basic.input",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 64,
                  "y": 200
                }
              },
              {
                "id": "a139fa0d-9b45-4480-a251-f4a66b49aa23",
                "type": "basic.output",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 760,
                  "y": 200
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150",
                  "port": "out"
                },
                "target": {
                  "block": "2b245a71-2d80-466b-955f-e3d61839fe25",
                  "port": "i"
                }
              },
              {
                "source": {
                  "block": "2b245a71-2d80-466b-955f-e3d61839fe25",
                  "port": "o"
                },
                "target": {
                  "block": "a139fa0d-9b45-4480-a251-f4a66b49aa23",
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
      },
      "debouncer-pulse": {
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
                "id": "6d0dfe11-57c9-4127-a8a7-2443cba9c53e",
                "type": "basic.code",
                "data": {
                  "code": "//-- fsm states\nlocalparam IDLE  = 0;    //-- Idle state. Button not pressed\nlocalparam WAIT_1  = 1;  //-- Waiting for the stabilization of 1. Butt pressed\nlocalparam PULSE = 2;    //-- 1-clk pulse is generated\nlocalparam WAIT_0 = 3;   //-- Button released. Waiting for stabilization of 0\n\n//-- Registers for storing the states\nreg [1:0] state = IDLE;\nreg [1:0] next_state;\n\n//-- Control signals\nreg out = 0;\nreg timer_ena_r = 0;\n\nassign sw_out = out;\n\n//-- Transition between states\nalways @(posedge clk)\n  state <= next_state;\n\n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  timer_ena_r = 0;\n  out = 0;\n\n  case (state)\n\n    //-- Button not pressed\n    //-- Remain in this state until the botton is pressed\n    IDLE: begin\n      timer_ena_r = 0;\n      out = 0;\n      if (sw_in)\n        next_state = WAIT_1;\n    end\n\n    //-- Wait until x ms has elapsed\n    WAIT_1: begin\n      timer_ena_r = 1;\n      out = 0;\n      if (timer_trig)\n        next_state = PULSE;\n    end\n\n    PULSE: begin\n      timer_ena_r = 0;\n      out = 1;\n      next_state = WAIT_0;\n    end\n\n    WAIT_0: begin\n      timer_ena_r = 1;\n      out = 0;\n      if (timer_trig && sw_in==0)\n        next_state = IDLE;\n    end\n\n    default: begin\n\n    end\n  endcase\nend\n\nassign sw_out = out;\nassign timer_ena = timer_ena_r;\n\n",
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
                  "x": 800,
                  "y": 144
                }
              },
              {
                "id": "7711d750-d1f1-4a51-b514-54d14dfacc53",
                "type": "basic.input",
                "data": {
                  "name": "clk"
                },
                "position": {
                  "x": 144,
                  "y": 152
                }
              },
              {
                "id": "4f1763cf-61c3-4eab-ad22-5de3d115bfc0",
                "type": "basic.output",
                "data": {
                  "name": "out"
                },
                "position": {
                  "x": 1264,
                  "y": 176
                }
              },
              {
                "id": "443d5166-7d17-4267-a336-e2c0cd46a971",
                "type": "basic.input",
                "data": {
                  "name": "in"
                },
                "position": {
                  "x": 576,
                  "y": 240
                }
              },
              {
                "id": "45ece5f0-179c-4770-9d2c-4b61051d298e",
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
                  "x": 328,
                  "y": 408
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "7711d750-d1f1-4a51-b514-54d14dfacc53",
                  "port": "out"
                },
                "target": {
                  "block": "6d0dfe11-57c9-4127-a8a7-2443cba9c53e",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "443d5166-7d17-4267-a336-e2c0cd46a971",
                  "port": "out"
                },
                "target": {
                  "block": "6d0dfe11-57c9-4127-a8a7-2443cba9c53e",
                  "port": "sw_in"
                }
              },
              {
                "source": {
                  "block": "6d0dfe11-57c9-4127-a8a7-2443cba9c53e",
                  "port": "sw_out"
                },
                "target": {
                  "block": "4f1763cf-61c3-4eab-ad22-5de3d115bfc0",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "7711d750-d1f1-4a51-b514-54d14dfacc53",
                  "port": "out"
                },
                "target": {
                  "block": "45ece5f0-179c-4770-9d2c-4b61051d298e",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "45ece5f0-179c-4770-9d2c-4b61051d298e",
                  "port": "clk_out"
                },
                "target": {
                  "block": "6d0dfe11-57c9-4127-a8a7-2443cba9c53e",
                  "port": "timer_trig"
                }
              },
              {
                "source": {
                  "block": "6d0dfe11-57c9-4127-a8a7-2443cba9c53e",
                  "port": "timer_ena"
                },
                "target": {
                  "block": "45ece5f0-179c-4770-9d2c-4b61051d298e",
                  "port": "ena"
                },
                "vertices": [
                  {
                    "x": 656,
                    "y": 704
                  }
                ]
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 0,
              "y": 1
            },
            "zoom": 1
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": -82.6168,
        "y": -89.0236
      },
      "zoom": 1.0166
    }
  }
}