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
          "id": "0e15c0dc-d720-4700-bff5-0ff5ccffe1be",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "6_000_000",
            "local": false
          },
          "position": {
            "x": 248,
            "y": -32
          }
        },
        {
          "id": "39fb7303-c75f-4a3d-bee6-0086727a6ba3",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": 464,
            "y": 112
          }
        },
        {
          "id": "2741152a-6729-4603-b5fa-081223b48f16",
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
            "x": 48,
            "y": 120
          }
        },
        {
          "id": "479d514a-3df0-494c-920f-58e9405103c1",
          "type": "div_M",
          "position": {
            "x": 240,
            "y": 120
          }
        },
        {
          "id": "2070b255-8ee9-48e1-ab6d-36a0ecc5b452",
          "type": "basic.output",
          "data": {
            "name": "out",
            "range": "[5:0]",
            "pins": [
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
            "x": 760,
            "y": 192
          }
        },
        {
          "id": "3aa5c135-e534-4fa7-b83b-f90d59131958",
          "type": "basic.input",
          "data": {
            "name": "ena",
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
            "y": 232
          }
        },
        {
          "id": "a85e03c0-d678-42e7-8a5e-cebe090ddd00",
          "type": "MAX_Counter_rst",
          "position": {
            "x": 416,
            "y": 256
          }
        },
        {
          "id": "f8f4d407-3845-4973-b78d-d9937b97c245",
          "type": "basic.input",
          "data": {
            "name": "rst",
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
            "y": 304
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2741152a-6729-4603-b5fa-081223b48f16",
            "port": "out"
          },
          "target": {
            "block": "479d514a-3df0-494c-920f-58e9405103c1",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          }
        },
        {
          "source": {
            "block": "0e15c0dc-d720-4700-bff5-0ff5ccffe1be",
            "port": "constant-out"
          },
          "target": {
            "block": "479d514a-3df0-494c-920f-58e9405103c1",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "479d514a-3df0-494c-920f-58e9405103c1",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "a85e03c0-d678-42e7-8a5e-cebe090ddd00",
            "port": "b7cfac87-9a5d-4043-99bb-9b09c06649d9"
          }
        },
        {
          "source": {
            "block": "3aa5c135-e534-4fa7-b83b-f90d59131958",
            "port": "out"
          },
          "target": {
            "block": "a85e03c0-d678-42e7-8a5e-cebe090ddd00",
            "port": "ccc7b60f-c270-4d47-9ca5-10ccf23bbea4"
          }
        },
        {
          "source": {
            "block": "f8f4d407-3845-4973-b78d-d9937b97c245",
            "port": "out"
          },
          "target": {
            "block": "a85e03c0-d678-42e7-8a5e-cebe090ddd00",
            "port": "e3381038-f8a3-4630-bb40-6999d9e9ca0c"
          }
        },
        {
          "source": {
            "block": "39fb7303-c75f-4a3d-bee6-0086727a6ba3",
            "port": "constant-out"
          },
          "target": {
            "block": "a85e03c0-d678-42e7-8a5e-cebe090ddd00",
            "port": "96aa78b8-04d9-4bbe-b82a-9a959a0e6ba7"
          }
        },
        {
          "source": {
            "block": "a85e03c0-d678-42e7-8a5e-cebe090ddd00",
            "port": "47bee272-6590-4de1-add6-3d081a7a5ef2"
          },
          "target": {
            "block": "2070b255-8ee9-48e1-ab6d-36a0ecc5b452",
            "port": "in"
          },
          "size": 6
        }
      ]
    },
    "deps": {
      "div_M": {
        "version": "1.0",
        "package": {
          "name": "Maiztasun zatitzailea M",
          "version": "1.0",
          "description": "M maiztasun zatitzailearen balioa sartu M konstantean",
          "author": "Lorea",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "52378f47-853e-46bb-b0ef-84acc901be83",
                "type": "basic.constant",
                "data": {
                  "name": "M",
                  "value": "12_000_000",
                  "local": false
                },
                "position": {
                  "x": 528,
                  "y": 72
                }
              },
              {
                "id": "e1dedba2-0a10-4ec8-9e9b-c8ffe8d01b9c",
                "type": "basic.code",
                "data": {
                  "code": "//--M Maiztasun zatitzailea\n\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "params": [
                    {
                      "name": "M"
                    }
                  ],
                  "ports": {
                    "in": [
                      {
                        "name": "clk"
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
                  "x": 384,
                  "y": 216
                }
              },
              {
                "id": "6b532ccd-59eb-4acc-98ce-a44415d0da81",
                "type": "basic.input",
                "data": {
                  "name": "clk"
                },
                "position": {
                  "x": 184,
                  "y": 312
                }
              },
              {
                "id": "b669f922-036a-40e5-b4de-a6809cf99675",
                "type": "basic.output",
                "data": {
                  "name": "clk_out"
                },
                "position": {
                  "x": 864,
                  "y": 312
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "52378f47-853e-46bb-b0ef-84acc901be83",
                  "port": "constant-out"
                },
                "target": {
                  "block": "e1dedba2-0a10-4ec8-9e9b-c8ffe8d01b9c",
                  "port": "M"
                }
              },
              {
                "source": {
                  "block": "6b532ccd-59eb-4acc-98ce-a44415d0da81",
                  "port": "out"
                },
                "target": {
                  "block": "e1dedba2-0a10-4ec8-9e9b-c8ffe8d01b9c",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "e1dedba2-0a10-4ec8-9e9b-c8ffe8d01b9c",
                  "port": "clk_out"
                },
                "target": {
                  "block": "b669f922-036a-40e5-b4de-a6809cf99675",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -167.525,
              "y": -74.1416
            },
            "zoom": 1.301
          }
        }
      },
      "MAX_Counter_rst": {
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
                "id": "96aa78b8-04d9-4bbe-b82a-9a959a0e6ba7",
                "type": "basic.constant",
                "data": {
                  "name": "MAX",
                  "value": "5",
                  "local": false
                },
                "position": {
                  "x": 480,
                  "y": 88
                }
              },
              {
                "id": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
                "type": "basic.code",
                "data": {
                  "code": "// Counter 4 bit\n\nreg c;\nalways @(posedge clk) begin\n  if ((rst == 1) || (c == MAX))\n    c <= 0;\n  else if ((ena == 1) && (c < MAX))\n    c <= c + 1;\nend",
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
                        "name": "ena"
                      },
                      {
                        "name": "rst"
                      }
                    ],
                    "out": [
                      {
                        "name": "c",
                        "range": "[5:0]",
                        "size": 6
                      }
                    ]
                  }
                },
                "position": {
                  "x": 336,
                  "y": 240
                }
              },
              {
                "id": "b7cfac87-9a5d-4043-99bb-9b09c06649d9",
                "type": "basic.input",
                "data": {
                  "name": "clk"
                },
                "position": {
                  "x": 152,
                  "y": 248
                }
              },
              {
                "id": "ccc7b60f-c270-4d47-9ca5-10ccf23bbea4",
                "type": "basic.input",
                "data": {
                  "name": "ena"
                },
                "position": {
                  "x": 152,
                  "y": 336
                }
              },
              {
                "id": "47bee272-6590-4de1-add6-3d081a7a5ef2",
                "type": "basic.output",
                "data": {
                  "name": "c",
                  "range": "[5:0]",
                  "size": 6
                },
                "position": {
                  "x": 816,
                  "y": 336
                }
              },
              {
                "id": "e3381038-f8a3-4630-bb40-6999d9e9ca0c",
                "type": "basic.input",
                "data": {
                  "name": "rst"
                },
                "position": {
                  "x": 152,
                  "y": 424
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "b7cfac87-9a5d-4043-99bb-9b09c06649d9",
                  "port": "out"
                },
                "target": {
                  "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "ccc7b60f-c270-4d47-9ca5-10ccf23bbea4",
                  "port": "out"
                },
                "target": {
                  "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
                  "port": "ena"
                }
              },
              {
                "source": {
                  "block": "e3381038-f8a3-4630-bb40-6999d9e9ca0c",
                  "port": "out"
                },
                "target": {
                  "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
                  "port": "rst"
                }
              },
              {
                "source": {
                  "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
                  "port": "c"
                },
                "target": {
                  "block": "47bee272-6590-4de1-add6-3d081a7a5ef2",
                  "port": "in"
                },
                "size": 6
              },
              {
                "source": {
                  "block": "96aa78b8-04d9-4bbe-b82a-9a959a0e6ba7",
                  "port": "constant-out"
                },
                "target": {
                  "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
                  "port": "MAX"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 191,
              "y": 7
            },
            "zoom": 1
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": 8,
        "y": 67
      },
      "zoom": 1
    }
  }
}