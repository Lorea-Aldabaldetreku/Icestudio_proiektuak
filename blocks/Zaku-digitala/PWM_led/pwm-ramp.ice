{
  "version": "1.1",
  "package": {
    "name": "pwm-ramp",
    "version": "",
    "description": "pultsu zabalera bidezko modulazioa",
    "author": "Lorea",
    "image": "%3Csvg%20viewBox=%220.0%200.0%20505.83727034120733%20444.0236220472441%22%20fill=%22none%22%20stroke-linecap=%22square%22%20stroke-miterlimit=%2210%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3CclipPath%20id=%22a%22%3E%3Cpath%20d=%22M0%200h505.837v444.024H0V0z%22/%3E%3C/clipPath%3E%3Cg%20clip-path=%22url(#a)%22%3E%3Cpath%20fill=%22none%22%20d=%22M0%200h505.837v444.024H0zM0%20241.49l500.661%202.395%22/%3E%3Cpath%20stroke=%22#4c1130%22%20stroke-width=%2212%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M0%20241.49l500.661%202.395%22/%3E%3Cpath%20fill=%22none%22%20d=%22M9.538%20242.681C20.068%20205.53%2049.67-12.02%2072.717%2019.768c23.046%2031.788%2053.046%20403.312%2075.1%20413.643%2022.052%2010.331%2040.529-343.908%2057.217-351.656%2016.689-7.749%2027.616%20294.834%2042.914%20305.165%2015.297%2010.331%2035.363-232.847%2048.874-243.178%2013.51-10.331%2020.464%20174.436%2032.186%20181.191%2011.722%206.755%2028.412-135.495%2038.147-140.661%209.735-5.166%2011.52%20103.905%2020.262%20109.667%208.742%205.761%2024.438-71.919%2032.187-75.097%207.748-3.179%209.138%2052.053%2014.304%2056.026%205.166%203.973%2013.909-26.822%2016.69-32.187%22/%3E%3Cpath%20stroke=%22#0c343d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M9.538%20242.681C20.068%20205.53%2049.67-12.02%2072.717%2019.768c23.046%2031.788%2053.046%20403.312%2075.1%20413.643%2022.052%2010.331%2040.529-343.908%2057.217-351.656%2016.689-7.749%2027.616%20294.834%2042.914%20305.165%2015.297%2010.331%2035.363-232.847%2048.874-243.178%2013.51-10.331%2020.464%20174.436%2032.186%20181.191%2011.722%206.755%2028.412-135.495%2038.147-140.661%209.735-5.166%2011.52%20103.905%2020.262%20109.667%208.742%205.761%2024.438-71.919%2032.187-75.097%207.748-3.179%209.138%2052.053%2014.304%2056.026%205.166%203.973%2013.909-26.822%2016.69-32.187%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "c5cc3707-a1a1-4277-ab77-eaf09b837d4b",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -48,
            "y": 528
          }
        },
        {
          "id": "5b0e61ef-dbe9-4bf0-a196-c028b2d57872",
          "type": "basic.output",
          "data": {
            "name": "led",
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
          },
          "size": {
            "width": 384,
            "height": 256
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
          },
          "size": {
            "width": 384,
            "height": 256
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
          },
          "size": {
            "width": 384,
            "height": 256
          }
        },
        {
          "id": "8a450d0f-21ca-4478-a5c1-935a891680a3",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1680,
            "y": 568
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "0fd895c4-f2bd-4602-98cb-05f61c100c87",
          "type": "basic.code",
          "data": {
            "code": "parameter M = 120_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
            "x": 80,
            "y": 248
          },
          "size": {
            "width": 368,
            "height": 240
          }
        },
        {
          "id": "2be11161-ae37-45e5-9606-df81279e0e92",
          "type": "basic.code",
          "data": {
            "code": "parameter M = 12;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
            "x": 72,
            "y": 600
          },
          "size": {
            "width": 368,
            "height": 240
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
            "block": "0fd895c4-f2bd-4602-98cb-05f61c100c87",
            "port": "clk_out"
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
            "block": "0fd895c4-f2bd-4602-98cb-05f61c100c87",
            "port": "clk_in"
          }
        },
        {
          "source": {
            "block": "2be11161-ae37-45e5-9606-df81279e0e92",
            "port": "clk_out"
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
            "block": "2be11161-ae37-45e5-9606-df81279e0e92",
            "port": "clk_in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 59.5642,
        "y": 65.8838
      },
      "zoom": 0.4076
    }
  },
  "dependencies": {
    "32200dc0915d45d6ec035bcec61c8472f0cc7b88": {
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
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    }
  }
}