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
          "id": "3f39fddb-dd2c-4f03-bfa9-7c764e8f64a9",
          "type": "bit.1",
          "position": {
            "x": 120,
            "y": 8
          }
        },
        {
          "id": "6bd44d01-0d95-47ff-945a-52dfde0ffc20",
          "type": "basic.output",
          "data": {
            "name": "Led",
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
            "y": 32
          }
        },
        {
          "id": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
          "type": "logic.combinational.mux_4_1",
          "position": {
            "x": 344,
            "y": 64
          }
        },
        {
          "id": "0549aaef-d5dc-4d63-8237-b7f699274ae6",
          "type": "bit.0",
          "position": {
            "x": 120,
            "y": 80
          }
        },
        {
          "id": "cbc9a519-de93-4ae1-9000-ca8f96d5c349",
          "type": "basic.output",
          "data": {
            "name": "Led",
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
          "id": "54b9c1b9-ed5a-4eae-a20d-6d5a4c621b14",
          "type": "basic.input",
          "data": {
            "name": "Push",
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
            "x": 88,
            "y": 160
          }
        },
        {
          "id": "3e1ad4cb-de6c-4824-92f7-764979c56313",
          "type": "basic.output",
          "data": {
            "name": "Led",
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
            "y": 176
          }
        },
        {
          "id": "17d086f4-27d4-49f7-a27d-e87a8b411466",
          "type": "basic.input",
          "data": {
            "name": "Push",
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
            "x": 88,
            "y": 232
          }
        },
        {
          "id": "9fa1fb20-d926-43d2-8e76-e2a520804c2e",
          "type": "basic.output",
          "data": {
            "name": "Led",
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
            "y": 248
          }
        },
        {
          "id": "aeb4edab-cad8-4b92-a2a8-b844579883de",
          "type": "basic.output",
          "data": {
            "name": "Led",
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
            "y": 320
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3f39fddb-dd2c-4f03-bfa9-7c764e8f64a9",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          }
        },
        {
          "source": {
            "block": "3f39fddb-dd2c-4f03-bfa9-7c764e8f64a9",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
          }
        },
        {
          "source": {
            "block": "0549aaef-d5dc-4d63-8237-b7f699274ae6",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          }
        },
        {
          "source": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "6bd44d01-0d95-47ff-945a-52dfde0ffc20",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "cbc9a519-de93-4ae1-9000-ca8f96d5c349",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "3e1ad4cb-de6c-4824-92f7-764979c56313",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "9fa1fb20-d926-43d2-8e76-e2a520804c2e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "aeb4edab-cad8-4b92-a2a8-b844579883de",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "0549aaef-d5dc-4d63-8237-b7f699274ae6",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          },
          "vertices": [
            {
              "x": 264,
              "y": 136
            }
          ]
        },
        {
          "source": {
            "block": "54b9c1b9-ed5a-4eae-a20d-6d5a4c621b14",
            "port": "out"
          },
          "target": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
          }
        },
        {
          "source": {
            "block": "17d086f4-27d4-49f7-a27d-e87a8b411466",
            "port": "out"
          },
          "target": {
            "block": "d55199f3-517f-4a1d-a4b7-08725dfc7a97",
            "port": "a014971e-5470-490b-9058-b4b00f2dd125"
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
      "logic.combinational.mux_4_1": {
        "version": "1.0",
        "package": {
          "name": "Mux 4:1",
          "version": "1.0.0",
          "description": "Multiplexer 4:1",
          "author": "Carlos Diaz",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-162%20419.9h-24v-7.2l-41-11.8v9h-25v2h25v18h-25v2h25v9l41-11.7v-7.4h24v-1.9zm-63%2018.5v-35l37%2010.8v13.5l-37%2010.7z%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
                "type": "basic.input",
                "data": {
                  "name": "i0"
                },
                "position": {
                  "x": 40,
                  "y": 32
                }
              },
              {
                "id": "5fb29465-2ee7-45bb-afa4-9a3de895c774",
                "type": "basic.input",
                "data": {
                  "name": "i1"
                },
                "position": {
                  "x": 40,
                  "y": 104
                }
              },
              {
                "id": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                "type": "basic.code",
                "data": {
                  "code": "reg _o;\nwire [1:0] _sel;\n\nassign _sel = {sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
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
                        "name": "in2"
                      },
                      {
                        "name": "in3"
                      },
                      {
                        "name": "sel0"
                      },
                      {
                        "name": "sel1"
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
                  "x": 296,
                  "y": 152
                }
              },
              {
                "id": "67ed5e09-486d-4f97-929f-aefea9c43951",
                "type": "basic.input",
                "data": {
                  "name": "i2"
                },
                "position": {
                  "x": 40,
                  "y": 184
                }
              },
              {
                "id": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
                "type": "basic.output",
                "data": {
                  "name": "o"
                },
                "position": {
                  "x": 776,
                  "y": 248
                }
              },
              {
                "id": "8be9cded-6d06-4b23-b73c-94c7ff311dbc",
                "type": "basic.input",
                "data": {
                  "name": "i3"
                },
                "position": {
                  "x": 40,
                  "y": 256
                }
              },
              {
                "id": "1b7db016-c89a-4f65-b6f0-0f87c851c077",
                "type": "basic.input",
                "data": {
                  "name": "sel0"
                },
                "position": {
                  "x": 40,
                  "y": 328
                }
              },
              {
                "id": "a014971e-5470-490b-9058-b4b00f2dd125",
                "type": "basic.input",
                "data": {
                  "name": "sel1"
                },
                "position": {
                  "x": 40,
                  "y": 400
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "o"
                },
                "target": {
                  "block": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "a014971e-5470-490b-9058-b4b00f2dd125",
                  "port": "out"
                },
                "target": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "sel1"
                }
              },
              {
                "source": {
                  "block": "1b7db016-c89a-4f65-b6f0-0f87c851c077",
                  "port": "out"
                },
                "target": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "sel0"
                }
              },
              {
                "source": {
                  "block": "8be9cded-6d06-4b23-b73c-94c7ff311dbc",
                  "port": "out"
                },
                "target": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "in3"
                }
              },
              {
                "source": {
                  "block": "67ed5e09-486d-4f97-929f-aefea9c43951",
                  "port": "out"
                },
                "target": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "in2"
                },
                "vertices": [
                  {
                    "x": 192,
                    "y": 248
                  }
                ]
              },
              {
                "source": {
                  "block": "5fb29465-2ee7-45bb-afa4-9a3de895c774",
                  "port": "out"
                },
                "target": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "in1"
                },
                "vertices": [
                  {
                    "x": 224,
                    "y": 168
                  }
                ]
              },
              {
                "source": {
                  "block": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
                  "port": "out"
                },
                "target": {
                  "block": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
                  "port": "in0"
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
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  }
}