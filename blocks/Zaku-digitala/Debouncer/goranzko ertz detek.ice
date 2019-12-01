{
  "version": "1.2",
  "package": {
    "name": "Goranzko ertzaren detektagailua",
    "version": "",
    "description": "Goranzko ertzaren detektagailua",
    "author": "Lorea",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20734.17899%20211.26258%22%20stroke-miterlimit=%2210%22%20width=%22734.179%22%20height=%22211.263%22%20fill=%22none%22%20stroke-linecap=%22square%22%3E%3CclipPath%20id=%22a%22%3E%3Cpath%20d=%22M0%200h873.53v412.67H0z%22/%3E%3C/clipPath%3E%3Cg%20clip-path=%22url(#a)%22%20transform=%22translate(-49.992%20-174.766)%22%3E%3Cpath%20d=%22M0%200h873.53v412.67H0z%22%20fill=%22none%22/%3E%3Cpath%20d=%22M532.496%20378.029h155.675v-190.7h46.703v188.107h49.297%22%20fill=%22none%22/%3E%3Cpath%20d=%22M485.793%20378.029h155.674v-190.7h46.704v188.107h49.296%22%20stroke=%22#000%22%20stroke-width=%2216%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M0%2018.488h919.118v87.181H0z%22%20fill=%22none%22/%3E%3Cpath%20d=%22M374.656%20264.41h93.26v-12.268l24.536%2024.535-24.536%2024.536v-12.268h-93.26z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M374.656%20264.41h93.26v-12.268l24.536%2024.535-24.536%2024.536v-12.268h-93.26z%22%20stroke=%22#00f%22%20stroke-width=%228%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M26.404%20317.273l71.37-.756%22%20fill=%22none%22/%3E%3Cpath%20d=%22M50.088%20372.6l156.274-2.004V184.269l56.01-.727%2098.26-1.276%22%20stroke=%22#000%22%20stroke-width=%2215%22%20stroke-linecap=%22butt%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "edde2fc1-b716-4add-8013-0c5f858eb701",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 48,
            "y": 128
          }
        },
        {
          "id": "71868d93-082b-45fc-8471-28d644887a7d",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 656,
            "y": 160
          }
        },
        {
          "id": "e828a51f-6ed2-4e57-8867-2bcdf8e193ef",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 48,
            "y": 192
          }
        },
        {
          "id": "4c465416-1d0a-43f1-ab97-caa3621a21d8",
          "type": "b1f85855eee5cb06836541609ded81c59122f828",
          "position": {
            "x": 216,
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "9fe570d8-ee70-485a-abea-d8a2ffb5cb16",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 360,
            "y": 144
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "31715e66-22fc-4e16-9b8a-de567631eac9",
          "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
          "position": {
            "x": 504,
            "y": 160
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "4c465416-1d0a-43f1-ab97-caa3621a21d8",
            "port": "ae937cae-6064-493e-9d90-f6198f74464c"
          },
          "target": {
            "block": "9fe570d8-ee70-485a-abea-d8a2ffb5cb16",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "9fe570d8-ee70-485a-abea-d8a2ffb5cb16",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "31715e66-22fc-4e16-9b8a-de567631eac9",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "31715e66-22fc-4e16-9b8a-de567631eac9",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "71868d93-082b-45fc-8471-28d644887a7d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "edde2fc1-b716-4add-8013-0c5f858eb701",
            "port": "out"
          },
          "target": {
            "block": "4c465416-1d0a-43f1-ab97-caa3621a21d8",
            "port": "b9ca9d22-79bd-416c-8cc8-70ed9c686132"
          }
        },
        {
          "source": {
            "block": "e828a51f-6ed2-4e57-8867-2bcdf8e193ef",
            "port": "out"
          },
          "target": {
            "block": "4c465416-1d0a-43f1-ab97-caa3621a21d8",
            "port": "754e6a22-54d3-4aca-8e96-a9475aa3d749"
          }
        },
        {
          "source": {
            "block": "e828a51f-6ed2-4e57-8867-2bcdf8e193ef",
            "port": "out"
          },
          "target": {
            "block": "31715e66-22fc-4e16-9b8a-de567631eac9",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        }
      ]
    }
  },
  "dependencies": {
    "b1f85855eee5cb06836541609ded81c59122f828": {
      "package": {
        "name": "D Flip-flop",
        "version": "",
        "description": "Clk-ren goranzko ertzean d balioa irteerara eramango da",
        "author": "Lorea Aldabaldetreku",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2257.811%22%20height=%2244.68%22%20viewBox=%220%200%2054.198062%2041.88788%22%3E%3Cg%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22313.685%22%20y=%22398.653%22%20font-family=%22sans-serif%22%20fill=%22navy%22%20transform=%22translate(-313.353%20-375.884)%22%3E%3Ctspan%20x=%22313.685%22%20y=%22398.653%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2227.335%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Verdana%22%20x=%22325.529%22%20y=%22398.017%22%20transform=%22matrix(.95962%200%200%201.04208%20-313.353%20-375.884)%22%20font-size=%2214.344%22%20font-family=%22Verdana%22%20fill=%22#00f%22%20stroke-width=%22.359%22%3E%3Ctspan%20x=%22325.529%22%20y=%22398.017%22%3EFlip-flop%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b9ca9d22-79bd-416c-8cc8-70ed9c686132",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 592,
                "y": 304
              }
            },
            {
              "id": "ae937cae-6064-493e-9d90-f6198f74464c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1144,
                "y": 376
              }
            },
            {
              "id": "754e6a22-54d3-4aca-8e96-a9475aa3d749",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 584,
                "y": 440
              }
            },
            {
              "id": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
              "type": "basic.code",
              "data": {
                "code": "// D biegonkorra\n// hasierako balioa 0 da\n\n\nreg q = 0;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 776,
                "y": 272
              },
              "size": {
                "width": 312,
                "height": 264
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "754e6a22-54d3-4aca-8e96-a9475aa3d749",
                "port": "out"
              },
              "target": {
                "block": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
                "port": "q"
              },
              "target": {
                "block": "ae937cae-6064-493e-9d90-f6198f74464c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b9ca9d22-79bd-416c-8cc8-70ed9c686132",
                "port": "out"
              },
              "target": {
                "block": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
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
        }
      }
    },
    "11a6f454705778e2f00adba4e5b28dcd9411bc8f": {
      "package": {
        "name": "AND",
        "version": "1.0.0",
        "description": "AND logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20409.9h26v2h-26zM-252%20429.9h27v2h-27z%22/%3E%3Cpath%20d=%22M-227%20400.9v39.9h20.4c11.3%200%2020-9%2020-20s-8.7-20-20-20H-227zm2.9%202.8h17.6c9.8%200%2016.7%207.6%2016.7%2017.1%200%209.5-7.4%2017.1-17.1%2017.1H-224c-.1.1-.1-34.2-.1-34.2z%22/%3E%3Cpath%20d=%22M-187.911%20419.9H-162v2h-25.911z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "// AND logic gate\n\nassign c = a & b;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
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
                "y": 80
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
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 208
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
        }
      }
    }
  }
}