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
          "id": "857949d0-dd36-4138-8ca5-9f209536c1d9",
          "type": "bit.1",
          "position": {
            "x": 96,
            "y": 304
          }
        },
        {
          "id": "8cf907a5-42ad-4954-95c2-45c09bd89bcb",
          "type": "basic.output",
          "data": {
            "name": "Led0",
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
            "y": 304
          }
        },
        {
          "id": "d6230b5b-2724-464d-a56c-cbaea19ad6fd",
          "type": "logic.combinational.demux_1_2",
          "position": {
            "x": 272,
            "y": 320
          }
        },
        {
          "id": "3c59390d-28a0-4242-9688-23828d66dc64",
          "type": "basic.output",
          "data": {
            "name": "Led0",
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
            "y": 376
          }
        },
        {
          "id": "b3aafb72-3918-40d5-8480-194a80c06276",
          "type": "basic.input",
          "data": {
            "name": "Botoia",
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
            "y": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "857949d0-dd36-4138-8ca5-9f209536c1d9",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "d6230b5b-2724-464d-a56c-cbaea19ad6fd",
            "port": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406"
          }
        },
        {
          "source": {
            "block": "b3aafb72-3918-40d5-8480-194a80c06276",
            "port": "out"
          },
          "target": {
            "block": "d6230b5b-2724-464d-a56c-cbaea19ad6fd",
            "port": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f"
          }
        },
        {
          "source": {
            "block": "d6230b5b-2724-464d-a56c-cbaea19ad6fd",
            "port": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa"
          },
          "target": {
            "block": "8cf907a5-42ad-4954-95c2-45c09bd89bcb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d6230b5b-2724-464d-a56c-cbaea19ad6fd",
            "port": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2"
          },
          "target": {
            "block": "3c59390d-28a0-4242-9688-23828d66dc64",
            "port": "in"
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
      "logic.combinational.demux_1_2": {
        "version": "1.0",
        "package": {
          "name": "Demux 1:2",
          "version": "1.0.0",
          "description": "Demultiplexer 1:2",
          "author": "Carlos Diaz",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20421.9h24v7.3l41%2011.7v-9h25v-2h-25v-18h25v-2h-25v-9l-41%2011.8v7.2h-24v2zm26%205.7v-13.5l37-10.8v35l-37-10.7z%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "c8fdb023-d458-4657-899c-5749a256be09",
                "type": "basic.code",
                "data": {
                  "code": "assign {out1,out0} = in0 << sel0;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "in0"
                      },
                      {
                        "name": "sel0"
                      }
                    ],
                    "out": [
                      {
                        "name": "out0"
                      },
                      {
                        "name": "out1"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 248,
                  "y": 88
                }
              },
              {
                "id": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                "type": "basic.input",
                "data": {
                  "name": "i"
                },
                "position": {
                  "x": 40,
                  "y": 120
                }
              },
              {
                "id": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                "type": "basic.output",
                "data": {
                  "name": "o0"
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
                  "name": "sel"
                },
                "position": {
                  "x": 40,
                  "y": 248
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
                  "y": 248
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "c8fdb023-d458-4657-899c-5749a256be09",
                  "port": "out1"
                },
                "target": {
                  "block": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "c8fdb023-d458-4657-899c-5749a256be09",
                  "port": "out0"
                },
                "target": {
                  "block": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                  "port": "out"
                },
                "target": {
                  "block": "c8fdb023-d458-4657-899c-5749a256be09",
                  "port": "in0"
                }
              },
              {
                "source": {
                  "block": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
                  "port": "out"
                },
                "target": {
                  "block": "c8fdb023-d458-4657-899c-5749a256be09",
                  "port": "sel0"
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
        "x": -46,
        "y": -249
      },
      "zoom": 1
    }
  }
}