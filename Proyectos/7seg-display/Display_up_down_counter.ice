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
          "id": "c671cd3b-1d4c-442b-ba2b-ff4f25178f6a",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": 960,
            "y": 40
          }
        },
        {
          "id": "4f1e13f3-5079-45cc-ab0c-4681ef510273",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1480,
            "y": 56
          }
        },
        {
          "id": "a667a8ea-3e51-47ae-86d8-06a150cafb69",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1520,
            "y": 128
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
            "x": 352,
            "y": 184
          }
        },
        {
          "id": "ba26e392-2646-4e80-9c33-9a7b068052a6",
          "type": "basic.code",
          "data": {
            "code": "// Up-Down counter with reset and MAX number\nreg [3:0] counter = 0;\n\n always @(posedge clk) begin\n   if (rst)\n   counter <= 1;\n   else if ((up == 1) && (counter < MAX+1))\n     counter <= counter + 1;\n   else\n     if ((down ==1) && (counter > 1))\n       counter <= counter - 1;\n end\n assign {z3, z2, z1, z0} = counter - 1;",
            "params": [
              {
                "name": "MAX"
              }
            ],
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
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "z0"
                },
                {
                  "name": "z1"
                },
                {
                  "name": "z2"
                },
                {
                  "name": "z3"
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
          "id": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
          "type": "logic.combinational.hex_7seg_ca",
          "position": {
            "x": 1304,
            "y": 192
          }
        },
        {
          "id": "9826f6c4-13a2-455a-be9d-44e40aaeb8db",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "117"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1528,
            "y": 200
          }
        },
        {
          "id": "23c9b03d-51ad-46c1-a4b1-aa1b57179584",
          "type": "debouncer-pulse",
          "position": {
            "x": 552,
            "y": 248
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
            "x": 168,
            "y": 264
          }
        },
        {
          "id": "982268a4-2d84-4f83-a078-9a4845dcb066",
          "type": "config.pull_up_inv",
          "position": {
            "x": 344,
            "y": 264
          }
        },
        {
          "id": "9df3ca89-ec61-43ea-9764-7bf9a46e2704",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "116"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1528,
            "y": 272
          }
        },
        {
          "id": "05db54cc-1023-472b-88a1-b5cf2164af76",
          "type": "debouncer-pulse",
          "position": {
            "x": 552,
            "y": 328
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
            "x": 168,
            "y": 344
          }
        },
        {
          "id": "d6f09b4e-5641-4a79-9d1b-afa87c662e8e",
          "type": "config.pull_up_inv",
          "position": {
            "x": 344,
            "y": 344
          }
        },
        {
          "id": "caa7d328-7ec5-4714-8ad3-3fad23f9f298",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D4",
                "value": "115"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1528,
            "y": 344
          }
        },
        {
          "id": "ccac3af9-39d7-4c08-89ec-9468c558757c",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 560,
            "y": 408
          }
        },
        {
          "id": "b44b41e4-c591-4b81-845e-f647c632c2b1",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "114"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1512,
            "y": 416
          }
        },
        {
          "id": "543d35af-428b-436f-8917-94976f164214",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "113"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1488,
            "y": 488
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
        },
        {
          "source": {
            "block": "23c9b03d-51ad-46c1-a4b1-aa1b57179584",
            "port": "4f1763cf-61c3-4eab-ad22-5de3d115bfc0"
          },
          "target": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "up"
          }
        },
        {
          "source": {
            "block": "05db54cc-1023-472b-88a1-b5cf2164af76",
            "port": "4f1763cf-61c3-4eab-ad22-5de3d115bfc0"
          },
          "target": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "down"
          }
        },
        {
          "source": {
            "block": "ccac3af9-39d7-4c08-89ec-9468c558757c",
            "port": "out"
          },
          "target": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ee549271-dcf9-4078-b41a-16eb84d85bc2",
            "port": "out"
          },
          "target": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "c671cd3b-1d4c-442b-ba2b-ff4f25178f6a",
            "port": "constant-out"
          },
          "target": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "MAX"
          }
        },
        {
          "source": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "z0"
          },
          "target": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "16e44a6a-853a-4264-9e9d-2269827ed136"
          }
        },
        {
          "source": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "z1"
          },
          "target": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "9cdbdf9f-f086-4427-9719-e13470658d97"
          }
        },
        {
          "source": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "z2"
          },
          "target": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40"
          }
        },
        {
          "source": {
            "block": "ba26e392-2646-4e80-9c33-9a7b068052a6",
            "port": "z3"
          },
          "target": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "2d774807-3ec8-492c-98e2-f1c9da8d68ff"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "8b73e273-3603-443a-b952-0ab9ad826a96"
          },
          "target": {
            "block": "4f1e13f3-5079-45cc-ab0c-4681ef510273",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "f2fce5fa-be07-46fe-bee1-bb2a497fe747"
          },
          "target": {
            "block": "a667a8ea-3e51-47ae-86d8-06a150cafb69",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8"
          },
          "target": {
            "block": "9826f6c4-13a2-455a-be9d-44e40aaeb8db",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "4687e984-3f19-44d7-baee-ca89513f8f1a"
          },
          "target": {
            "block": "9df3ca89-ec61-43ea-9764-7bf9a46e2704",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "1691b072-9102-4986-a900-fefd1a5a7b9e"
          },
          "target": {
            "block": "caa7d328-7ec5-4714-8ad3-3fad23f9f298",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c"
          },
          "target": {
            "block": "b44b41e4-c591-4b81-845e-f647c632c2b1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c4d8f534-3fba-4dc8-90ee-3a8bdb0e9ff3",
            "port": "2565c42b-00b0-4b1d-92a4-66c715834b33"
          },
          "target": {
            "block": "543d35af-428b-436f-8917-94976f164214",
            "port": "in"
          }
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
      },
      "logic.combinational.hex_7seg_ca": {
        "version": "1.0",
        "package": {
          "name": "Hex 7seg CA",
          "version": "1.0.0",
          "description": "Display de 7 segmentos. Ánodo común",
          "author": "Carlos Diaz",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20id=%22Capa_1%22%20viewBox=%220%200%2035.530029%2051.500018%22%20width=%2235.53%22%20height=%2251.5%22%3E%3Cstyle%20id=%22style4204%22%3E.st0%7Bfill:red%7D.st1%7Bfont-family:&apos;FranklinGothic-DemiCond&apos;%7D.st2%7Bfont-size:9.5149px%7D%3C/style%3E%3Cg%20id=%22g4206%22%20transform=%22matrix(.67676%200%200%20.67676%20-11.031%20-3.52)%22%3E%3Cpath%20class=%22st0%22%20id=%22polygon4208%22%20fill=%22red%22%20d=%22M27.7%2020v.1h25.7V20l3-3.2-2.5-2.4H28.2v.1-.1l-3.1%203.3%202.6%202.3z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4210%22%20fill=%22red%22%20d=%22M25.1%2050.4v.1h25.7v-.1l3-3.2-2.6-2.3v-.1H25.5v.1-.1l-3%203.3%202.5%202.3z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4212%22%20fill=%22red%22%20d=%22M48.9%2080.8v.1H23.2v-.1l-3-3.2%202.5-2.3v-.1h25.7v.1l3.1%203.2-2.6%202.4z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4214%22%20fill=%22red%22%20d=%22M19%2044.6l2.3%202.3%203.1-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4216%22%20fill=%22red%22%20d=%22M52.7%2043.9l2.3%202.4%203.1-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4218%22%20fill=%22red%22%20d=%22M16.3%2075.2l2.2%202.4%203.2-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4220%22%20fill=%22red%22%20d=%22M49.9%2074.6l2.3%202.4%203.2-3.2%202-22.8-2.3-2.3-3.4%203.1z%22/%3E%3Ccircle%20class=%22st0%22%20cx=%2265.1%22%20cy=%2277.6%22%20r=%223.7%22%20id=%22circle4222%22%20fill=%22red%22/%3E%3C/g%3E%3Ctext%20class=%22st0%20st1%20st2%22%20id=%22text4224%22%20x=%223.502%22%20y=%223.377%22%20font-size=%223.642%22%20font-family=%22FranklinGothic-DemiCond%22%20fill=%22red%22%3E%3Ctspan%20style=%22-inkscape-font-specification:sans-serif%22%20id=%22tspan4204%22%20font-family=%22sans-serif%22%20font-weight=%22400%22%20font-size=%223.75%22%3EANODO%20COM%C3%9AN%3C/tspan%3E%3C/text%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "8b73e273-3603-443a-b952-0ab9ad826a96",
                "type": "basic.output",
                "data": {
                  "name": "a"
                },
                "position": {
                  "x": 1016,
                  "y": 368
                }
              },
              {
                "id": "f2fce5fa-be07-46fe-bee1-bb2a497fe747",
                "type": "basic.output",
                "data": {
                  "name": "b"
                },
                "position": {
                  "x": 1016,
                  "y": 448
                }
              },
              {
                "id": "16e44a6a-853a-4264-9e9d-2269827ed136",
                "type": "basic.input",
                "data": {
                  "name": "h0"
                },
                "position": {
                  "x": 312,
                  "y": 488
                }
              },
              {
                "id": "1d9b0829-1b10-4495-ae33-08792225f68e",
                "type": "basic.code",
                "data": {
                  "code": "// Ánodo común\n//                 gfe_dcba\nlocalparam BCD_0 = 7'b011_1111,\n        BCD_1 = 7'b000_0110,\n        BCD_2 = 7'b101_1011,\n        BCD_3 = 7'b100_1111,\n        BCD_4 = 7'b110_0110,\n        BCD_5 = 7'b110_1101,\n        BCD_6 = 7'b111_1101,\n        BCD_7 = 7'b000_0111,\n        BCD_8 = 7'b111_1111,\n        BCD_9 = 7'b110_1111,\n        BCD_A = 7'b111_0111,\n        BCD_B = 7'b111_1100,\n        BCD_C = 7'b011_1001,\n        BCD_D = 7'b101_1110,\n        BCD_E = 7'b111_1001,\n        BCD_F = 7'b111_0001;\n\nreg [6:0] _o;\n\nalways @(*)\nbegin\n\n    case({h3, h2, h1, h0})\n        4'h0: _o <= BCD_0;\n        4'h1: _o <= BCD_1;\n        4'h2: _o <= BCD_2;\n        4'h3: _o <= BCD_3;\n        4'h4: _o <= BCD_4;\n        4'h5: _o <= BCD_5;\n        4'h6: _o <= BCD_6;\n        4'h7: _o <= BCD_7;\n        4'h8: _o <= BCD_8;\n        4'h9: _o <= BCD_9;\n        4'hA: _o <= BCD_A;\n        4'hB: _o <= BCD_B;\n        4'hC: _o <= BCD_C;\n        4'hD: _o <= BCD_D;\n        4'hE: _o <= BCD_E;\n        4'hF: _o <= BCD_F;\n        default: _o <= 0;\n    endcase\nend\n\nassign {g, f, e, d, c, b, a} = ~_o;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "h0"
                      },
                      {
                        "name": "h1"
                      },
                      {
                        "name": "h2"
                      },
                      {
                        "name": "h3"
                      }
                    ],
                    "out": [
                      {
                        "name": "a"
                      },
                      {
                        "name": "b"
                      },
                      {
                        "name": "c"
                      },
                      {
                        "name": "d"
                      },
                      {
                        "name": "e"
                      },
                      {
                        "name": "f"
                      },
                      {
                        "name": "g"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 496,
                  "y": 512
                }
              },
              {
                "id": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8",
                "type": "basic.output",
                "data": {
                  "name": "c"
                },
                "position": {
                  "x": 1016,
                  "y": 528
                }
              },
              {
                "id": "9cdbdf9f-f086-4427-9719-e13470658d97",
                "type": "basic.input",
                "data": {
                  "name": "h1"
                },
                "position": {
                  "x": 312,
                  "y": 568
                }
              },
              {
                "id": "4687e984-3f19-44d7-baee-ca89513f8f1a",
                "type": "basic.output",
                "data": {
                  "name": "d"
                },
                "position": {
                  "x": 1016,
                  "y": 608
                }
              },
              {
                "id": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40",
                "type": "basic.input",
                "data": {
                  "name": "h2"
                },
                "position": {
                  "x": 312,
                  "y": 648
                }
              },
              {
                "id": "1691b072-9102-4986-a900-fefd1a5a7b9e",
                "type": "basic.output",
                "data": {
                  "name": "e"
                },
                "position": {
                  "x": 1016,
                  "y": 688
                }
              },
              {
                "id": "2d774807-3ec8-492c-98e2-f1c9da8d68ff",
                "type": "basic.input",
                "data": {
                  "name": "h3"
                },
                "position": {
                  "x": 312,
                  "y": 728
                }
              },
              {
                "id": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c",
                "type": "basic.output",
                "data": {
                  "name": "f"
                },
                "position": {
                  "x": 1016,
                  "y": 768
                }
              },
              {
                "id": "2565c42b-00b0-4b1d-92a4-66c715834b33",
                "type": "basic.output",
                "data": {
                  "name": "g"
                },
                "position": {
                  "x": 1016,
                  "y": 840
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "16e44a6a-853a-4264-9e9d-2269827ed136",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h0"
                }
              },
              {
                "source": {
                  "block": "9cdbdf9f-f086-4427-9719-e13470658d97",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h1"
                }
              },
              {
                "source": {
                  "block": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h2"
                }
              },
              {
                "source": {
                  "block": "2d774807-3ec8-492c-98e2-f1c9da8d68ff",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h3"
                }
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "d"
                },
                "target": {
                  "block": "4687e984-3f19-44d7-baee-ca89513f8f1a",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "c"
                },
                "target": {
                  "block": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "b"
                },
                "target": {
                  "block": "f2fce5fa-be07-46fe-bee1-bb2a497fe747",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 952,
                    "y": 504
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "a"
                },
                "target": {
                  "block": "8b73e273-3603-443a-b952-0ab9ad826a96",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 928,
                    "y": 440
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "e"
                },
                "target": {
                  "block": "1691b072-9102-4986-a900-fefd1a5a7b9e",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 976,
                    "y": 704
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "f"
                },
                "target": {
                  "block": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 952,
                    "y": 752
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "g"
                },
                "target": {
                  "block": "2565c42b-00b0-4b1d-92a4-66c715834b33",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 928,
                    "y": 824
                  }
                ]
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -152.07320110504,
              "y": -209.21075900090992
            },
            "zoom": 0.7373584811199316
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": -141.1287,
        "y": -26.2012
      },
      "zoom": 1.0977
    }
  }
}