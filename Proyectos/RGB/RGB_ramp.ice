{
  "image": "",
  "state": {
    "pan": {
      "x": 451.0000005229168,
      "y": 152.99999508136708
    },
    "zoom": 1.000000019367291
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
        "type": "bit.1",
        "data": {},
        "position": {
          "x": 8,
          "y": -24
        }
      },
      {
        "id": "e187c44d-b39b-4169-8c43-4b042c42a930",
        "type": "basic.output",
        "data": {
          "label": "RGB_red",
          "pin": {
            "name": "D13",
            "value": "144"
          }
        },
        "position": {
          "x": 720,
          "y": -8
        }
      },
      {
        "id": "d6ffd4cd-706b-4fb8-b178-cc54bccec9e9",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": -400,
          "y": -96
        }
      },
      {
        "id": "e27f8454-2375-47b1-9c3e-b22eec513441",
        "type": "basic.output",
        "data": {
          "label": "RGB_blue",
          "pin": {
            "name": "D11",
            "value": "142"
          }
        },
        "position": {
          "x": 608,
          "y": 496
        }
      },
      {
        "id": "a5cf69fa-293a-4145-85aa-9527f5bfc665",
        "type": "basic.output",
        "data": {
          "label": "RGB_green",
          "pin": {
            "name": "D12",
            "value": "143"
          }
        },
        "position": {
          "x": 664,
          "y": 224
        }
      },
      {
        "id": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
        "type": "logic.combinational.mux_4_1",
        "data": {},
        "position": {
          "x": 528,
          "y": -72
        }
      },
      {
        "id": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
        "type": "logic.combinational.mux_4_1",
        "data": {},
        "position": {
          "x": 480,
          "y": 160
        }
      },
      {
        "id": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
        "type": "logic.combinational.mux_4_1",
        "data": {},
        "position": {
          "x": 424,
          "y": 432
        }
      },
      {
        "id": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
        "type": "2bit-Counter",
        "data": {},
        "position": {
          "x": 0,
          "y": 560
        }
      },
      {
        "id": "8cd9592a-47fb-4c4a-820a-b2113d214cce",
        "type": "ANALOG_ramp",
        "data": {},
        "position": {
          "x": -48,
          "y": -96
        }
      },
      {
        "id": "8b3878b7-18de-4fc9-abc9-8ff71672a328",
        "type": "Delay-7s",
        "data": {},
        "position": {
          "x": -216,
          "y": 560
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
        },
        "target": {
          "block": "e187c44d-b39b-4169-8c43-4b042c42a930",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
        },
        "target": {
          "block": "a5cf69fa-293a-4145-85aa-9527f5bfc665",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
        },
        "target": {
          "block": "e27f8454-2375-47b1-9c3e-b22eec513441",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
        }
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
        }
      },
      {
        "source": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "a014971e-5470-490b-9058-b4b00f2dd125"
        }
      },
      {
        "source": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
        }
      },
      {
        "source": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "a014971e-5470-490b-9058-b4b00f2dd125"
        },
        "vertices": [
          {
            "x": 304,
            "y": 368
          }
        ]
      },
      {
        "source": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
        },
        "vertices": [
          {
            "x": 280,
            "y": 320
          }
        ]
      },
      {
        "source": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "a014971e-5470-490b-9058-b4b00f2dd125"
        },
        "vertices": [
          {
            "x": 256,
            "y": 120
          }
        ]
      },
      {
        "source": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
        },
        "vertices": [
          {
            "x": 232,
            "y": 64
          }
        ]
      },
      {
        "source": {
          "block": "8b3878b7-18de-4fc9-abc9-8ff71672a328",
          "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
        },
        "target": {
          "block": "43e07bd0-247d-42b7-bf29-41b2b9f912d4",
          "port": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d"
        }
      },
      {
        "source": {
          "block": "d6ffd4cd-706b-4fb8-b178-cc54bccec9e9",
          "port": "out"
        },
        "target": {
          "block": "8cd9592a-47fb-4c4a-820a-b2113d214cce",
          "port": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b"
        }
      },
      {
        "source": {
          "block": "d6ffd4cd-706b-4fb8-b178-cc54bccec9e9",
          "port": "out"
        },
        "target": {
          "block": "8b3878b7-18de-4fc9-abc9-8ff71672a328",
          "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
        }
      },
      {
        "source": {
          "block": "8cd9592a-47fb-4c4a-820a-b2113d214cce",
          "port": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872"
        },
        "target": {
          "block": "3b5557aa-fa4f-473b-a43f-59a6f5af4d03",
          "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
        }
      },
      {
        "source": {
          "block": "8cd9592a-47fb-4c4a-820a-b2113d214cce",
          "port": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872"
        },
        "target": {
          "block": "d0df62a3-2b15-45a1-a7ec-9ce752500d9a",
          "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
        },
        "vertices": [
          {
            "x": 208,
            "y": -16
          }
        ]
      },
      {
        "source": {
          "block": "8cd9592a-47fb-4c4a-820a-b2113d214cce",
          "port": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872"
        },
        "target": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
        },
        "vertices": [
          {
            "x": 176,
            "y": -24
          }
        ]
      },
      {
        "source": {
          "block": "7e5ccae0-006d-421f-9464-cd38fb4ad4af",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "a9bcb6d1-ad29-4e9a-8dbf-b0033f074aa9",
          "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
        },
        "vertices": [
          {
            "x": 328,
            "y": 160
          }
        ]
      }
    ]
  },
  "deps": {
    "bit.1": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 1\n\nassign v = 1'b1;",
              "ports": {
                "in": [],
                "out": [
                  "v"
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
              "label": ""
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
      "image": "resources/images/1.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "logic.combinational.mux_4_1": {
      "image": "resources/images/mux.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 0.9999999735145888
      },
      "graph": {
        "blocks": [
          {
            "id": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
            "type": "basic.code",
            "data": {
              "code": "reg _o;\nwire [1:0] _sel;\n\nassign _sel = {sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
              "ports": {
                "in": [
                  "in0",
                  "in1",
                  "in2",
                  "in3",
                  "sel0",
                  "sel1"
                ],
                "out": [
                  "o"
                ]
              }
            },
            "position": {
              "x": 296,
              "y": 152
            }
          },
          {
            "id": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
            "type": "basic.input",
            "data": {
              "label": "i0"
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
              "label": "i1"
            },
            "position": {
              "x": 40,
              "y": 104
            }
          },
          {
            "id": "67ed5e09-486d-4f97-929f-aefea9c43951",
            "type": "basic.input",
            "data": {
              "label": "i2"
            },
            "position": {
              "x": 40,
              "y": 184
            }
          },
          {
            "id": "8be9cded-6d06-4b23-b73c-94c7ff311dbc",
            "type": "basic.input",
            "data": {
              "label": "i3"
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
              "label": "sel0"
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
              "label": "sel1"
            },
            "position": {
              "x": 40,
              "y": 400
            }
          },
          {
            "id": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
            "type": "basic.output",
            "data": {
              "label": "o"
            },
            "position": {
              "x": 776,
              "y": 248
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
      "deps": {}
    },
    "2bit-Counter": {
      "image": "",
      "state": {
        "pan": {
          "x": 588.7251715139968,
          "y": 271.10326976606086
        },
        "zoom": 0.7943261915791214
      },
      "graph": {
        "blocks": [
          {
            "id": "880040b3-7a02-466c-b703-64efd708ded5",
            "type": "basic.code",
            "data": {
              "code": "// Counter 2 bit\n\nreg [1:0] counter;\n\nalways @(posedge clk)\n  counter <= counter + 1;\n\nassign c0 = counter[0];\nassign c1 = counter[1];\n",
              "ports": {
                "in": [
                  "clk"
                ],
                "out": [
                  "c0",
                  "c1"
                ]
              }
            },
            "position": {
              "x": -384,
              "y": -104
            }
          },
          {
            "id": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d",
            "type": "basic.input",
            "data": {
              "label": "clk"
            },
            "position": {
              "x": -568,
              "y": -8
            }
          },
          {
            "id": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
            "type": "basic.output",
            "data": {
              "label": "c0"
            },
            "position": {
              "x": 96,
              "y": -72
            }
          },
          {
            "id": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
            "type": "basic.output",
            "data": {
              "label": "c1"
            },
            "position": {
              "x": 96,
              "y": 56
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d",
              "port": "out"
            },
            "target": {
              "block": "880040b3-7a02-466c-b703-64efd708ded5",
              "port": "clk"
            }
          },
          {
            "source": {
              "block": "880040b3-7a02-466c-b703-64efd708ded5",
              "port": "c0"
            },
            "target": {
              "block": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "880040b3-7a02-466c-b703-64efd708ded5",
              "port": "c1"
            },
            "target": {
              "block": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "ANALOG_ramp": {
      "image": "",
      "state": {
        "pan": {
          "x": 33.12434624226793,
          "y": -139.72264818317535
        },
        "zoom": 0.7778770450330721
      },
      "graph": {
        "blocks": [
          {
            "id": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
            "type": "basic.input",
            "data": {
              "label": "clk"
            },
            "position": {
              "x": 16,
              "y": 600
            }
          },
          {
            "id": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
            "type": "basic.code",
            "data": {
              "code": "reg [7:0] Q=0;\n\nalways @(posedge CLK)\n    Q <= Q + 1;\n\nassign {Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0} = Q;",
              "ports": {
                "in": [
                  "CLK"
                ],
                "out": [
                  "Q0",
                  "Q1",
                  "Q2",
                  "Q3",
                  "Q4",
                  "Q5",
                  "Q6",
                  "Q7"
                ]
              }
            },
            "position": {
              "x": 520,
              "y": 248
            }
          },
          {
            "id": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
            "type": "basic.code",
            "data": {
              "code": "reg [7:0] Q=0;\n\nalways @(posedge CLK)\n    Q <= Q + 1;\n\nassign {Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0} = Q;",
              "ports": {
                "in": [
                  "CLK"
                ],
                "out": [
                  "Q0",
                  "Q1",
                  "Q2",
                  "Q3",
                  "Q4",
                  "Q5",
                  "Q6",
                  "Q7"
                ]
              }
            },
            "position": {
              "x": 520,
              "y": 504
            }
          },
          {
            "id": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
            "type": "basic.code",
            "data": {
              "code": "// Comparator 8 bits.\nassign L = ({a7,a6,a5,a4,a3,a2,a1,a0} <  {b7,b6,b5,b4,b3,b2,b1,b0});\nassign G = ({a7,a6,a5,a4,a3,a2,a1,a0} >  {b7,b6,b5,b4,b3,b2,b1,b0});\nassign E = ({a7,a6,a5,a4,a3,a2,a1,a0} == {b7,b6,b5,b4,b3,b2,b1,b0});",
              "ports": {
                "in": [
                  "a0",
                  "a1",
                  "a2",
                  "a3",
                  "a4",
                  "a5",
                  "a6",
                  "a7",
                  "b0",
                  "b1",
                  "b2",
                  "b3",
                  "b4",
                  "b5",
                  "b6",
                  "b7"
                ],
                "out": [
                  "G",
                  "E",
                  "L"
                ]
              }
            },
            "position": {
              "x": 1192,
              "y": 384
            }
          },
          {
            "id": "0ae6d51a-eb22-4169-9af2-50ecd03c531c",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 1688,
              "y": 568
            }
          },
          {
            "id": "6f14965e-4504-46ea-ad6a-5c62642e9b43",
            "type": "100Hz",
            "data": {},
            "position": {
              "x": 296,
              "y": 344
            }
          },
          {
            "id": "1e571c6f-db20-4316-ae28-0d06aa588a68",
            "type": "1MHz",
            "data": {},
            "position": {
              "x": 296,
              "y": 600
            }
          },
          {
            "id": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872",
            "type": "basic.output",
            "data": {
              "label": "pwm"
            },
            "position": {
              "x": 1864,
              "y": 568
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q7"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a7"
            },
            "vertices": [
              {
                "x": 968,
                "y": 504
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q6"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a6"
            },
            "vertices": [
              {
                "x": 984,
                "y": 472
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q5"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a5"
            },
            "vertices": [
              {
                "x": 1000,
                "y": 448
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q4"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a4"
            },
            "vertices": [
              {
                "x": 1016,
                "y": 432
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q3"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a3"
            },
            "vertices": [
              {
                "x": 1032,
                "y": 416
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q2"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a2"
            },
            "vertices": [
              {
                "x": 1048,
                "y": 392
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q1"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a1"
            },
            "vertices": [
              {
                "x": 1064,
                "y": 352
              }
            ]
          },
          {
            "source": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "Q0"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "a0"
            },
            "vertices": [
              {
                "x": 1080,
                "y": 336
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q0"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b0"
            }
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q1"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b1"
            },
            "vertices": [
              {
                "x": 968,
                "y": 544
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q2"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b2"
            },
            "vertices": [
              {
                "x": 984,
                "y": 568
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q3"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b3"
            },
            "vertices": [
              {
                "x": 1000,
                "y": 600
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q4"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b4"
            },
            "vertices": [
              {
                "x": 1016,
                "y": 616
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q5"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b5"
            },
            "vertices": [
              {
                "x": 1032,
                "y": 648
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q6"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b6"
            },
            "vertices": [
              {
                "x": 1048,
                "y": 672
              }
            ]
          },
          {
            "source": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "Q7"
            },
            "target": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "b7"
            },
            "vertices": [
              {
                "x": 1064,
                "y": 680
              }
            ]
          },
          {
            "source": {
              "block": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
              "port": "L"
            },
            "target": {
              "block": "0ae6d51a-eb22-4169-9af2-50ecd03c531c",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            }
          },
          {
            "source": {
              "block": "6f14965e-4504-46ea-ad6a-5c62642e9b43",
              "port": "41449406-f581-4507-a0fa-f6a1acf6f65d"
            },
            "target": {
              "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
              "port": "CLK"
            }
          },
          {
            "source": {
              "block": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
              "port": "out"
            },
            "target": {
              "block": "6f14965e-4504-46ea-ad6a-5c62642e9b43",
              "port": "7967b348-34d1-48ed-a1ff-13ffa20be33e"
            },
            "vertices": [
              {
                "x": 152,
                "y": 528
              }
            ]
          },
          {
            "source": {
              "block": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
              "port": "out"
            },
            "target": {
              "block": "1e571c6f-db20-4316-ae28-0d06aa588a68",
              "port": "c76228fb-a20d-44b5-9543-b52c57b251c4"
            }
          },
          {
            "source": {
              "block": "1e571c6f-db20-4316-ae28-0d06aa588a68",
              "port": "0f148220-ddc8-469c-97fc-ecd11645d3b1"
            },
            "target": {
              "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
              "port": "CLK"
            }
          },
          {
            "source": {
              "block": "0ae6d51a-eb22-4169-9af2-50ecd03c531c",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872",
              "port": "in"
            }
          }
        ]
      },
      "deps": {
        "logic.gate.not": {
          "graph": {
            "blocks": [
              {
                "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "type": "basic.input",
                "data": {
                  "label": ""
                },
                "position": {
                  "x": 64,
                  "y": 144
                }
              },
              {
                "id": "664caf9e-5f40-4df4-800a-b626af702e62",
                "type": "basic.output",
                "data": {
                  "label": ""
                },
                "position": {
                  "x": 752,
                  "y": 144
                }
              },
              {
                "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "type": "basic.code",
                "data": {
                  "code": "// NOT logic gate\n\nassign c = ~ a;",
                  "ports": {
                    "in": [
                      "a"
                    ],
                    "out": [
                      "c"
                    ]
                  }
                },
                "position": {
                  "x": 256,
                  "y": 48
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
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "a"
                }
              },
              {
                "source": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
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
          "image": "resources/images/not.svg",
          "state": {
            "pan": {
              "x": 0,
              "y": 0
            },
            "zoom": 1
          }
        },
        "100Hz": {
          "image": "",
          "state": {
            "pan": {
              "x": 0,
              "y": 0
            },
            "zoom": 0.9999999891834782
          },
          "graph": {
            "blocks": [
              {
                "id": "a9736169-04fe-4fc8-a886-b218650bca6f",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 120_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "ports": {
                    "in": [
                      "clk_in"
                    ],
                    "out": [
                      "clk_out"
                    ]
                  }
                },
                "position": {
                  "x": 416,
                  "y": 112
                }
              },
              {
                "id": "7967b348-34d1-48ed-a1ff-13ffa20be33e",
                "type": "basic.input",
                "data": {
                  "label": "12MHz"
                },
                "position": {
                  "x": 216,
                  "y": 208
                }
              },
              {
                "id": "41449406-f581-4507-a0fa-f6a1acf6f65d",
                "type": "basic.output",
                "data": {
                  "label": "100Hz"
                },
                "position": {
                  "x": 896,
                  "y": 208
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "7967b348-34d1-48ed-a1ff-13ffa20be33e",
                  "port": "out"
                },
                "target": {
                  "block": "a9736169-04fe-4fc8-a886-b218650bca6f",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "a9736169-04fe-4fc8-a886-b218650bca6f",
                  "port": "clk_out"
                },
                "target": {
                  "block": "41449406-f581-4507-a0fa-f6a1acf6f65d",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {}
        },
        "1MHz": {
          "image": "",
          "state": {
            "pan": {
              "x": 0,
              "y": 0
            },
            "zoom": 0.9999999849438067
          },
          "graph": {
            "blocks": [
              {
                "id": "c76228fb-a20d-44b5-9543-b52c57b251c4",
                "type": "basic.input",
                "data": {
                  "label": "Clock"
                },
                "position": {
                  "x": 56,
                  "y": 128
                }
              },
              {
                "id": "0f148220-ddc8-469c-97fc-ecd11645d3b1",
                "type": "basic.output",
                "data": {
                  "label": "Freq"
                },
                "position": {
                  "x": 728,
                  "y": 128
                }
              },
              {
                "id": "ec3ed320-bad3-4cf7-b42f-3fd03ed59740",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 12;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\nbegin\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\nend\n\nassign clk_out = divcounter[N - 1];",
                  "ports": {
                    "in": [
                      "clk_in"
                    ],
                    "out": [
                      "clk_out"
                    ]
                  }
                },
                "position": {
                  "x": 248,
                  "y": 32
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "c76228fb-a20d-44b5-9543-b52c57b251c4",
                  "port": "out"
                },
                "target": {
                  "block": "ec3ed320-bad3-4cf7-b42f-3fd03ed59740",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "ec3ed320-bad3-4cf7-b42f-3fd03ed59740",
                  "port": "clk_out"
                },
                "target": {
                  "block": "0f148220-ddc8-469c-97fc-ecd11645d3b1",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {}
        }
      }
    },
    "Delay-7s": {
      "image": "",
      "state": {
        "pan": {
          "x": -0.000018294353623105053,
          "y": 0.14129806496099206
        },
        "zoom": 1.000000019367291
      },
      "graph": {
        "blocks": [
          {
            "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 84_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
              "ports": {
                "in": [
                  "clk_in"
                ],
                "out": [
                  "clk_out"
                ]
              }
            },
            "position": {
              "x": 352,
              "y": 168
            }
          },
          {
            "id": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f",
            "type": "basic.input",
            "data": {
              "label": "in"
            },
            "position": {
              "x": 176,
              "y": 264
            }
          },
          {
            "id": "7dd2f708-98ea-4b91-9e43-2a62089d9229",
            "type": "basic.output",
            "data": {
              "label": "out"
            },
            "position": {
              "x": 848,
              "y": 264
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f",
              "port": "out"
            },
            "target": {
              "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
              "port": "clk_in"
            }
          },
          {
            "source": {
              "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
              "port": "clk_out"
            },
            "target": {
              "block": "7dd2f708-98ea-4b91-9e43-2a62089d9229",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    }
  }
}