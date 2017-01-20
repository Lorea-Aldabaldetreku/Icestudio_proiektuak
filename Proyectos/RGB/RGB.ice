{
  "image": "",
  "state": {
    "pan": {
      "x": 72.3606854083757,
      "y": -46.591407068768135
    },
    "zoom": 1.0797762184147477
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "46f51b57-5620-4237-b0d2-6198cfd53045",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": 24,
          "y": 296
        }
      },
      {
        "id": "4a34bd48-3267-4d3a-ad55-25c361f0cfa6",
        "type": "basic.output",
        "data": {
          "label": "RGB_red",
          "pin": {
            "name": "D13",
            "value": "144"
          }
        },
        "position": {
          "x": 1096,
          "y": 296
        }
      },
      {
        "id": "d3c89fdd-7602-4694-8da9-52a8e7b01ed4",
        "type": "basic.output",
        "data": {
          "label": "RGB_green",
          "pin": {
            "name": "D12",
            "value": "143"
          }
        },
        "position": {
          "x": 1096,
          "y": 448
        }
      },
      {
        "id": "5b93b851-3222-4dea-93a7-545f52681d71",
        "type": "basic.output",
        "data": {
          "label": "RGB_blue",
          "pin": {
            "name": "D11",
            "value": "142"
          }
        },
        "position": {
          "x": 1096,
          "y": 136
        }
      },
      {
        "id": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
        "type": "2bit-Counter",
        "data": {},
        "position": {
          "x": 448,
          "y": 296
        }
      },
      {
        "id": "e03e4f80-8f00-4304-9afb-dfe33c0d92a1",
        "type": "logic.gate.not",
        "data": {},
        "position": {
          "x": 728,
          "y": 464
        }
      },
      {
        "id": "b225c0a9-0c4e-4b8b-a1ae-8e235aaf221c",
        "type": "logic.gate.not",
        "data": {},
        "position": {
          "x": 728,
          "y": 120
        }
      },
      {
        "id": "4d3a2523-32fa-44d0-a541-419e5e7fdf4a",
        "type": "logic.gate.or",
        "data": {},
        "position": {
          "x": 912,
          "y": 296
        }
      },
      {
        "id": "d91adff3-bca4-4f03-97f8-8e4b9c090dbd",
        "type": "logic.gate.or",
        "data": {},
        "position": {
          "x": 912,
          "y": 136
        }
      },
      {
        "id": "78fb2baf-aee2-4771-a610-5edaed16ef5a",
        "type": "logic.gate.or",
        "data": {},
        "position": {
          "x": 904,
          "y": 448
        }
      },
      {
        "id": "be6137e7-65e0-4702-9776-b831690fb68b",
        "type": "Delay-500ms",
        "data": {},
        "position": {
          "x": 200,
          "y": 296
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "4d3a2523-32fa-44d0-a541-419e5e7fdf4a",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        }
      },
      {
        "source": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "4d3a2523-32fa-44d0-a541-419e5e7fdf4a",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        }
      },
      {
        "source": {
          "block": "4d3a2523-32fa-44d0-a541-419e5e7fdf4a",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "4a34bd48-3267-4d3a-ad55-25c361f0cfa6",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "e03e4f80-8f00-4304-9afb-dfe33c0d92a1",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        }
      },
      {
        "source": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "78fb2baf-aee2-4771-a610-5edaed16ef5a",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        },
        "vertices": [
          {
            "x": 832,
            "y": 384
          }
        ]
      },
      {
        "source": {
          "block": "e03e4f80-8f00-4304-9afb-dfe33c0d92a1",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "78fb2baf-aee2-4771-a610-5edaed16ef5a",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        }
      },
      {
        "source": {
          "block": "78fb2baf-aee2-4771-a610-5edaed16ef5a",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "d3c89fdd-7602-4694-8da9-52a8e7b01ed4",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "b225c0a9-0c4e-4b8b-a1ae-8e235aaf221c",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        }
      },
      {
        "source": {
          "block": "b225c0a9-0c4e-4b8b-a1ae-8e235aaf221c",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "d91adff3-bca4-4f03-97f8-8e4b9c090dbd",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        }
      },
      {
        "source": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "d91adff3-bca4-4f03-97f8-8e4b9c090dbd",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        },
        "vertices": [
          {
            "x": 768,
            "y": 240
          }
        ]
      },
      {
        "source": {
          "block": "d91adff3-bca4-4f03-97f8-8e4b9c090dbd",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "5b93b851-3222-4dea-93a7-545f52681d71",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "46f51b57-5620-4237-b0d2-6198cfd53045",
          "port": "out"
        },
        "target": {
          "block": "be6137e7-65e0-4702-9776-b831690fb68b",
          "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
        }
      },
      {
        "source": {
          "block": "be6137e7-65e0-4702-9776-b831690fb68b",
          "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
        },
        "target": {
          "block": "95bde12a-3c61-4dee-8c2b-b76d9a2c9217",
          "port": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d"
        }
      }
    ]
  },
  "deps": {
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
    "logic.gate.or": {
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
              "y": 80
            }
          },
          {
            "id": "97b51945-d716-4b6c-9db9-970d08541249",
            "type": "basic.input",
            "data": {
              "label": ""
            },
            "position": {
              "x": 64,
              "y": 208
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
            "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
            "type": "basic.code",
            "data": {
              "code": "// OR logic gate\n\nassign c = a | b;",
              "ports": {
                "in": [
                  "a",
                  "b"
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
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "a"
            }
          },
          {
            "source": {
              "block": "97b51945-d716-4b6c-9db9-970d08541249",
              "port": "out"
            },
            "target": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "b"
            }
          },
          {
            "source": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
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
      "image": "resources/images/or.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "Delay-500ms": {
      "image": "",
      "state": {
        "pan": {
          "x": -0.000018294353623105053,
          "y": 0.14129806496099206
        },
        "zoom": 0.9999999999999574
      },
      "graph": {
        "blocks": [
          {
            "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 6_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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