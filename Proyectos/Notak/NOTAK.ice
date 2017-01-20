{
  "image": "",
  "state": {
    "pan": {
      "x": 525.1674699372406,
      "y": 254.85104768235055
    },
    "zoom": 1.0592549331016814
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
        "type": "basic.input",
        "data": {
          "label": "in",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": -480,
          "y": -16
        }
      },
      {
        "id": "902582b1-d3fa-4b04-98f9-f1e087ac7558",
        "type": "MI_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": -56
        }
      },
      {
        "id": "15ec1af7-1761-490f-a55a-a84a0856da01",
        "type": "3bit-Counter",
        "data": {},
        "position": {
          "x": -56,
          "y": 400
        }
      },
      {
        "id": "58089a09-fbc4-42b8-abef-7df3c0b5972a",
        "type": "LA_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": 160
        }
      },
      {
        "id": "8ec093c8-ac2c-4155-8bc3-5704983f3af0",
        "type": "basic.output",
        "data": {
          "label": "out",
          "pin": {
            "name": "D13",
            "value": "144"
          }
        },
        "position": {
          "x": 464,
          "y": 40
        }
      },
      {
        "id": "f29b7244-aa26-4302-a6a3-d4488e4d8fc0",
        "type": "RE_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": -136
        }
      },
      {
        "id": "eafe1cf4-6bc0-4c3f-a802-5d18ef7c9965",
        "type": "Do_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": -216
        }
      },
      {
        "id": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
        "type": "Mux-81",
        "data": {},
        "position": {
          "x": 272,
          "y": -104
        }
      },
      {
        "id": "56a16e2c-9d79-4889-9440-4c64ccab17c8",
        "type": "FA_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": 16
        }
      },
      {
        "id": "d97fbb4e-5f6f-4210-8a79-58616377989d",
        "type": "SOL_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": 88
        }
      },
      {
        "id": "0a7b38a5-2fac-4e97-9c0a-2a0d2c4c5e7a",
        "type": "SI_4nota",
        "data": {},
        "position": {
          "x": -56,
          "y": 232
        }
      },
      {
        "id": "14721cb2-f455-4053-84f3-e6fbba4b11ec",
        "type": "bit.0",
        "data": {},
        "position": {
          "x": -56,
          "y": 328
        }
      },
      {
        "id": "21ebe844-e062-47e7-9959-fd4bdbcf74b8",
        "type": "Delay-250ms",
        "data": {},
        "position": {
          "x": -296,
          "y": 416
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "15ec1af7-1761-490f-a55a-a84a0856da01",
          "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "8f6b18f1-8f5d-485e-94ea-93c62c98695d"
        },
        "vertices": [
          {
            "x": 192,
            "y": 192
          }
        ]
      },
      {
        "source": {
          "block": "15ec1af7-1761-490f-a55a-a84a0856da01",
          "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "7f52e35b-7756-4dac-9497-d9266de5adf3"
        },
        "vertices": [
          {
            "x": 216,
            "y": 216
          }
        ]
      },
      {
        "source": {
          "block": "15ec1af7-1761-490f-a55a-a84a0856da01",
          "port": "82a3ae39-96ac-425c-8e84-d67535b309d2"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "354e3469-c33c-469a-b23f-0997fc1ba923"
        }
      },
      {
        "source": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "0ae4cda2-1003-44b3-9d40-a3d2261d2775"
        },
        "target": {
          "block": "8ec093c8-ac2c-4155-8bc3-5704983f3af0",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "eafe1cf4-6bc0-4c3f-a802-5d18ef7c9965",
          "port": "cb230da2-5f04-4475-8d6c-dbc2c48777bd"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "23d46aff-e1fb-4bad-b13b-efc82e6636d7"
        },
        "vertices": [
          {
            "x": 256,
            "y": -176
          }
        ]
      },
      {
        "source": {
          "block": "f29b7244-aa26-4302-a6a3-d4488e4d8fc0",
          "port": "cb230da2-5f04-4475-8d6c-dbc2c48777bd"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "6e7f360c-d2e6-4cc3-9bba-7dfa2be5f466"
        }
      },
      {
        "source": {
          "block": "902582b1-d3fa-4b04-98f9-f1e087ac7558",
          "port": "cb230da2-5f04-4475-8d6c-dbc2c48777bd"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "c8c3d737-1207-4504-8b6c-3f6fd008d8f5"
        }
      },
      {
        "source": {
          "block": "56a16e2c-9d79-4889-9440-4c64ccab17c8",
          "port": "cb230da2-5f04-4475-8d6c-dbc2c48777bd"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "505d82ae-2b27-47b7-9d28-ae3d5474dcf9"
        },
        "vertices": [
          {
            "x": 136,
            "y": 16
          }
        ]
      },
      {
        "source": {
          "block": "d97fbb4e-5f6f-4210-8a79-58616377989d",
          "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "2c64bde3-a11e-4a11-9bf0-298532ab6128"
        },
        "vertices": [
          {
            "x": 152,
            "y": 48
          }
        ]
      },
      {
        "source": {
          "block": "58089a09-fbc4-42b8-abef-7df3c0b5972a",
          "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "a83438c5-f405-4833-8c55-de93c4f18afe"
        },
        "vertices": [
          {
            "x": 160,
            "y": 96
          }
        ]
      },
      {
        "source": {
          "block": "0a7b38a5-2fac-4e97-9c0a-2a0d2c4c5e7a",
          "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "821010e3-2d9f-4181-8a80-3a275d741795"
        },
        "vertices": [
          {
            "x": 168,
            "y": 120
          }
        ]
      },
      {
        "source": {
          "block": "14721cb2-f455-4053-84f3-e6fbba4b11ec",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "ed3b4b11-09db-48d1-8ec0-f358c41a131c",
          "port": "acc534fd-6787-4cda-99e0-b6c4e5e0e35f"
        },
        "vertices": [
          {
            "x": 176,
            "y": 152
          }
        ]
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "eafe1cf4-6bc0-4c3f-a802-5d18ef7c9965",
          "port": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "f29b7244-aa26-4302-a6a3-d4488e4d8fc0",
          "port": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "902582b1-d3fa-4b04-98f9-f1e087ac7558",
          "port": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "56a16e2c-9d79-4889-9440-4c64ccab17c8",
          "port": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "d97fbb4e-5f6f-4210-8a79-58616377989d",
          "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "58089a09-fbc4-42b8-abef-7df3c0b5972a",
          "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "0a7b38a5-2fac-4e97-9c0a-2a0d2c4c5e7a",
          "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
        }
      },
      {
        "source": {
          "block": "21ebe844-e062-47e7-9959-fd4bdbcf74b8",
          "port": "f0a3c15d-a5b9-42d6-84d8-d41a6daca92e"
        },
        "target": {
          "block": "15ec1af7-1761-490f-a55a-a84a0856da01",
          "port": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d"
        }
      },
      {
        "source": {
          "block": "94dba7f3-97fa-4d9b-bc5e-b43bd1b324a4",
          "port": "out"
        },
        "target": {
          "block": "21ebe844-e062-47e7-9959-fd4bdbcf74b8",
          "port": "51dfd376-3d97-4aaf-b548-f492cb48a219"
        }
      }
    ]
  },
  "deps": {
    "MI_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": 1576.9547013028478,
          "y": 704.2570461403099
        },
        "zoom": 0.9693590402603149
      },
      "graph": {
        "blocks": [
          {
            "id": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 36_405;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clock)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clock_out = divcounter[N - 1];",
              "ports": {
                "in": [
                  "clock"
                ],
                "out": [
                  "clock_out"
                ]
              }
            },
            "position": {
              "x": -1232,
              "y": -568
            }
          },
          {
            "id": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
            "type": "basic.input",
            "data": {
              "label": "in"
            },
            "position": {
              "x": -1464,
              "y": -472
            }
          },
          {
            "id": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
            "type": "basic.output",
            "data": {
              "label": "out"
            },
            "position": {
              "x": -672,
              "y": -480
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
              "port": "out"
            },
            "target": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock"
            }
          },
          {
            "source": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock_out"
            },
            "target": {
              "block": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "3bit-Counter": {
      "image": "",
      "state": {
        "pan": {
          "x": 618.8893742051678,
          "y": 289.7878112769334
        },
        "zoom": 0.7356396780548399
      },
      "graph": {
        "blocks": [
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
              "x": 104,
              "y": -96
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
              "y": -8
            }
          },
          {
            "id": "1b89a88f-9114-4a97-80aa-87e046c68982",
            "type": "basic.code",
            "data": {
              "code": "// Counter 3 bit\n\nreg [2:0] counter;\n\nalways @(posedge clk)\n  counter <= counter + 1;\n\nassign c0 = counter[0];\nassign c1 = counter[1];\nassign c2 = counter[2];",
              "ports": {
                "in": [
                  "clk"
                ],
                "out": [
                  "c0",
                  "c1",
                  "c2"
                ]
              }
            },
            "position": {
              "x": -392,
              "y": -104
            }
          },
          {
            "id": "82a3ae39-96ac-425c-8e84-d67535b309d2",
            "type": "basic.output",
            "data": {
              "label": "c2"
            },
            "position": {
              "x": 96,
              "y": 80
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
              "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
              "port": "clk"
            }
          },
          {
            "source": {
              "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
              "port": "c0"
            },
            "target": {
              "block": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
              "port": "c1"
            },
            "target": {
              "block": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
              "port": "c2"
            },
            "target": {
              "block": "82a3ae39-96ac-425c-8e84-d67535b309d2",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "LA_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": -0.000018294353623105053,
          "y": 0.14129806496099206
        },
        "zoom": 1.000000028981617
      },
      "graph": {
        "blocks": [
          {
            "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 27_273;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
              "x": 856,
              "y": 248
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
    },
    "RE_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": 1576.9547013028478,
          "y": 704.2570461403099
        },
        "zoom": 0.9693590402603149
      },
      "graph": {
        "blocks": [
          {
            "id": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 40_863;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clock)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clock_out = divcounter[N - 1];",
              "ports": {
                "in": [
                  "clock"
                ],
                "out": [
                  "clock_out"
                ]
              }
            },
            "position": {
              "x": -1232,
              "y": -568
            }
          },
          {
            "id": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
            "type": "basic.input",
            "data": {
              "label": "in"
            },
            "position": {
              "x": -1464,
              "y": -472
            }
          },
          {
            "id": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
            "type": "basic.output",
            "data": {
              "label": "out"
            },
            "position": {
              "x": -672,
              "y": -480
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
              "port": "out"
            },
            "target": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock"
            }
          },
          {
            "source": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock_out"
            },
            "target": {
              "block": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "Do_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": 1576.9547013028478,
          "y": 704.2570461403099
        },
        "zoom": 0.9693590402603149
      },
      "graph": {
        "blocks": [
          {
            "id": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 45_867;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clock)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clock_out = divcounter[N - 1];",
              "ports": {
                "in": [
                  "clock"
                ],
                "out": [
                  "clock_out"
                ]
              }
            },
            "position": {
              "x": -1232,
              "y": -568
            }
          },
          {
            "id": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
            "type": "basic.input",
            "data": {
              "label": "in"
            },
            "position": {
              "x": -1464,
              "y": -472
            }
          },
          {
            "id": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
            "type": "basic.output",
            "data": {
              "label": "out"
            },
            "position": {
              "x": -672,
              "y": -480
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
              "port": "out"
            },
            "target": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock"
            }
          },
          {
            "source": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock_out"
            },
            "target": {
              "block": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "Mux-81": {
      "image": "",
      "state": {
        "pan": {
          "x": 495.98157701188507,
          "y": 474.443802002074
        },
        "zoom": 1.0592550915925727
      },
      "graph": {
        "blocks": [
          {
            "id": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
            "type": "basic.code",
            "data": {
              "code": "reg _o;\nwire [2:0] _sel;\n\nassign _sel = {sel2, sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        4: _o = in4;\n        5: _o = in5;\n        6: _o = in6;\n        7: _o = in7;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
              "ports": {
                "in": [
                  "in0",
                  "in1",
                  "in2",
                  "in3",
                  "in4",
                  "in5",
                  "in6",
                  "in7",
                  "sel0",
                  "sel1",
                  "sel2"
                ],
                "out": [
                  "o"
                ]
              }
            },
            "position": {
              "x": 216,
              "y": -168
            }
          },
          {
            "id": "23d46aff-e1fb-4bad-b13b-efc82e6636d7",
            "type": "basic.input",
            "data": {
              "label": "i0"
            },
            "position": {
              "x": -64,
              "y": -424
            }
          },
          {
            "id": "6e7f360c-d2e6-4cc3-9bba-7dfa2be5f466",
            "type": "basic.input",
            "data": {
              "label": "i1"
            },
            "position": {
              "x": -64,
              "y": -344
            }
          },
          {
            "id": "c8c3d737-1207-4504-8b6c-3f6fd008d8f5",
            "type": "basic.input",
            "data": {
              "label": "i2"
            },
            "position": {
              "x": -64,
              "y": -264
            }
          },
          {
            "id": "505d82ae-2b27-47b7-9d28-ae3d5474dcf9",
            "type": "basic.input",
            "data": {
              "label": "i3"
            },
            "position": {
              "x": -64,
              "y": -192
            }
          },
          {
            "id": "2c64bde3-a11e-4a11-9bf0-298532ab6128",
            "type": "basic.input",
            "data": {
              "label": "i4"
            },
            "position": {
              "x": -64,
              "y": -120
            }
          },
          {
            "id": "a83438c5-f405-4833-8c55-de93c4f18afe",
            "type": "basic.input",
            "data": {
              "label": "i5"
            },
            "position": {
              "x": -64,
              "y": -40
            }
          },
          {
            "id": "821010e3-2d9f-4181-8a80-3a275d741795",
            "type": "basic.input",
            "data": {
              "label": "i6"
            },
            "position": {
              "x": -64,
              "y": 40
            }
          },
          {
            "id": "acc534fd-6787-4cda-99e0-b6c4e5e0e35f",
            "type": "basic.input",
            "data": {
              "label": "i7"
            },
            "position": {
              "x": -64,
              "y": 112
            }
          },
          {
            "id": "8f6b18f1-8f5d-485e-94ea-93c62c98695d",
            "type": "basic.input",
            "data": {
              "label": "sel0"
            },
            "position": {
              "x": 8,
              "y": 192
            }
          },
          {
            "id": "7f52e35b-7756-4dac-9497-d9266de5adf3",
            "type": "basic.input",
            "data": {
              "label": "sel1"
            },
            "position": {
              "x": 0,
              "y": 272
            }
          },
          {
            "id": "354e3469-c33c-469a-b23f-0997fc1ba923",
            "type": "basic.input",
            "data": {
              "label": "sel2"
            },
            "position": {
              "x": 0,
              "y": 344
            }
          },
          {
            "id": "0ae4cda2-1003-44b3-9d40-a3d2261d2775",
            "type": "basic.output",
            "data": {
              "label": "o"
            },
            "position": {
              "x": 712,
              "y": -72
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "23d46aff-e1fb-4bad-b13b-efc82e6636d7",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in0"
            }
          },
          {
            "source": {
              "block": "6e7f360c-d2e6-4cc3-9bba-7dfa2be5f466",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in1"
            },
            "vertices": [
              {
                "x": 152,
                "y": -264
              }
            ]
          },
          {
            "source": {
              "block": "c8c3d737-1207-4504-8b6c-3f6fd008d8f5",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in2"
            },
            "vertices": [
              {
                "x": 128,
                "y": -216
              }
            ]
          },
          {
            "source": {
              "block": "505d82ae-2b27-47b7-9d28-ae3d5474dcf9",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in3"
            },
            "vertices": [
              {
                "x": 112,
                "y": -152
              }
            ]
          },
          {
            "source": {
              "block": "2c64bde3-a11e-4a11-9bf0-298532ab6128",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in4"
            },
            "vertices": [
              {
                "x": 96,
                "y": -72
              }
            ]
          },
          {
            "source": {
              "block": "a83438c5-f405-4833-8c55-de93c4f18afe",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in5"
            },
            "vertices": [
              {
                "x": 96,
                "y": -32
              }
            ]
          },
          {
            "source": {
              "block": "821010e3-2d9f-4181-8a80-3a275d741795",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in6"
            },
            "vertices": [
              {
                "x": 112,
                "y": 0
              }
            ]
          },
          {
            "source": {
              "block": "acc534fd-6787-4cda-99e0-b6c4e5e0e35f",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "in7"
            },
            "vertices": [
              {
                "x": 136,
                "y": 24
              }
            ]
          },
          {
            "source": {
              "block": "8f6b18f1-8f5d-485e-94ea-93c62c98695d",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "sel0"
            },
            "vertices": [
              {
                "x": 160,
                "y": 48
              }
            ]
          },
          {
            "source": {
              "block": "7f52e35b-7756-4dac-9497-d9266de5adf3",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "sel1"
            },
            "vertices": [
              {
                "x": 168,
                "y": 64
              }
            ]
          },
          {
            "source": {
              "block": "354e3469-c33c-469a-b23f-0997fc1ba923",
              "port": "out"
            },
            "target": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "sel2"
            }
          },
          {
            "source": {
              "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
              "port": "o"
            },
            "target": {
              "block": "0ae4cda2-1003-44b3-9d40-a3d2261d2775",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "FA_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": 1576.9547013028478,
          "y": 704.2570461403099
        },
        "zoom": 0.9693590402603149
      },
      "graph": {
        "blocks": [
          {
            "id": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 34_361;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clock)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clock_out = divcounter[N - 1];",
              "ports": {
                "in": [
                  "clock"
                ],
                "out": [
                  "clock_out"
                ]
              }
            },
            "position": {
              "x": -1232,
              "y": -568
            }
          },
          {
            "id": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
            "type": "basic.input",
            "data": {
              "label": "in"
            },
            "position": {
              "x": -1464,
              "y": -472
            }
          },
          {
            "id": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
            "type": "basic.output",
            "data": {
              "label": "out"
            },
            "position": {
              "x": -672,
              "y": -480
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
              "port": "out"
            },
            "target": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock"
            }
          },
          {
            "source": {
              "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
              "port": "clock_out"
            },
            "target": {
              "block": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "SOL_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": -0.000018294353623105053,
          "y": 0.14129806496099206
        },
        "zoom": 1.0000000362340538
      },
      "graph": {
        "blocks": [
          {
            "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 30_613;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
              "x": 856,
              "y": 248
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
    },
    "SI_4nota": {
      "image": "",
      "state": {
        "pan": {
          "x": -0.000018294353623105053,
          "y": 0.14129806496099206
        },
        "zoom": 1.0000000362340538
      },
      "graph": {
        "blocks": [
          {
            "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 24_297;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
              "x": 856,
              "y": 248
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
    },
    "bit.0": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 0\n\nassign v = 1'b0;",
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
      "image": "resources/images/0.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "Delay-250ms": {
      "image": "",
      "state": {
        "pan": {
          "x": 191.6798430657699,
          "y": 164.81929190818397
        },
        "zoom": 1.196131156812164
      },
      "graph": {
        "blocks": [
          {
            "id": "cc9f73ea-7706-4564-963d-6cdaa5ca01a6",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 3_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
          },
          {
            "id": "51dfd376-3d97-4aaf-b548-f492cb48a219",
            "type": "basic.input",
            "data": {
              "label": "clk"
            },
            "position": {
              "x": 24,
              "y": 128
            }
          },
          {
            "id": "f0a3c15d-a5b9-42d6-84d8-d41a6daca92e",
            "type": "basic.output",
            "data": {
              "label": "clk_out"
            },
            "position": {
              "x": 760,
              "y": 128
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "51dfd376-3d97-4aaf-b548-f492cb48a219",
              "port": "out"
            },
            "target": {
              "block": "cc9f73ea-7706-4564-963d-6cdaa5ca01a6",
              "port": "clk_in"
            }
          },
          {
            "source": {
              "block": "cc9f73ea-7706-4564-963d-6cdaa5ca01a6",
              "port": "clk_out"
            },
            "target": {
              "block": "f0a3c15d-a5b9-42d6-84d8-d41a6daca92e",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    }
  }
}