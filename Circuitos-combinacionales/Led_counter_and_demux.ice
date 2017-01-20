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
          "id": "4a34bd48-3267-4d3a-ad55-25c361f0cfa6",
          "type": "basic.output",
          "data": {
            "name": "led0",
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
            "x": 1144,
            "y": 128
          }
        },
        {
          "id": "d3c89fdd-7602-4694-8da9-52a8e7b01ed4",
          "type": "basic.output",
          "data": {
            "name": "led1",
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
            "x": 1160,
            "y": 200
          }
        },
        {
          "id": "5b946d56-b027-42b8-890a-d44f5b3219bf",
          "type": "bit.1",
          "position": {
            "x": 728,
            "y": 248
          }
        },
        {
          "id": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
          "type": "logic.combinational.demux_1_8",
          "position": {
            "x": 912,
            "y": 248
          }
        },
        {
          "id": "5b93b851-3222-4dea-93a7-545f52681d71",
          "type": "basic.output",
          "data": {
            "name": "led2",
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
            "x": 1160,
            "y": 280
          }
        },
        {
          "id": "a6319e43-b40e-4eac-a180-b8286e7a3332",
          "type": "basic.code",
          "data": {
            "code": "//-- 3 bit-eko Zenbatzailea\n\nreg [2:0] q=0;\n\nalways @(posedge clk)\n  q<=q+1;\n  \nassign {d2,d1,d0} = q;  \n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "d0"
                },
                {
                  "name": "d1"
                },
                {
                  "name": "d2"
                },
                {
                  "name": "d3"
                }
              ]
            }
          },
          "position": {
            "x": 344,
            "y": 312
          }
        },
        {
          "id": "dfada74d-24ee-4c3a-b310-bab2e080232e",
          "type": "basic.output",
          "data": {
            "name": "led3",
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
            "x": 1176,
            "y": 352
          }
        },
        {
          "id": "46f51b57-5620-4237-b0d2-6198cfd53045",
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
            "x": -72,
            "y": 408
          }
        },
        {
          "id": "beb4e092-d2ef-405f-adb5-b8901be4b301",
          "type": "div_1s",
          "position": {
            "x": 120,
            "y": 408
          }
        },
        {
          "id": "9834b25d-a006-49ca-af70-15e0f9465b12",
          "type": "basic.output",
          "data": {
            "name": "led3",
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
            "x": 1168,
            "y": 424
          }
        },
        {
          "id": "bd64002a-cc6a-4fc3-8545-0a80ac469c88",
          "type": "basic.output",
          "data": {
            "name": "led3",
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
            "x": 1160,
            "y": 504
          }
        },
        {
          "id": "16b52434-c24b-47f2-aa5f-b7a7160ebae7",
          "type": "basic.output",
          "data": {
            "name": "led3",
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
            "x": 1152,
            "y": 576
          }
        },
        {
          "id": "5e1d0fe9-4ce0-4893-96c7-1504f0cff667",
          "type": "basic.info",
          "data": {
            "info": "DIV-1s BLOKEA-------------------------\n\nDELAY-1s blokeak ordulariaren maiztasuna \nsegundu batera jeisten du.\nSarrerak, clk-k, 12 MHz du eta\nirteerak, clk_out-k, 1Hz du\n\nGogoratu: HZ maiztasunaren unitatea da.\n1 Hz---ziklo bat segunduko\n12 MHZ---12.000.000 ziklo segundoko\n"
          },
          "position": {
            "x": -144,
            "y": 616
          }
        },
        {
          "id": "da9c2dfa-1bba-4987-b8d4-4c05bd803a45",
          "type": "basic.info",
          "data": {
            "info": "3 bit-eko Zenbatzailea\n\nZenbatzaile digitalak 0-tik 7-ra\nzenbatzen du.\n\nhorretarako 3 bit erabili behar dira: \nd0,d1 eta d3\n\nIrteerak segunduro aldatzen dira, \nsarrerako clk-k 1Hz-ko maiztasuna duelako."
          },
          "position": {
            "x": 272,
            "y": 616
          }
        },
        {
          "id": "7aa8dbe4-dcf8-4e5d-a3af-5fe2590aefa7",
          "type": "basic.info",
          "data": {
            "info": "Demultiplexorea---Demux 1:8\n\nDemultiplexoreak \"1\" datua banatzen du.\n\nSarrerako datua, \"1\"a,\nirteera batera bidaltzen da.\n\nKontrol-seinaleek (sel0, sel1 eta sel3-k)\nhautatzen dute irteera.\n\nIrteerak, o1, o2, o3, o4, o5, o6, o7 dira."
          },
          "position": {
            "x": 688,
            "y": 616
          }
        },
        {
          "id": "cc63eaaa-586e-41ca-b14f-6440eff5f0ec",
          "type": "basic.output",
          "data": {
            "name": "led3",
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
            "x": 1144,
            "y": 640
          }
        },
        {
          "id": "5416b467-0c42-4a27-acf8-61f8fa718a24",
          "type": "basic.info",
          "data": {
            "info": "DIV-1s -------------------------\n\nCambia la frecuencia del reloj a 1s.\n clk tiene una frecuencia de  12 MHz la salida 1Hz.\n\n"
          },
          "position": {
            "x": -144,
            "y": 888
          }
        },
        {
          "id": "31938a16-5521-403b-8576-ccf676ce51d0",
          "type": "basic.info",
          "data": {
            "info": "3 bit counter\n\nCuenta d 0 a 7\n\nPara ello son necesarios 3 bits: \nd0,d1 eta d3\n\nLas salidas cambian en cad segundo."
          },
          "position": {
            "x": 272,
            "y": 888
          }
        },
        {
          "id": "8ec94b74-7f57-42ac-a37c-30836aa2d065",
          "type": "basic.info",
          "data": {
            "info": "Demultiplexor---Demux 1:8\n\nDistribuye el bit \"1\" en las salidas\n\nLas señales de control (sel0, sel1 y sel3)\nseleccionan la salida.\n\nLas salidas son: o1, o2, o3, o4, o5, o6, o7."
          },
          "position": {
            "x": 696,
            "y": 888
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "beb4e092-d2ef-405f-adb5-b8901be4b301",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "a6319e43-b40e-4eac-a180-b8286e7a3332",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "46f51b57-5620-4237-b0d2-6198cfd53045",
            "port": "out"
          },
          "target": {
            "block": "beb4e092-d2ef-405f-adb5-b8901be4b301",
            "port": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7"
          }
        },
        {
          "source": {
            "block": "5b946d56-b027-42b8-890a-d44f5b3219bf",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa"
          },
          "target": {
            "block": "4a34bd48-3267-4d3a-ad55-25c361f0cfa6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2"
          },
          "target": {
            "block": "d3c89fdd-7602-4694-8da9-52a8e7b01ed4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3"
          },
          "target": {
            "block": "5b93b851-3222-4dea-93a7-545f52681d71",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "b9d764ea-538a-420f-a8d3-45af7a8e30a2"
          },
          "target": {
            "block": "dfada74d-24ee-4c3a-b310-bab2e080232e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "1b8510ac-d723-4226-bf28-c7329d0f73fb"
          },
          "target": {
            "block": "9834b25d-a006-49ca-af70-15e0f9465b12",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "65f31fca-d607-4d5c-82cc-878a93b8e580"
          },
          "target": {
            "block": "bd64002a-cc6a-4fc3-8545-0a80ac469c88",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "c8fadd68-77e1-47be-a262-b076e878e6fd"
          },
          "target": {
            "block": "16b52434-c24b-47f2-aa5f-b7a7160ebae7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "99ca2a23-7e0d-4c34-9ab1-988c6bf69633"
          },
          "target": {
            "block": "cc63eaaa-586e-41ca-b14f-6440eff5f0ec",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "a6319e43-b40e-4eac-a180-b8286e7a3332",
            "port": "d0"
          },
          "target": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f"
          }
        },
        {
          "source": {
            "block": "a6319e43-b40e-4eac-a180-b8286e7a3332",
            "port": "d1"
          },
          "target": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "657dab9e-6580-4f02-b54f-66477863f26a"
          }
        },
        {
          "source": {
            "block": "a6319e43-b40e-4eac-a180-b8286e7a3332",
            "port": "d2"
          },
          "target": {
            "block": "1ddb914f-80f4-4e6d-80ba-51e679a0e33b",
            "port": "e1a156c8-5813-46f6-a4d4-c672857f3396"
          }
        }
      ]
    },
    "deps": {
      "bit.1": {
        "version": "1.0",
        "package": {
          "name": "Bit 1",
          "version": "1.0.0",
          "description": "Assign 1 to the output wire",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "type": "basic.code",
                "data": {
                  "code": "// Bit 1\n\nassign v = 1'b1;",
                  "params": [],
                  "ports": {
                    "in": [],
                    "out": [
                      {
                        "name": "v"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 96,
                  "y": 96
                }
              },
              {
                "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "type": "basic.output",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 608,
                  "y": 192
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                  "port": "v"
                },
                "target": {
                  "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
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
      },
      "logic.combinational.demux_1_8": {
        "version": "1.0",
        "package": {
          "name": "Demux 1:8",
          "version": "1.0.0",
          "description": "Demultiplexer 1:8",
          "author": "Carlos Diaz",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20421.9h24v7.3l41%2011.7v-9h25v-2h-25v-18h25v-2h-25v-9l-41%2011.8v7.2h-24v2zm26%205.7v-13.5l37-10.8v35l-37-10.7z%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                "type": "basic.output",
                "data": {
                  "name": "o0"
                },
                "position": {
                  "x": 760,
                  "y": -120
                }
              },
              {
                "id": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
                "type": "basic.output",
                "data": {
                  "name": "o1"
                },
                "position": {
                  "x": 760,
                  "y": -40
                }
              },
              {
                "id": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
                "type": "basic.output",
                "data": {
                  "name": "o2"
                },
                "position": {
                  "x": 760,
                  "y": 40
                }
              },
              {
                "id": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                "type": "basic.input",
                "data": {
                  "name": "i"
                },
                "position": {
                  "x": -8,
                  "y": 48
                }
              },
              {
                "id": "1ea41d18-7010-42c0-932f-99d135efdb73",
                "type": "basic.code",
                "data": {
                  "code": "assign {out7,out6,out5,out4,out3,out2,out1,out0} = in0 << {sel2,sel1,sel0};",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "in0"
                      },
                      {
                        "name": "sel0"
                      },
                      {
                        "name": "sel1"
                      },
                      {
                        "name": "sel2"
                      }
                    ],
                    "out": [
                      {
                        "name": "out0"
                      },
                      {
                        "name": "out1"
                      },
                      {
                        "name": "out2"
                      },
                      {
                        "name": "out3"
                      },
                      {
                        "name": "out4"
                      },
                      {
                        "name": "out5"
                      },
                      {
                        "name": "out6"
                      },
                      {
                        "name": "out7"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 184,
                  "y": 72
                }
              },
              {
                "id": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
                "type": "basic.output",
                "data": {
                  "name": "o3"
                },
                "position": {
                  "x": 760,
                  "y": 120
                }
              },
              {
                "id": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
                "type": "basic.input",
                "data": {
                  "name": "sel0"
                },
                "position": {
                  "x": -8,
                  "y": 128
                }
              },
              {
                "id": "657dab9e-6580-4f02-b54f-66477863f26a",
                "type": "basic.input",
                "data": {
                  "name": "sel1"
                },
                "position": {
                  "x": -8,
                  "y": 208
                }
              },
              {
                "id": "1b8510ac-d723-4226-bf28-c7329d0f73fb",
                "type": "basic.output",
                "data": {
                  "name": "o4"
                },
                "position": {
                  "x": 760,
                  "y": 216
                }
              },
              {
                "id": "e1a156c8-5813-46f6-a4d4-c672857f3396",
                "type": "basic.input",
                "data": {
                  "name": "sel2"
                },
                "position": {
                  "x": -8,
                  "y": 288
                }
              },
              {
                "id": "65f31fca-d607-4d5c-82cc-878a93b8e580",
                "type": "basic.output",
                "data": {
                  "name": "o5"
                },
                "position": {
                  "x": 760,
                  "y": 312
                }
              },
              {
                "id": "c8fadd68-77e1-47be-a262-b076e878e6fd",
                "type": "basic.output",
                "data": {
                  "name": "o6"
                },
                "position": {
                  "x": 760,
                  "y": 392
                }
              },
              {
                "id": "99ca2a23-7e0d-4c34-9ab1-988c6bf69633",
                "type": "basic.output",
                "data": {
                  "name": "o7"
                },
                "position": {
                  "x": 760,
                  "y": 472
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "in0"
                }
              },
              {
                "source": {
                  "block": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "sel0"
                }
              },
              {
                "source": {
                  "block": "657dab9e-6580-4f02-b54f-66477863f26a",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "sel1"
                }
              },
              {
                "source": {
                  "block": "e1a156c8-5813-46f6-a4d4-c672857f3396",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "sel2"
                }
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out0"
                },
                "target": {
                  "block": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 640,
                    "y": -16
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out7"
                },
                "target": {
                  "block": "99ca2a23-7e0d-4c34-9ab1-988c6bf69633",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 640,
                    "y": 424
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out1"
                },
                "target": {
                  "block": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 656,
                    "y": 40
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out2"
                },
                "target": {
                  "block": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 672,
                    "y": 120
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out3"
                },
                "target": {
                  "block": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 688,
                    "y": 184
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out4"
                },
                "target": {
                  "block": "1b8510ac-d723-4226-bf28-c7329d0f73fb",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out5"
                },
                "target": {
                  "block": "65f31fca-d607-4d5c-82cc-878a93b8e580",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 672,
                    "y": 296
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out6"
                },
                "target": {
                  "block": "c8fadd68-77e1-47be-a262-b076e878e6fd",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 656,
                    "y": 328
                  },
                  {
                    "x": 656,
                    "y": 368
                  },
                  {
                    "x": 656,
                    "y": 384
                  },
                  {
                    "x": 664,
                    "y": 424
                  }
                ]
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 143.76402059142058,
              "y": 110.755583226028
            },
            "zoom": 0.7272029968400818
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": 296,
        "y": -252
      },
      "zoom": 1
    }
  }
}