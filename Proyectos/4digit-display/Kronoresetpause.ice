{
  "version": "1.1",
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
            "x": 456,
            "y": -72
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
            "x": -424,
            "y": 24
          }
        },
        {
          "id": "e3a4a28d-9c92-4d87-8d38-e56a536fcfc4",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "1_200_000",
            "local": false
          },
          "position": {
            "x": -72,
            "y": 24
          }
        },
        {
          "id": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
          "type": "basic.code",
          "data": {
            "code": "// Zenbatzailea reset funtzioarekin\n// Contador con función reset\n\nreg [3:0] counter;\nreg out;\nalways@(posedge clk) begin\n\nif (counter == MAX)\n     out <= 1;\nelse \n     out <= 0;  \nif (~rst) \n     counter <= 0;\nelse \n   if (en)\n     if (counter==MAX) \n     counter <= 0;\n     else \n     counter <= counter + 1;\nend\n\nassign enout = out;\nassign z0 = counter;\n",
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
                  "name": "en"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "z0",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "enout"
                }
              ]
            }
          },
          "position": {
            "x": 304,
            "y": 56
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "d86c0d32-4852-4f97-8906-e21743fd1683",
          "type": "basic.code",
          "data": {
            "code": "reg [3:0] a;\nreg [3:0] b;\nreg [3:0] c;\nreg [3:0] d;\nalways @(posedge clk) begin\nif (pause) begin\na <= a;\nb <= b;\nc <= c;\nd <= d;\nend\nelse begin\na <= z0;\nb <= z1;\nc <= z2;\nd <= z3;\nend\nend\nassign {a3, a2, a1, a0} = a;\nassign {b3, b2, b1, b0} = b;\nassign {c3, c2, c1, c0} = c;\nassign {d3, d2, d1, d0} = d;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "z0",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "z1",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "z2",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "z3",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "pause"
                }
              ],
              "out": [
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
                  "name": "c0"
                },
                {
                  "name": "c1"
                },
                {
                  "name": "c2"
                },
                {
                  "name": "c3"
                },
                {
                  "name": "d0"
                },
                {
                  "name": "d1"
                },
                {
                  "name": "d2"
                },
                {
                  "name": "d3"
                }
              ]
            }
          },
          "position": {
            "x": 912,
            "y": 112
          },
          "size": {
            "width": 320,
            "height": 1184
          }
        },
        {
          "id": "cd6f811c-4a97-4f94-8bd8-1a543f8a7236",
          "type": "135cadb3eba1a2a0afe60d7b45b670547e7c83b4",
          "position": {
            "x": -72,
            "y": 136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "99c42352-de9f-4dd6-929b-bd922e4930e2",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": -232,
            "y": 152
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
          "type": "basic.code",
          "data": {
            "code": "reg _z0;\nreg _z1;\nreg _z2;\nreg _z3;\n\nwire [1:0] _sel;\n\nassign _sel = {sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: begin\n           _z0 = a0;\n           _z1 = a1;\n           _z2 = a2;\n           _z3 = a3;\n           end\n        1: begin\n           _z0 = b0;\n           _z1 = b1;\n           _z2 = b2;\n           _z3 = b3;\n           end\n        2: begin \n           _z0 = c0;\n           _z1 = c1;\n           _z2 = c2;\n           _z3 = c3;\n           end\n        3: begin\n           _z0 = d0;\n           _z1 = d1;\n           _z2 = d2;\n           _z3 = d3;\n           end\n        default: begin\n           _z0 = a0;\n           _z1 = a1;\n           _z2 = a2;\n           _z3 = a3;\n           end\n    endcase\nend\n\nassign z0 = _z0;\nassign z1 = _z1;\nassign z2 = _z2;\nassign z3 = _z3;\n",
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
                  "name": "c0"
                },
                {
                  "name": "c1"
                },
                {
                  "name": "c2"
                },
                {
                  "name": "c3"
                },
                {
                  "name": "d0"
                },
                {
                  "name": "d1"
                },
                {
                  "name": "d2"
                },
                {
                  "name": "d3"
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
            "x": 1392,
            "y": 176
          },
          "size": {
            "width": 320,
            "height": 976
          }
        },
        {
          "id": "be4215f2-ddfc-401b-bb47-77e1d84eab01",
          "type": "10d93310e23daeea6814d2c785127dcb17e7527b",
          "position": {
            "x": -456,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ff6c1e4b-9d94-4110-9448-22b2ed4f9c63",
          "type": "6c8610c44ae8c46bb48287efc576bf248791ebd9",
          "position": {
            "x": -304,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f0adab5b-ba32-4e6d-bf54-6d01d439ab4b",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": 448,
            "y": 312
          }
        },
        {
          "id": "0565a138-3ee1-4b19-9a6f-dac6d787bc48",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -608,
            "y": 320
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
            "x": 2080,
            "y": 392
          }
        },
        {
          "id": "ea614321-b948-47e9-baff-b320e1715f33",
          "type": "10d93310e23daeea6814d2c785127dcb17e7527b",
          "position": {
            "x": -456,
            "y": 424
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "57dc61be-cf0b-4ba5-a1c4-d73383c7b575",
          "type": "6c8610c44ae8c46bb48287efc576bf248791ebd9",
          "position": {
            "x": -304,
            "y": 424
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d9157734-178e-4f77-8051-6ee998f92c8a",
          "type": "basic.input",
          "data": {
            "name": "Pause",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -608,
            "y": 440
          }
        },
        {
          "id": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
          "type": "basic.code",
          "data": {
            "code": "// Zenbatzailea reset funtzioarekin\n// Contador con función reset\n\nreg [3:0] counter;\nreg out;\nalways@(posedge clk) begin\n\nif (counter == MAX)\n     out <= 1;\nelse \n     out <= 0;  \nif (~rst) \n     counter <= 0;\nelse \n   if (en)\n     if (counter==MAX) \n     counter <= 0;\n     else \n     counter <= counter + 1;\nend\n\nassign enout = out;\nassign z1 = counter;\n",
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
                  "name": "en"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "z1",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "enout"
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": 440
          },
          "size": {
            "width": 400,
            "height": 224
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
            "x": 2096,
            "y": 464
          }
        },
        {
          "id": "8fc020a5-0153-4a14-9646-e7742154b9ee",
          "type": "4e8402f5019b4ec6804fb353a0442db7ba0cfd5c",
          "position": {
            "x": 1848,
            "y": 496
          },
          "size": {
            "width": 96,
            "height": 224
          }
        },
        {
          "id": "e6a96072-76cf-4d58-b498-a5df8bc273ab",
          "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
          "position": {
            "x": 136,
            "y": 528
          },
          "size": {
            "width": 96,
            "height": 64
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
            "x": 2112,
            "y": 528
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
            "x": 2112,
            "y": 600
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
            "x": 2112,
            "y": 672
          }
        },
        {
          "id": "3aaffee6-5043-42d6-b9bc-e93905add791",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "5",
            "local": false
          },
          "position": {
            "x": 464,
            "y": 688
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
            "x": 2104,
            "y": 744
          }
        },
        {
          "id": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
          "type": "basic.code",
          "data": {
            "code": "// Zenbatzailea reset funtzioarekin\n// Contador con función reset\n\nreg [3:0] counter;\nreg out;\nalways@(posedge clk) begin\n\nif (counter == MAX)\n     out <= 1;\nelse \n     out <= 0;  \nif (~rst) \n     counter <= 0;\nelse \n   if (en)\n     if (counter==MAX) \n     counter <= 0;\n     else \n     counter <= counter + 1;\nend\n\nassign enout = out;\nassign z2 = counter;\n",
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
                  "name": "en"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "z2",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "enout"
                }
              ]
            }
          },
          "position": {
            "x": 312,
            "y": 816
          },
          "size": {
            "width": 400,
            "height": 224
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
            "x": 2088,
            "y": 816
          }
        },
        {
          "id": "08c98096-6aa7-4df0-804e-7e26d168a9f8",
          "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
          "position": {
            "x": 160,
            "y": 896
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "011ef91d-3398-4b49-8b72-95621686fdd7",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": 464,
            "y": 1072
          }
        },
        {
          "id": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
          "type": "basic.code",
          "data": {
            "code": "// Zenbatzailea reset funtzioarekin\n// Contador con función reset\n\nreg [3:0] counter;\n\nalways@(posedge clk) begin\n\nif (~rst) \n   counter <= 0;\nelse \n   if (en)\n     if (counter==MAX)\n     counter <= 0;\n   else \n     counter <= counter + 1;\nend\nassign z3 = counter;\n",
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
                  "name": "en"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "z3",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 312,
            "y": 1192
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "03e967b4-ae8b-4ba8-94cd-7a27c60d7a8b",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1816,
            "y": 1208
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8ece1860-80d2-49ad-b64e-6a161528b9fc",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1976,
            "y": 1208
          }
        },
        {
          "id": "488a4069-148e-4fdc-9dc8-2189366622ef",
          "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
          "position": {
            "x": 160,
            "y": 1264
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c482b62b-c657-4148-b1fb-84eba44fedd7",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1832,
            "y": 1312
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "954c1ae1-bcc7-4f3e-be11-c96372ee4dc1",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1976,
            "y": 1312
          }
        },
        {
          "id": "a536b1a7-1c8d-4b06-8fb3-828e7111ff52",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": 1504,
            "y": 1344
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
          "type": "506b39fc14d4cbeab0bbecc81a742b949b46f92c",
          "position": {
            "x": 1648,
            "y": 1352
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "4529bcad-1478-48b6-bd76-fb0ad7b66fc2",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1832,
            "y": 1400
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a824eb16-aacb-4406-b2e2-414dd1a99b78",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1976,
            "y": 1400
          }
        },
        {
          "id": "debf8c8f-50ad-4c3d-810c-1e51fe476456",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "60_000",
            "local": false
          },
          "position": {
            "x": -152,
            "y": 1416
          }
        },
        {
          "id": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
          "type": "basic.code",
          "data": {
            "code": "// 2 biteko zanbatzailea\n\nreg [1:0] counter;\n\nalways @(posedge clk) \n  if (en)\n  counter <= counter + 1;\n\nassign {a0, a1} = counter;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "en"
                }
              ],
              "out": [
                {
                  "name": "a0"
                },
                {
                  "name": "a1"
                }
              ]
            }
          },
          "position": {
            "x": 328,
            "y": 1480
          },
          "size": {
            "width": 384,
            "height": 176
          }
        },
        {
          "id": "e46393c0-960d-403e-b758-4efc25b960b6",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1832,
            "y": 1504
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "eb1c75bc-c8f3-4f8b-83eb-e5b9f2b796e7",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D10",
                "value": "141"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1976,
            "y": 1504
          }
        },
        {
          "id": "97caa0ed-30e3-45f5-9444-dc275b28e3c9",
          "type": "135cadb3eba1a2a0afe60d7b45b670547e7c83b4",
          "position": {
            "x": -152,
            "y": 1560
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d09ffc6e-110d-41db-bcd4-b508b3aa05f3",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": -352,
            "y": 1576
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
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "2565c42b-00b0-4b1d-92a4-66c715834b33"
          },
          "target": {
            "block": "583e5ea0-35d3-4523-99d5-94e49cb5ca37",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "7c14afe7-1ac0-4394-b38e-fa8a00ffa21c"
          },
          "target": {
            "block": "0e32b1d8-eca0-4d73-aaf9-f4301441969b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "1691b072-9102-4986-a900-fefd1a5a7b9e"
          },
          "target": {
            "block": "ad20fc63-b83c-4e3f-8999-ae9d16478193",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "4687e984-3f19-44d7-baee-ca89513f8f1a"
          },
          "target": {
            "block": "39c5ea5c-fd4c-418d-b06d-cf789763d1fd",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "bf0ea22e-3ac2-4756-87d5-020a6ea6a1a8"
          },
          "target": {
            "block": "91e28680-f32f-45f3-849c-11d3ef1fa5ed",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "f2fce5fa-be07-46fe-bee1-bb2a497fe747"
          },
          "target": {
            "block": "81141fc0-4b75-4630-bfb8-96c1a7e14937",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "8b73e273-3603-443a-b952-0ab9ad826a96"
          },
          "target": {
            "block": "85a80624-de17-413d-bf04-24f1921759da",
            "port": "in"
          },
          "vertices": [
            {
              "x": 2056,
              "y": 512
            }
          ]
        },
        {
          "source": {
            "block": "011ef91d-3398-4b49-8b72-95621686fdd7",
            "port": "constant-out"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "MAX"
          }
        },
        {
          "source": {
            "block": "c482b62b-c657-4148-b1fb-84eba44fedd7",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "954c1ae1-bcc7-4f3e-be11-c96372ee4dc1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f0adab5b-ba32-4e6d-bf54-6d01d439ab4b",
            "port": "constant-out"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "MAX"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "3aaffee6-5043-42d6-b9bc-e93905add791",
            "port": "constant-out"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "MAX"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "03e967b4-ae8b-4ba8-94cd-7a27c60d7a8b",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "8ece1860-80d2-49ad-b64e-6a161528b9fc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4529bcad-1478-48b6-bd76-fb0ad7b66fc2",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "a824eb16-aacb-4406-b2e2-414dd1a99b78",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e46393c0-960d-403e-b758-4efc25b960b6",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "eb1c75bc-c8f3-4f8b-83eb-e5b9f2b796e7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa"
          },
          "target": {
            "block": "03e967b4-ae8b-4ba8-94cd-7a27c60d7a8b",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2"
          },
          "target": {
            "block": "c482b62b-c657-4148-b1fb-84eba44fedd7",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3"
          },
          "target": {
            "block": "4529bcad-1478-48b6-bd76-fb0ad7b66fc2",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "b9d764ea-538a-420f-a8d3-45af7a8e30a2"
          },
          "target": {
            "block": "e46393c0-960d-403e-b758-4efc25b960b6",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a0"
          },
          "target": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f"
          },
          "vertices": [
            {
              "x": 1464,
              "y": 1464
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a1"
          },
          "target": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "657dab9e-6580-4f02-b54f-66477863f26a"
          }
        },
        {
          "source": {
            "block": "a536b1a7-1c8d-4b06-8fb3-828e7111ff52",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "f01ca5f8-13e9-49c0-bd9f-3985fb337f63",
            "port": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406"
          }
        },
        {
          "source": {
            "block": "e3a4a28d-9c92-4d87-8d38-e56a536fcfc4",
            "port": "constant-out"
          },
          "target": {
            "block": "cd6f811c-4a97-4f94-8bd8-1a543f8a7236",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
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
            "block": "cd6f811c-4a97-4f94-8bd8-1a543f8a7236",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          }
        },
        {
          "source": {
            "block": "cd6f811c-4a97-4f94-8bd8-1a543f8a7236",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 296,
              "y": 160
            }
          ]
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "enout"
          },
          "target": {
            "block": "e6a96072-76cf-4d58-b498-a5df8bc273ab",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "e6a96072-76cf-4d58-b498-a5df8bc273ab",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "enout"
          },
          "target": {
            "block": "08c98096-6aa7-4df0-804e-7e26d168a9f8",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "08c98096-6aa7-4df0-804e-7e26d168a9f8",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "enout"
          },
          "target": {
            "block": "488a4069-148e-4fdc-9dc8-2189366622ef",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "488a4069-148e-4fdc-9dc8-2189366622ef",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "ff6c1e4b-9d94-4110-9448-22b2ed4f9c63",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ff6c1e4b-9d94-4110-9448-22b2ed4f9c63",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ff6c1e4b-9d94-4110-9448-22b2ed4f9c63",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ff6c1e4b-9d94-4110-9448-22b2ed4f9c63",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "99c42352-de9f-4dd6-929b-bd922e4930e2",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "cd6f811c-4a97-4f94-8bd8-1a543f8a7236",
            "port": "598144bb-5ac3-4339-91ec-76eac9e0ffc8"
          }
        },
        {
          "source": {
            "block": "0565a138-3ee1-4b19-9a6f-dac6d787bc48",
            "port": "out"
          },
          "target": {
            "block": "be4215f2-ddfc-401b-bb47-77e1d84eab01",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "be4215f2-ddfc-401b-bb47-77e1d84eab01",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "be4215f2-ddfc-401b-bb47-77e1d84eab01",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "ff6c1e4b-9d94-4110-9448-22b2ed4f9c63",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 304,
              "y": 224
            }
          ]
        },
        {
          "source": {
            "block": "debf8c8f-50ad-4c3d-810c-1e51fe476456",
            "port": "constant-out"
          },
          "target": {
            "block": "97caa0ed-30e3-45f5-9444-dc275b28e3c9",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "97caa0ed-30e3-45f5-9444-dc275b28e3c9",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "d09ffc6e-110d-41db-bcd4-b508b3aa05f3",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "97caa0ed-30e3-45f5-9444-dc275b28e3c9",
            "port": "598144bb-5ac3-4339-91ec-76eac9e0ffc8"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "97caa0ed-30e3-45f5-9444-dc275b28e3c9",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          }
        },
        {
          "source": {
            "block": "cd6f811c-4a97-4f94-8bd8-1a543f8a7236",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "e6a96072-76cf-4d58-b498-a5df8bc273ab",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "e6a96072-76cf-4d58-b498-a5df8bc273ab",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "08c98096-6aa7-4df0-804e-7e26d168a9f8",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "08c98096-6aa7-4df0-804e-7e26d168a9f8",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "488a4069-148e-4fdc-9dc8-2189366622ef",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "z1"
          },
          "target": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "z1"
          },
          "size": 4
        },
        {
          "source": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "z2"
          },
          "target": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "z2"
          },
          "size": 4
        },
        {
          "source": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "z3"
          },
          "target": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "z3"
          },
          "size": 4
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z0"
          },
          "target": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "z0"
          },
          "size": 4
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ea614321-b948-47e9-baff-b320e1715f33",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "57dc61be-cf0b-4ba5-a1c4-d73383c7b575",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "d9157734-178e-4f77-8051-6ee998f92c8a",
            "port": "out"
          },
          "target": {
            "block": "ea614321-b948-47e9-baff-b320e1715f33",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "ea614321-b948-47e9-baff-b320e1715f33",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "57dc61be-cf0b-4ba5-a1c4-d73383c7b575",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "pause"
          }
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a1"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "sel1"
          }
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a0"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "sel0"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "d3"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "d3"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "d2"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "d2"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "d1"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "d1"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "d0"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "d0"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "c3"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "c3"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "c2"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "c2"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "c1"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "c1"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "c0"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "c0"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "b3"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "b3"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "b2"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "b2"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "a0"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "a0"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "a1"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "a1"
          }
        },
        {
          "source": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "z0"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "16e44a6a-853a-4264-9e9d-2269827ed136"
          }
        },
        {
          "source": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "z1"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "9cdbdf9f-f086-4427-9719-e13470658d97"
          }
        },
        {
          "source": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "z2"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40"
          }
        },
        {
          "source": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "z3"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "2d774807-3ec8-492c-98e2-f1c9da8d68ff"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "b1"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "b1"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "b0"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "b0"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "a3"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "a3"
          }
        },
        {
          "source": {
            "block": "d86c0d32-4852-4f97-8906-e21743fd1683",
            "port": "a2"
          },
          "target": {
            "block": "f10c1f0c-e9e8-4f8f-8807-0eae8be38b66",
            "port": "a2"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 323.6993,
        "y": 47.3089
      },
      "zoom": 0.5011
    }
  },
  "dependencies": {
    "135cadb3eba1a2a0afe60d7b45b670547e7c83b4": {
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
                "code": "//--M Maiztasun zatitzailea\n\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk)\n\n  if (clk_ena)\n    //-- Funcionamiento normal\n    divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1;\n  else\n    //-- Contador \"congelado\" al valor maximo\n    divcounter <= M - 1;\n\n//-- Sacar un pulso de anchura 1 ciclo de reloj si el generador\n//-- esta habilitado (clk_ena == 1)\n//-- en caso contrario se saca 0\nassign clk_out = (divcounter == 0) ? clk_ena : 0;",
                "params": [
                  {
                    "name": "M"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "clk_ena"
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
              },
              "size": {
                "width": 384,
                "height": 256
              }
            },
            {
              "id": "6b532ccd-59eb-4acc-98ce-a44415d0da81",
              "type": "basic.input",
              "data": {
                "name": "clk"
              },
              "position": {
                "x": 200,
                "y": 248
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
            },
            {
              "id": "598144bb-5ac3-4339-91ec-76eac9e0ffc8",
              "type": "basic.input",
              "data": {
                "name": "en",
                "clock": false
              },
              "position": {
                "x": 192,
                "y": 376
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
            },
            {
              "source": {
                "block": "598144bb-5ac3-4339-91ec-76eac9e0ffc8",
                "port": "out"
              },
              "target": {
                "block": "e1dedba2-0a10-4ec8-9e9b-c8ffe8d01b9c",
                "port": "clk_ena"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -28.525,
            "y": -30.1416
          },
          "zoom": 1.301
        }
      }
    },
    "3e6c249e205080168c1bf4ee8dbc33b50653d5f4": {
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
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "10d93310e23daeea6814d2c785127dcb17e7527b": {
      "package": {
        "name": "Debouncer",
        "version": "1.0.0",
        "description": "Remove the rebound on a mechanical switch",
        "author": "Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-251.547%20436.672h22.802v-30.353h5.862v30.353h5.259v-30.353h3.447v30.353h2.984v-30.353h3.506v30.523h6.406V405.77h38.868%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%221.4%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-232.57%20403.877l26.946%2032.391M-205.624%20403.877l-26.946%2032.391%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
              "type": "basic.code",
              "data": {
                "code": "//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\nassign out = btn_out_r;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "in"
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 264,
                "y": 112
              },
              "size": {
                "width": 384,
                "height": 256
              }
            },
            {
              "id": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 144
              }
            },
            {
              "id": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 208
              }
            },
            {
              "id": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "out"
              },
              "target": {
                "block": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": -1
          },
          "zoom": 1
        }
      }
    },
    "6c8610c44ae8c46bb48287efc576bf248791ebd9": {
      "package": {
        "name": "Flip-flop T",
        "version": "1.0.0",
        "description": "Toggle flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-227.932%22%20y=%22429.867%22%20font-weight=%22400%22%20font-size=%2224.601%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-227.932%22%20y=%22429.867%22%3ETFF%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 160,
                "y": -80
              }
            },
            {
              "id": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
              "type": "70ff7f2a2f0ede80fc37c66a997650a1d0d0102b",
              "position": {
                "x": 352,
                "y": -64
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 672,
                "y": -64
              }
            },
            {
              "id": "6d1059f6-855e-429e-8cf2-848f56d2c993",
              "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
              "position": {
                "x": 496,
                "y": -16
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
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "6d1059f6-855e-429e-8cf2-848f56d2c993",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "6855f64f-fa1c-4371-b2e1-a98970674a96"
              }
            },
            {
              "source": {
                "block": "6d1059f6-855e-429e-8cf2-848f56d2c993",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
              },
              "vertices": [
                {
                  "x": 408,
                  "y": 64
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": -14,
            "y": 267.5
          },
          "zoom": 1
        }
      }
    },
    "70ff7f2a2f0ede80fc37c66a997650a1d0d0102b": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-231.121%22%20y=%22429.867%22%20font-weight=%22400%22%20font-size=%2224.601%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-231.121%22%20y=%22429.867%22%3EDFF%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n\nreg q = 1'b0;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
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
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            },
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -146,
            "y": -0.5
          },
          "zoom": 1
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
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "4e8402f5019b4ec6804fb353a0442db7ba0cfd5c": {
      "package": {
        "name": "Hex 7seg CC",
        "version": "1.0.0",
        "description": "Display de 7 segmentos. Cátodo común",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20id=%22Capa_1%22%20viewBox=%220%200%2035.530029%2051.500018%22%20width=%2235.53%22%20height=%2251.5%22%3E%3Cstyle%20id=%22style4204%22%3E.st0%7Bfill:red%7D.st1%7Bfont-family:&apos;FranklinGothic-DemiCond&apos;%7D.st2%7Bfont-size:9.5149px%7D%3C/style%3E%3Cg%20id=%22g4206%22%20transform=%22matrix(.67676%200%200%20.67676%20-11.031%20-3.52)%22%3E%3Cpath%20class=%22st0%22%20id=%22polygon4208%22%20fill=%22red%22%20d=%22M27.7%2020v.1h25.7V20l3-3.2-2.5-2.4H28.2v.1-.1l-3.1%203.3%202.6%202.3z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4210%22%20fill=%22red%22%20d=%22M25.1%2050.4v.1h25.7v-.1l3-3.2-2.6-2.3v-.1H25.5v.1-.1l-3%203.3%202.5%202.3z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4212%22%20fill=%22red%22%20d=%22M48.9%2080.8v.1H23.2v-.1l-3-3.2%202.5-2.3v-.1h25.7v.1l3.1%203.2-2.6%202.4z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4214%22%20fill=%22red%22%20d=%22M19%2044.6l2.3%202.3%203.1-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4216%22%20fill=%22red%22%20d=%22M52.7%2043.9l2.3%202.4%203.1-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4218%22%20fill=%22red%22%20d=%22M16.3%2075.2l2.2%202.4%203.2-3.2%202-22.8-2.3-2.3-3.3%203.1z%22/%3E%3Cpath%20class=%22st0%22%20id=%22polygon4220%22%20fill=%22red%22%20d=%22M49.9%2074.6l2.3%202.4%203.2-3.2%202-22.8-2.3-2.3-3.4%203.1z%22/%3E%3Ccircle%20class=%22st0%22%20cx=%2265.1%22%20cy=%2277.6%22%20r=%223.7%22%20id=%22circle4222%22%20fill=%22red%22/%3E%3C/g%3E%3Ctext%20class=%22st0%20st1%20st2%22%20id=%22text4224%22%20x=%222.532%22%20y=%223.377%22%20style=%22-inkscape-font-specification:sans-serif%22%20font-size=%223.642%22%20font-family=%22sans-serif%22%20fill=%22red%22%20font-weight=%22400%22%3E%3Ctspan%20id=%22tspan4814%22%20font-size=%223.75%22%3ECATODO%20COM%C3%9AN%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "code": "// Catodo común\n//                 gfe_dcba\nlocalparam BCD_0 = 7'b011_1111,\n        BCD_1 = 7'b000_0110,\n        BCD_2 = 7'b101_1011,\n        BCD_3 = 7'b100_1111,\n        BCD_4 = 7'b110_0110,\n        BCD_5 = 7'b110_1101,\n        BCD_6 = 7'b111_1101,\n        BCD_7 = 7'b000_0111,\n        BCD_8 = 7'b111_1111,\n        BCD_9 = 7'b110_1111,\n        BCD_A = 7'b111_0111,\n        BCD_B = 7'b111_1100,\n        BCD_C = 7'b011_1001,\n        BCD_D = 7'b101_1110,\n        BCD_E = 7'b111_1001,\n        BCD_F = 7'b111_0001;\n\nreg [6:0] _o;\n\nalways @(*)\nbegin\n\n    case({h3, h2, h1, h0})\n        4'h0: _o <= BCD_0;\n        4'h1: _o <= BCD_1;\n        4'h2: _o <= BCD_2;\n        4'h3: _o <= BCD_3;\n        4'h4: _o <= BCD_4;\n        4'h5: _o <= BCD_5;\n        4'h6: _o <= BCD_6;\n        4'h7: _o <= BCD_7;\n        4'h8: _o <= BCD_8;\n        4'h9: _o <= BCD_9;\n        4'hA: _o <= BCD_A;\n        4'hB: _o <= BCD_B;\n        4'hC: _o <= BCD_C;\n        4'hD: _o <= BCD_D;\n        4'hE: _o <= BCD_E;\n        4'hF: _o <= BCD_F;\n        default: _o <= 0;\n    endcase\nend\n\nassign {g, f, e, d, c, b, a} = _o;",
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
                  "y": 528
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
                  "y": 448
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
              }
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
                  "y": 776
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
        "state": {
          "pan": {
            "x": -152.0732,
            "y": -209.2108
          },
          "zoom": 0.7374
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
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "506b39fc14d4cbeab0bbecc81a742b949b46f92c": {
      "package": {
        "name": "Demux 1:4",
        "version": "1.0.0",
        "description": "Demultiplexer 1:4",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20421.9h24v7.3l41%2011.7v-9h25v-2h-25v-18h25v-2h-25v-9l-41%2011.8v7.2h-24v2zm26%205.7v-13.5l37-10.8v35l-37-10.7z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
              "type": "basic.output",
              "data": {
                "name": "o0"
              },
              "position": {
                "x": 800,
                "y": 64
              }
            },
            {
              "id": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "type": "basic.code",
              "data": {
                "code": "assign {out3,out2,out1,out0} = in0 << {sel1,sel0};",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "in0"
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
                      "name": "out0"
                    },
                    {
                      "name": "out1"
                    },
                    {
                      "name": "out2"
                    },
                    {
                      "name": "out3"
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
                "x": 56,
                "y": 96
              }
            },
            {
              "id": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
              "type": "basic.output",
              "data": {
                "name": "o1"
              },
              "position": {
                "x": 800,
                "y": 144
              }
            },
            {
              "id": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
              "type": "basic.input",
              "data": {
                "name": "sel0"
              },
              "position": {
                "x": 56,
                "y": 184
              }
            },
            {
              "id": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
              "type": "basic.output",
              "data": {
                "name": "o2"
              },
              "position": {
                "x": 800,
                "y": 224
              }
            },
            {
              "id": "657dab9e-6580-4f02-b54f-66477863f26a",
              "type": "basic.input",
              "data": {
                "name": "sel1"
              },
              "position": {
                "x": 56,
                "y": 272
              }
            },
            {
              "id": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
              "type": "basic.output",
              "data": {
                "name": "o3"
              },
              "position": {
                "x": 800,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "out0"
              },
              "target": {
                "block": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "out1"
              },
              "target": {
                "block": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "out2"
              },
              "target": {
                "block": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "out3"
              },
              "target": {
                "block": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                "port": "out"
              },
              "target": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "in0"
              }
            },
            {
              "source": {
                "block": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
                "port": "out"
              },
              "target": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "sel0"
              }
            },
            {
              "source": {
                "block": "657dab9e-6580-4f02-b54f-66477863f26a",
                "port": "out"
              },
              "target": {
                "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
                "port": "sel1"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 11.1761,
            "y": 3.2151
          },
          "zoom": 0.9235
        }
      }
    }
  }
}