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
          "id": "cb11e83c-137d-486f-ad5b-8440e60021e5",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": 432,
            "y": 24
          }
        },
        {
          "id": "e3a4a28d-9c92-4d87-8d38-e56a536fcfc4",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "6_000_000",
            "local": false
          },
          "position": {
            "x": 88,
            "y": 56
          }
        },
        {
          "id": "85a80624-de17-413d-bf04-24f1921759da",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 992,
            "y": 72
          }
        },
        {
          "id": "81141fc0-4b75-4630-bfb8-96c1a7e14937",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1008,
            "y": 144
          }
        },
        {
          "id": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
          "type": "basic.code",
          "data": {
            "code": "// 4 biteko zenbatzailea\nreg [3:0] counter = 0;\n\n always @(posedge clk) begin\n   if (rst)\n   counter <= 1;\n   else if (counter < MAX+1)\n     counter <= counter + 1;\n end\n assign {z3, z2, z1, z0} = counter - 1;\n\n\n",
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
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "z0"
                },
                {
                  "name": "z1"
                },
                {
                  "name": "z2"
                },
                {
                  "name": "z3"
                }
              ]
            }
          },
          "position": {
            "x": 288,
            "y": 176
          }
        },
        {
          "id": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
          "type": "logic.combinational.hex_7seg_ca",
          "position": {
            "x": 816,
            "y": 200
          }
        },
        {
          "id": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
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
            "x": -104,
            "y": 208
          }
        },
        {
          "id": "61019820-0dc8-4428-ace0-52b26d1485be",
          "type": "div_M",
          "position": {
            "x": 80,
            "y": 208
          }
        },
        {
          "id": "91e28680-f32f-45f3-849c-11d3ef1fa5ed",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "117"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1024,
            "y": 208
          }
        },
        {
          "id": "39c5ea5c-fd4c-418d-b06d-cf789763d1fd",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "116"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1024,
            "y": 280
          }
        },
        {
          "id": "b05a4efb-ab29-4980-af1b-f316be0f860a",
          "type": "basic.input",
          "data": {
            "name": "in",
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
            "x": 96,
            "y": 336
          }
        },
        {
          "id": "ad20fc63-b83c-4e3f-8999-ae9d16478193",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D4",
                "value": "115"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1024,
            "y": 352
          }
        },
        {
          "id": "0e32b1d8-eca0-4d73-aaf9-f4301441969b",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "114"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1016,
            "y": 424
          }
        },
        {
          "id": "583e5ea0-35d3-4523-99d5-94e49cb5ca37",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "113"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1000,
            "y": 496
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cb11e83c-137d-486f-ad5b-8440e60021e5",
            "port": "constant-out"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "MAX"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "8b73e273-3603-443a-b952-0ab9ad826a96"
          },
          "target": {
            "block": "85a80624-de17-413d-bf04-24f1921759da",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "f2fce5fa-be07-46fe-bee1-bb2a497fe747"
          },
          "target": {
            "block": "81141fc0-4b75-4630-bfb8-96c1a7e14937",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8"
          },
          "target": {
            "block": "91e28680-f32f-45f3-849c-11d3ef1fa5ed",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "4687e984-3f19-44d7-baee-ca89513f8f1a"
          },
          "target": {
            "block": "39c5ea5c-fd4c-418d-b06d-cf789763d1fd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "1691b072-9102-4986-a900-fefd1a5a7b9e"
          },
          "target": {
            "block": "ad20fc63-b83c-4e3f-8999-ae9d16478193",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c"
          },
          "target": {
            "block": "0e32b1d8-eca0-4d73-aaf9-f4301441969b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "2565c42b-00b0-4b1d-92a4-66c715834b33"
          },
          "target": {
            "block": "583e5ea0-35d3-4523-99d5-94e49cb5ca37",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z0"
          },
          "target": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "16e44a6a-853a-4264-9e9d-2269827ed136"
          }
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z1"
          },
          "target": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "9cdbdf9f-f086-4427-9719-e13470658d97"
          }
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z2"
          },
          "target": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40"
          }
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z3"
          },
          "target": {
            "block": "551e5b22-28f4-4463-b82b-c69399b4ebbd",
            "port": "2d774807-3ec8-492c-98e2-f1c9da8d68ff"
          }
        },
        {
          "source": {
            "block": "61019820-0dc8-4428-ace0-52b26d1485be",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "61019820-0dc8-4428-ace0-52b26d1485be",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          }
        },
        {
          "source": {
            "block": "e3a4a28d-9c92-4d87-8d38-e56a536fcfc4",
            "port": "constant-out"
          },
          "target": {
            "block": "61019820-0dc8-4428-ace0-52b26d1485be",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "b05a4efb-ab29-4980-af1b-f316be0f860a",
            "port": "out"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "rst"
          }
        }
      ]
    },
    "deps": {
      "logic.combinational.hex_7seg_ca": {
        "version": "1.0",
        "package": {
          "name": "Hex 7seg CA",
          "version": "1.0.0",
          "description": "Display de 7 segmentos. Ánodo común",
          "author": "Carlos Diaz",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20id=%22Capa_1%22%20viewBox=%220%200%2035.530029%2051.500018%22%20width=%2235.53%22%20height=%2251.5%22%3E%3Cstyle%20id=%22style4204%22%3E.st0%7Bfill:red%7D.st1%7Bfont-family:&apos;FranklinGothic-DemiCond&apos;%7D.st2%7Bfont-size:9.5149px%7D%3C/style%3E%3Cg%20id=%22g4206%22%20transform=%22matrix(.67676%200%200%20.67676%20-11.031%20-3.52)%22%3E%3Cpath%20class=%22st0%22%20id=%22polygon4208%22%20fill=%22red%22%20d=%22M27.7%2020v.1h25.7V20l3-3.2-2.5-2.4H28.2v.1-.1l-3.1%203.3%202.6%202.3z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4210%22%20fill=%22red%22%20d=%22M25.1%2050.4v.1h25.7v-.1l3-3.2-2.6-2.3v-.1H25.5v.1-.1l-3%203.3%202.5%202.3z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4212%22%20fill=%22red%22%20d=%22M48.9%2080.8v.1H23.2v-.1l-3-3.2%202.5-2.3v-.1h25.7v.1l3.1%203.2-2.6%202.4z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4214%22%20fill=%22red%22%20d=%22M19%2044.6l2.3%202.3%203.1-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4216%22%20fill=%22red%22%20d=%22M52.7%2043.9l2.3%202.4%203.1-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4218%22%20fill=%22red%22%20d=%22M16.3%2075.2l2.2%202.4%203.2-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4220%22%20fill=%22red%22%20d=%22M49.9%2074.6l2.3%202.4%203.2-3.2%202-22.8-2.3-2.3-3.4%203.1z%22/%3E%3Ccircle%20class=%22st0%22%20cx=%2265.1%22%20cy=%2277.6%22%20r=%223.7%22%20id=%22circle4222%22%20fill=%22red%22/%3E%3C/g%3E%3Ctext%20class=%22st0%20st1%20st2%22%20id=%22text4224%22%20x=%223.502%22%20y=%223.377%22%20font-size=%223.642%22%20font-family=%22FranklinGothic-DemiCond%22%20fill=%22red%22%3E%3Ctspan%20style=%22-inkscape-font-specification:sans-serif%22%20id=%22tspan4204%22%20font-family=%22sans-serif%22%20font-weight=%22400%22%20font-size=%223.75%22%3EANODO%20COM%C3%9AN%3C/tspan%3E%3C/text%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "8b73e273-3603-443a-b952-0ab9ad826a96",
                "type": "basic.output",
                "data": {
                  "name": "a"
                },
                "position": {
                  "x": 1016,
                  "y": 368
                }
              },
              {
                "id": "f2fce5fa-be07-46fe-bee1-bb2a497fe747",
                "type": "basic.output",
                "data": {
                  "name": "b"
                },
                "position": {
                  "x": 1016,
                  "y": 448
                }
              },
              {
                "id": "16e44a6a-853a-4264-9e9d-2269827ed136",
                "type": "basic.input",
                "data": {
                  "name": "h0"
                },
                "position": {
                  "x": 312,
                  "y": 488
                }
              },
              {
                "id": "1d9b0829-1b10-4495-ae33-08792225f68e",
                "type": "basic.code",
                "data": {
                  "code": "// Ánodo común\n//                 gfe_dcba\nlocalparam BCD_0 = 7'b011_1111,\n        BCD_1 = 7'b000_0110,\n        BCD_2 = 7'b101_1011,\n        BCD_3 = 7'b100_1111,\n        BCD_4 = 7'b110_0110,\n        BCD_5 = 7'b110_1101,\n        BCD_6 = 7'b111_1101,\n        BCD_7 = 7'b000_0111,\n        BCD_8 = 7'b111_1111,\n        BCD_9 = 7'b110_1111,\n        BCD_A = 7'b111_0111,\n        BCD_B = 7'b111_1100,\n        BCD_C = 7'b011_1001,\n        BCD_D = 7'b101_1110,\n        BCD_E = 7'b111_1001,\n        BCD_F = 7'b111_0001;\n\nreg [6:0] _o;\n\nalways @(*)\nbegin\n\n    case({h3, h2, h1, h0})\n        4'h0: _o <= BCD_0;\n        4'h1: _o <= BCD_1;\n        4'h2: _o <= BCD_2;\n        4'h3: _o <= BCD_3;\n        4'h4: _o <= BCD_4;\n        4'h5: _o <= BCD_5;\n        4'h6: _o <= BCD_6;\n        4'h7: _o <= BCD_7;\n        4'h8: _o <= BCD_8;\n        4'h9: _o <= BCD_9;\n        4'hA: _o <= BCD_A;\n        4'hB: _o <= BCD_B;\n        4'hC: _o <= BCD_C;\n        4'hD: _o <= BCD_D;\n        4'hE: _o <= BCD_E;\n        4'hF: _o <= BCD_F;\n        default: _o <= 0;\n    endcase\nend\n\nassign {g, f, e, d, c, b, a} = ~_o;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "h0"
                      },
                      {
                        "name": "h1"
                      },
                      {
                        "name": "h2"
                      },
                      {
                        "name": "h3"
                      }
                    ],
                    "out": [
                      {
                        "name": "a"
                      },
                      {
                        "name": "b"
                      },
                      {
                        "name": "c"
                      },
                      {
                        "name": "d"
                      },
                      {
                        "name": "e"
                      },
                      {
                        "name": "f"
                      },
                      {
                        "name": "g"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 496,
                  "y": 512
                }
              },
              {
                "id": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8",
                "type": "basic.output",
                "data": {
                  "name": "c"
                },
                "position": {
                  "x": 1016,
                  "y": 528
                }
              },
              {
                "id": "9cdbdf9f-f086-4427-9719-e13470658d97",
                "type": "basic.input",
                "data": {
                  "name": "h1"
                },
                "position": {
                  "x": 312,
                  "y": 568
                }
              },
              {
                "id": "4687e984-3f19-44d7-baee-ca89513f8f1a",
                "type": "basic.output",
                "data": {
                  "name": "d"
                },
                "position": {
                  "x": 1016,
                  "y": 608
                }
              },
              {
                "id": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40",
                "type": "basic.input",
                "data": {
                  "name": "h2"
                },
                "position": {
                  "x": 312,
                  "y": 648
                }
              },
              {
                "id": "1691b072-9102-4986-a900-fefd1a5a7b9e",
                "type": "basic.output",
                "data": {
                  "name": "e"
                },
                "position": {
                  "x": 1016,
                  "y": 688
                }
              },
              {
                "id": "2d774807-3ec8-492c-98e2-f1c9da8d68ff",
                "type": "basic.input",
                "data": {
                  "name": "h3"
                },
                "position": {
                  "x": 312,
                  "y": 728
                }
              },
              {
                "id": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c",
                "type": "basic.output",
                "data": {
                  "name": "f"
                },
                "position": {
                  "x": 1016,
                  "y": 768
                }
              },
              {
                "id": "2565c42b-00b0-4b1d-92a4-66c715834b33",
                "type": "basic.output",
                "data": {
                  "name": "g"
                },
                "position": {
                  "x": 1016,
                  "y": 840
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "16e44a6a-853a-4264-9e9d-2269827ed136",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h0"
                }
              },
              {
                "source": {
                  "block": "9cdbdf9f-f086-4427-9719-e13470658d97",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h1"
                }
              },
              {
                "source": {
                  "block": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h2"
                }
              },
              {
                "source": {
                  "block": "2d774807-3ec8-492c-98e2-f1c9da8d68ff",
                  "port": "out"
                },
                "target": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "h3"
                }
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "d"
                },
                "target": {
                  "block": "4687e984-3f19-44d7-baee-ca89513f8f1a",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "c"
                },
                "target": {
                  "block": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "b"
                },
                "target": {
                  "block": "f2fce5fa-be07-46fe-bee1-bb2a497fe747",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 952,
                    "y": 504
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "a"
                },
                "target": {
                  "block": "8b73e273-3603-443a-b952-0ab9ad826a96",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 928,
                    "y": 440
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "e"
                },
                "target": {
                  "block": "1691b072-9102-4986-a900-fefd1a5a7b9e",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 976,
                    "y": 704
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "f"
                },
                "target": {
                  "block": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 952,
                    "y": 752
                  }
                ]
              },
              {
                "source": {
                  "block": "1d9b0829-1b10-4495-ae33-08792225f68e",
                  "port": "g"
                },
                "target": {
                  "block": "2565c42b-00b0-4b1d-92a4-66c715834b33",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 928,
                    "y": 824
                  }
                ]
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -152.07320110504,
              "y": -209.21075900090992
            },
            "zoom": 0.7373584811199316
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
        "x": 137,
        "y": 34
      },
      "zoom": 1
    }
  }
}