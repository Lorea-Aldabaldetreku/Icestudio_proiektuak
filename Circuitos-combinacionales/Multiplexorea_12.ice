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
          "id": "68bd602e-af74-40a2-97a5-2e2154918f2e",
          "type": "basic.output",
          "data": {
            "name": "Leda",
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
            "x": 448,
            "y": 40
          }
        },
        {
          "id": "abefd460-f3bb-4593-ab14-a90ca2f2d06d",
          "type": "bit.0",
          "position": {
            "x": 72,
            "y": 64
          }
        },
        {
          "id": "1dbbef2d-ddd3-41bb-8636-e3007ea39655",
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
            "x": 448,
            "y": 128
          }
        },
        {
          "id": "ba3a32c8-ad1d-4ded-b7d1-4bad2b8462ad",
          "type": "bit.1",
          "position": {
            "x": 56,
            "y": 144
          }
        },
        {
          "id": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
          "type": "logic.combinational.mux_2_1",
          "position": {
            "x": 240,
            "y": 176
          }
        },
        {
          "id": "445e6749-266b-42a6-a1f8-4bb32e1ae6d9",
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
            "x": 448,
            "y": 208
          }
        },
        {
          "id": "39e5e9ed-31e8-4144-a5d9-a5dc7fa9e5bb",
          "type": "basic.input",
          "data": {
            "name": "clock",
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
            "x": -144,
            "y": 224
          }
        },
        {
          "id": "46de212c-d23b-458a-bc77-cbd66e751d08",
          "type": "div_1s",
          "position": {
            "x": 32,
            "y": 224
          }
        },
        {
          "id": "2b685824-cd48-4bd3-a8c8-a11aa2faba81",
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
            "x": 448,
            "y": 288
          }
        },
        {
          "id": "7c4b7f8a-7e5b-4efb-9ca7-0afc9154e30c",
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
            "x": 448,
            "y": 376
          }
        },
        {
          "id": "2140454b-db04-41b3-8303-a82ceea786ee",
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
            "x": 448,
            "y": 456
          }
        },
        {
          "id": "2f3ad0a4-d22a-42e3-b314-468c467e306c",
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
            "x": 448,
            "y": 544
          }
        },
        {
          "id": "ad9d27b1-d690-4ff3-ae46-3721414988ae",
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
            "x": 448,
            "y": 632
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "46de212c-d23b-458a-bc77-cbd66e751d08",
            "port": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9"
          },
          "target": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          }
        },
        {
          "source": {
            "block": "abefd460-f3bb-4593-ab14-a90ca2f2d06d",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          }
        },
        {
          "source": {
            "block": "39e5e9ed-31e8-4144-a5d9-a5dc7fa9e5bb",
            "port": "out"
          },
          "target": {
            "block": "46de212c-d23b-458a-bc77-cbd66e751d08",
            "port": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "68bd602e-af74-40a2-97a5-2e2154918f2e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "1dbbef2d-ddd3-41bb-8636-e3007ea39655",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "445e6749-266b-42a6-a1f8-4bb32e1ae6d9",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "2b685824-cd48-4bd3-a8c8-a11aa2faba81",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "7c4b7f8a-7e5b-4efb-9ca7-0afc9154e30c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "2140454b-db04-41b3-8303-a82ceea786ee",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "2f3ad0a4-d22a-42e3-b314-468c467e306c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "ad9d27b1-d690-4ff3-ae46-3721414988ae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ba3a32c8-ad1d-4ded-b7d1-4bad2b8462ad",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "8a76a5a8-ac3c-4b35-a302-3833c4b501f2",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          }
        }
      ]
    },
    "deps": {
      "bit.0": {
        "version": "1.0",
        "package": {
          "name": "Bit 0",
          "version": "1.0.0",
          "description": "Assign 0 to the output wire",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "type": "basic.code",
                "data": {
                  "code": "// Bit 0\n\nassign v = 1'b0;",
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
      "logic.combinational.mux_2_1": {
        "version": "1.0",
        "package": {
          "name": "Mux 2:1",
          "version": "1.0.0",
          "description": "Multiplexer 2:1",
          "author": "Carlos Diaz",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-162%20419.9h-24v-7.2l-41-11.8v9h-25v2h25v18h-25v2h25v9l41-11.7v-7.4h24v-1.9zm-63%2018.5v-35l37%2010.8v13.5l-37%2010.7z%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "ba573190-2ead-411a-a323-1b15a22d46db",
                "type": "basic.code",
                "data": {
                  "code": "reg _o;\n\nalways @(*) begin\n    case(sel0)\n        0: _o = in0;\n        1: _o = in1;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "in0"
                      },
                      {
                        "name": "in1"
                      },
                      {
                        "name": "sel0"
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
                  "x": 312,
                  "y": 112
                }
              },
              {
                "id": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
                "type": "basic.input",
                "data": {
                  "name": "i0"
                },
                "position": {
                  "x": 80,
                  "y": 120
                }
              },
              {
                "id": "5fb29465-2ee7-45bb-afa4-9a3de895c774",
                "type": "basic.input",
                "data": {
                  "name": "i1"
                },
                "position": {
                  "x": 80,
                  "y": 208
                }
              },
              {
                "id": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
                "type": "basic.output",
                "data": {
                  "name": "o"
                },
                "position": {
                  "x": 792,
                  "y": 208
                }
              },
              {
                "id": "67ed5e09-486d-4f97-929f-aefea9c43951",
                "type": "basic.input",
                "data": {
                  "name": "sel"
                },
                "position": {
                  "x": 80,
                  "y": 296
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                  "port": "o"
                },
                "target": {
                  "block": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
                  "port": "out"
                },
                "target": {
                  "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                  "port": "in0"
                }
              },
              {
                "source": {
                  "block": "5fb29465-2ee7-45bb-afa4-9a3de895c774",
                  "port": "out"
                },
                "target": {
                  "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                  "port": "in1"
                }
              },
              {
                "source": {
                  "block": "67ed5e09-486d-4f97-929f-aefea9c43951",
                  "port": "out"
                },
                "target": {
                  "block": "ba573190-2ead-411a-a323-1b15a22d46db",
                  "port": "sel0"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -21.03752160981206,
              "y": 29.479234822175684
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
      }
    },
    "state": {
      "pan": {
        "x": 169,
        "y": 7
      },
      "zoom": 1
    }
  }
}