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
          "id": "28af8806-1290-4d52-bfe2-c58f0846fb2d",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "120_000",
            "local": false
          },
          "position": {
            "x": 328,
            "y": 200
          }
        },
        {
          "id": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] Q=0;\n\nalways @(posedge CLK)\n    Q <= Q + 1;\n\nassign {Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0} = Q;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "CLK"
                }
              ],
              "out": [
                {
                  "name": "Q0"
                },
                {
                  "name": "Q1"
                },
                {
                  "name": "Q2"
                },
                {
                  "name": "Q3"
                },
                {
                  "name": "Q4"
                },
                {
                  "name": "Q5"
                },
                {
                  "name": "Q6"
                },
                {
                  "name": "Q7"
                }
              ]
            }
          },
          "position": {
            "x": 520,
            "y": 248
          }
        },
        {
          "id": "cc15992b-5609-4200-af28-09455ec5e322",
          "type": "div_M",
          "position": {
            "x": 320,
            "y": 344
          }
        },
        {
          "id": "ea200a64-52e5-494e-8b5e-b73d2beecd74",
          "type": "basic.code",
          "data": {
            "code": "// Comparator 8 bits.\nassign L = ({a7,a6,a5,a4,a3,a2,a1,a0} <  {b7,b6,b5,b4,b3,b2,b1,b0});\nassign G = ({a7,a6,a5,a4,a3,a2,a1,a0} >  {b7,b6,b5,b4,b3,b2,b1,b0});\nassign E = ({a7,a6,a5,a4,a3,a2,a1,a0} == {b7,b6,b5,b4,b3,b2,b1,b0});",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a0"
                },
                {
                  "name": "a1"
                },
                {
                  "name": "a2"
                },
                {
                  "name": "a3"
                },
                {
                  "name": "a4"
                },
                {
                  "name": "a5"
                },
                {
                  "name": "a6"
                },
                {
                  "name": "a7"
                },
                {
                  "name": "b0"
                },
                {
                  "name": "b1"
                },
                {
                  "name": "b2"
                },
                {
                  "name": "b3"
                },
                {
                  "name": "b4"
                },
                {
                  "name": "b5"
                },
                {
                  "name": "b6"
                },
                {
                  "name": "b7"
                }
              ],
              "out": [
                {
                  "name": "G"
                },
                {
                  "name": "E"
                },
                {
                  "name": "L"
                }
              ]
            }
          },
          "position": {
            "x": 1192,
            "y": 384
          }
        },
        {
          "id": "b9f9d22d-8344-4445-b192-88c39cbad355",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "12",
            "local": false
          },
          "position": {
            "x": 320,
            "y": 448
          }
        },
        {
          "id": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] Q=0;\n\nalways @(posedge CLK)\n    Q <= Q + 1;\n\nassign {Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0} = Q;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "CLK"
                }
              ],
              "out": [
                {
                  "name": "Q0"
                },
                {
                  "name": "Q1"
                },
                {
                  "name": "Q2"
                },
                {
                  "name": "Q3"
                },
                {
                  "name": "Q4"
                },
                {
                  "name": "Q5"
                },
                {
                  "name": "Q6"
                },
                {
                  "name": "Q7"
                }
              ]
            }
          },
          "position": {
            "x": 520,
            "y": 504
          }
        },
        {
          "id": "8a450d0f-21ca-4478-a5c1-935a891680a3",
          "type": "logic.gate.not",
          "position": {
            "x": 1680,
            "y": 568
          }
        },
        {
          "id": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872",
          "type": "basic.output",
          "data": {
            "name": "pwm",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1912,
            "y": 568
          }
        },
        {
          "id": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
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
            "virtual": true
          },
          "position": {
            "x": 112,
            "y": 600
          }
        },
        {
          "id": "844b7d5b-0b16-4fbc-9812-0252e8f13a80",
          "type": "div_M",
          "position": {
            "x": 312,
            "y": 600
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
            "block": "8a450d0f-21ca-4478-a5c1-935a891680a3",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "8a450d0f-21ca-4478-a5c1-935a891680a3",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "28af8806-1290-4d52-bfe2-c58f0846fb2d",
            "port": "constant-out"
          },
          "target": {
            "block": "cc15992b-5609-4200-af28-09455ec5e322",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "cc15992b-5609-4200-af28-09455ec5e322",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "e4ceaa78-be54-4d42-842a-ae95d995ecd4",
            "port": "CLK"
          }
        },
        {
          "source": {
            "block": "b9f9d22d-8344-4445-b192-88c39cbad355",
            "port": "constant-out"
          },
          "target": {
            "block": "844b7d5b-0b16-4fbc-9812-0252e8f13a80",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "844b7d5b-0b16-4fbc-9812-0252e8f13a80",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "b97284cc-2b2a-4b16-9217-54cb8c1a34b2",
            "port": "CLK"
          }
        },
        {
          "source": {
            "block": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
            "port": "out"
          },
          "target": {
            "block": "844b7d5b-0b16-4fbc-9812-0252e8f13a80",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          }
        },
        {
          "source": {
            "block": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
            "port": "out"
          },
          "target": {
            "block": "cc15992b-5609-4200-af28-09455ec5e322",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          }
        }
      ]
    },
    "deps": {
      "logic.gate.not": {
        "version": "1.0",
        "package": {
          "name": "NOT",
          "version": "1.0.0",
          "description": "NOT logic gate",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "type": "basic.code",
                "data": {
                  "code": "// NOT logic gate\n\nassign c = ~ a;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "a"
                      }
                    ],
                    "out": [
                      {
                        "name": "c"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 256,
                  "y": 48
                }
              },
              {
                "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "type": "basic.input",
                "data": {
                  "name": ""
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
                  "name": ""
                },
                "position": {
                  "x": 752,
                  "y": 144
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
          "state": {
            "pan": {
              "x": 0,
              "y": 0
            },
            "zoom": 1
          }
        }
      },
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
      }
    },
    "state": {
      "pan": {
        "x": 113.1898,
        "y": 7.5916
      },
      "zoom": 0.7204
    }
  }
}