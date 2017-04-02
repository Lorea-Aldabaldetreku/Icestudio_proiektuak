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
            "x": -80,
            "y": -120
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
            "x": -400,
            "y": -112
          }
        },
        {
          "id": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
          "type": "basic.code",
          "data": {
            "code": "// 4 biteko zenbatzailea \n// reset eta pause funtzioak\nreg coun = 0;\nreg counpause = 0;\nreg hasi = 0;\n\nalways @(posedge clk) begin\n    if (rst==0) begin\n     coun<= 0;\n     counpause <= 0;\n     hasi <= 1;\n   end\n   if ((pause==0) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= 0;\n     hasi <= 1;\n   end\n   else if ((pause==0) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= coun+1;\n     hasi <= 0;\n   end\n    if ((pause==1) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= counpause;\n     hasi <= 1;\n   end\n   else if ((pause==1) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= counpause;\n     hasi <= 0;\n   end\n  end\n \n assign has = hasi;\n",
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
                },
                {
                  "name": "pause"
                }
              ],
              "out": [
                {
                  "name": "coun",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "counpause",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "has"
                }
              ]
            }
          },
          "position": {
            "x": -232,
            "y": 0
          },
          "size": {
            "width": 400,
            "height": 224
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
            "x": -704,
            "y": 8
          }
        },
        {
          "id": "61019820-0dc8-4428-ace0-52b26d1485be",
          "type": "8f9fee0d3423a9b8febade3a93297f29e5e9da4a",
          "position": {
            "x": -400,
            "y": 8
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
          "type": "basic.code",
          "data": {
            "code": "// Multiplexorea \n// pause funtzioa\nreg [3:0] bal;\n\nalways @(posedge clk) begin\n if (rst ==0) \n bal = c;\n else if (pause ==0) \n        bal = c;\n else if (pause ==1)\n      bal = cp;\n    \nend\n\nassign {z3, z2, z1, z0} = bal;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "c",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "cp",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "pause"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
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
            "x": 328,
            "y": 48
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
          "type": "903e23d5d0f911df7bf3e4317d3833c225d577da",
          "position": {
            "x": 1296,
            "y": 80
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "edbad291-264e-4ee1-8f15-934f6f940b81",
          "type": "basic.code",
          "data": {
            "code": "reg balioa = 0;\r\nalways @(posedge push) begin\r\n\r\n     if (balioa == 0)\r\n     balioa <= 1;\r\n\r\n    else if (balioa == 1)\r\n      balioa <= 0;\r\n      \r\nend\r\nassign reset = balioa;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "push"
                }
              ],
              "out": [
                {
                  "name": "reset"
                }
              ]
            }
          },
          "position": {
            "x": -1024,
            "y": 88
          },
          "size": {
            "width": 384,
            "height": 256
          }
        },
        {
          "id": "59285eea-0889-4322-9482-b8c690647766",
          "type": "basic.input",
          "data": {
            "name": "Reset",
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
            "x": -1200,
            "y": 184
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
            "x": 1752,
            "y": 240
          }
        },
        {
          "id": "2003a476-5b9d-453d-a3f0-311a2e452485",
          "type": "903e23d5d0f911df7bf3e4317d3833c225d577da",
          "position": {
            "x": 1272,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 192
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
            "x": 1768,
            "y": 312
          }
        },
        {
          "id": "6249ca23-f684-4170-87d6-b79eb3077f45",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": -96,
            "y": 320
          }
        },
        {
          "id": "8fc020a5-0153-4a14-9646-e7742154b9ee",
          "type": "4e8402f5019b4ec6804fb353a0442db7ba0cfd5c",
          "position": {
            "x": 1520,
            "y": 344
          },
          "size": {
            "width": 96,
            "height": 224
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
            "x": 1784,
            "y": 376
          }
        },
        {
          "id": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
          "type": "basic.code",
          "data": {
            "code": "reg balioa = 0;\r\nalways @(posedge push) begin\r\n\r\n     if (balioa == 0)\r\n     balioa <= 1;\r\n\r\n    else if (balioa == 1)\r\n      balioa <= 0;\r\n      \r\nend\r\nassign pause = balioa;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "push"
                }
              ],
              "out": [
                {
                  "name": "pause"
                }
              ]
            }
          },
          "position": {
            "x": -1024,
            "y": 392
          },
          "size": {
            "width": 384,
            "height": 256
          }
        },
        {
          "id": "b1b1866c-1917-412a-8bb2-e83400a87916",
          "type": "basic.code",
          "data": {
            "code": "// 4 biteko zenbatzailea \n// reset eta pause funtzioak\nreg coun = 0;\nreg counpause = 0;\nreg hasi = 0;\n\nalways @(posedge clk) begin\n    if (rst==0) begin\n     coun<= 0;\n     counpause <= 0;\n     hasi <= 1;\n   end\n   if ((pause==0) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= 0;\n     hasi <= 1;\n   end\n   else if ((pause==0) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= coun+1;\n     hasi <= 0;\n   end\n    if ((pause==1) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= counpause;\n     hasi <= 1;\n   end\n   else if ((pause==1) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= counpause;\n     hasi <= 0;\n   end\n  end\n \n assign has = hasi;\n",
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
                },
                {
                  "name": "pause"
                }
              ],
              "out": [
                {
                  "name": "coun",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "counpause",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "has"
                }
              ]
            }
          },
          "position": {
            "x": -248,
            "y": 432
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
          "type": "basic.code",
          "data": {
            "code": "// Multiplexorea \n// pause funtzioa\nreg [3:0] bal;\n\nalways @(posedge clk) begin\n if (rst ==0) \n bal = c;\n else if (pause ==0) \n        bal = c;\n else if (pause ==1)\n      bal = cp;\n    \nend\n\nassign {z3, z2, z1, z0} = bal;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "c",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "cp",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "pause"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
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
            "x": 352,
            "y": 448
          },
          "size": {
            "width": 400,
            "height": 224
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
            "x": 1784,
            "y": 448
          }
        },
        {
          "id": "70227e0d-92bf-4966-b073-737974436cef",
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
            "x": -1192,
            "y": 488
          }
        },
        {
          "id": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
          "type": "903e23d5d0f911df7bf3e4317d3833c225d577da",
          "position": {
            "x": 1240,
            "y": 488
          },
          "size": {
            "width": 96,
            "height": 192
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
            "x": 1784,
            "y": 520
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
            "x": 1776,
            "y": 592
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
            "x": 1760,
            "y": 664
          }
        },
        {
          "id": "567b1531-2474-48c9-afcc-239f1db69587",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "5",
            "local": false
          },
          "position": {
            "x": -104,
            "y": 680
          }
        },
        {
          "id": "5fb1f347-8887-4dad-8459-460ff725e3c4",
          "type": "903e23d5d0f911df7bf3e4317d3833c225d577da",
          "position": {
            "x": 1200,
            "y": 712
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "051a6ca4-e198-4e36-a145-57e054b7009a",
          "type": "basic.code",
          "data": {
            "code": "// 4 biteko zenbatzailea \n// reset eta pause funtzioak\nreg coun = 0;\nreg counpause = 0;\nreg hasi = 0;\n\nalways @(posedge clk) begin\n    if (rst==0) begin\n     coun<= 0;\n     counpause <= 0;\n     hasi <= 1;\n   end\n   if ((pause==0) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= 0;\n     hasi <= 1;\n   end\n   else if ((pause==0) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= coun+1;\n     hasi <= 0;\n   end\n    if ((pause==1) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= counpause;\n     hasi <= 1;\n   end\n   else if ((pause==1) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= counpause;\n     hasi <= 0;\n   end\n  end\n \n assign has = hasi;\n",
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
                },
                {
                  "name": "pause"
                }
              ],
              "out": [
                {
                  "name": "coun",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "counpause",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "has"
                }
              ]
            }
          },
          "position": {
            "x": -256,
            "y": 792
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
          "type": "basic.code",
          "data": {
            "code": "// Multiplexorea \n// pause funtzioa\nreg [3:0] bal;\n\nalways @(posedge clk) begin\n if (rst ==0) \n bal = c;\n else if (pause ==0) \n        bal = c;\n else if (pause ==1)\n      bal = cp;\n    \nend\n\nassign {z3, z2, z1, z0} = bal;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "c",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "cp",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "pause"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
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
            "x": 360,
            "y": 808
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "7932f045-ec51-4880-914f-be2f7fcc5cbd",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "9",
            "local": false
          },
          "position": {
            "x": -128,
            "y": 1016
          }
        },
        {
          "id": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
          "type": "basic.code",
          "data": {
            "code": "// 4 biteko zenbatzailea \n// reset eta pause funtzioak\nreg coun = 0;\nreg counpause = 0;\n\nalways @(posedge clk) begin\n     if (rst==0) begin\n     coun<= 0;\n     counpause <= 0;\n   end\n   if ((pause==0) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= 0;\n   end\n   else if ((pause==0) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= coun+1;\n   end\n    if ((pause==1) && (coun == MAX)) begin\n     coun <= 0;\n     counpause <= counpause;\n   end\n   else if ((pause==1) && (rst ==1)) begin\n     coun <= coun+1;\n     counpause <= counpause;\n   end\n  end\n \n\n",
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
                },
                {
                  "name": "pause"
                }
              ],
              "out": [
                {
                  "name": "coun",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "counpause",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": -280,
            "y": 1128
          },
          "size": {
            "width": 400,
            "height": 224
          }
        },
        {
          "id": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
          "type": "basic.code",
          "data": {
            "code": "// Multiplexorea \n// pause funtzioa\nreg [3:0] bal;\n\nalways @(posedge clk) begin\n if (rst ==0) \n bal = c;\n else if (pause ==0) \n        bal = c;\n else if (pause ==1)\n      bal = cp;\n    \nend\n\nassign {z3, z2, z1, z0} = bal;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "c",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "cp",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "pause"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
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
            "x": 312,
            "y": 1160
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
            "x": 1672,
            "y": 1248
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
            "x": 1832,
            "y": 1248
          }
        },
        {
          "id": "c482b62b-c657-4148-b1fb-84eba44fedd7",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1688,
            "y": 1352
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
            "x": 1832,
            "y": 1352
          }
        },
        {
          "id": "36dba644-2f4f-480d-a95f-a295d2efa929",
          "type": "basic.constant",
          "data": {
            "name": "M",
            "value": "60_000",
            "local": false
          },
          "position": {
            "x": 128,
            "y": 1392
          }
        },
        {
          "id": "a536b1a7-1c8d-4b06-8fb3-828e7111ff52",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": 1304,
            "y": 1408
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
            "x": 1488,
            "y": 1416
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
            "x": 1688,
            "y": 1440
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
            "x": 1832,
            "y": 1440
          }
        },
        {
          "id": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
          "type": "basic.code",
          "data": {
            "code": "// 2 biteko zanbatzailea\n\nreg [1:0] counter;\n\nalways @(posedge clk)\n  counter <= counter + 1;\n\nassign {a0, a1} = counter;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
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
          "id": "e736c68a-dd78-4110-94c4-f5232c4b764a",
          "type": "8f9fee0d3423a9b8febade3a93297f29e5e9da4a",
          "position": {
            "x": 128,
            "y": 1536
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e46393c0-960d-403e-b758-4efc25b960b6",
          "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
          "position": {
            "x": 1688,
            "y": 1544
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
            "x": 1832,
            "y": 1544
          }
        }
      ],
      "wires": [
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
              "x": 1728,
              "y": 360
            }
          ]
        },
        {
          "source": {
            "block": "36dba644-2f4f-480d-a95f-a295d2efa929",
            "port": "constant-out"
          },
          "target": {
            "block": "e736c68a-dd78-4110-94c4-f5232c4b764a",
            "port": "52378f47-853e-46bb-b0ef-84acc901be83"
          }
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "e736c68a-dd78-4110-94c4-f5232c4b764a",
            "port": "6b532ccd-59eb-4acc-98ce-a44415d0da81"
          },
          "vertices": [
            {
              "x": -440,
              "y": 104
            }
          ]
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
              "x": 1448,
              "y": 1504
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
            "block": "e736c68a-dd78-4110-94c4-f5232c4b764a",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "16e44a6a-853a-4264-9e9d-2269827ed136"
          }
        },
        {
          "source": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "9cdbdf9f-f086-4427-9719-e13470658d97"
          }
        },
        {
          "source": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "f40ab7a8-10e5-4e7f-94f9-cefd697d5d40"
          },
          "vertices": [
            {
              "x": 1480,
              "y": 520
            }
          ]
        },
        {
          "source": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "061aa997-2f30-4591-8841-fb6abf5c3b2e"
          },
          "target": {
            "block": "8fc020a5-0153-4a14-9646-e7742154b9ee",
            "port": "2d774807-3ec8-492c-98e2-f1c9da8d68ff"
          }
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z0"
          },
          "target": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          }
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z1"
          },
          "target": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          },
          "vertices": [
            {
              "x": 784,
              "y": 144
            }
          ]
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z2"
          },
          "target": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          },
          "vertices": [
            {
              "x": 760,
              "y": 192
            }
          ]
        },
        {
          "source": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "z3"
          },
          "target": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "c3f73f68-1074-4355-b69f-6a20f7bea3e7"
          },
          "vertices": [
            {
              "x": 768,
              "y": 296
            }
          ]
        },
        {
          "source": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "z0"
          },
          "target": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          },
          "vertices": [
            {
              "x": 824,
              "y": 144
            }
          ]
        },
        {
          "source": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "z1"
          },
          "target": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          },
          "vertices": [
            {
              "x": 848,
              "y": 352
            }
          ]
        },
        {
          "source": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "z2"
          },
          "target": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          }
        },
        {
          "source": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "z3"
          },
          "target": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "5fb29465-2ee7-45bb-afa4-9a3de895c774"
          },
          "vertices": [
            {
              "x": 800,
              "y": 608
            }
          ]
        },
        {
          "source": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "z0"
          },
          "target": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          },
          "vertices": [
            {
              "x": 864,
              "y": 176
            }
          ]
        },
        {
          "source": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "z1"
          },
          "target": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          },
          "vertices": [
            {
              "x": 896,
              "y": 376
            }
          ]
        },
        {
          "source": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "z2"
          },
          "target": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          },
          "vertices": [
            {
              "x": 928,
              "y": 600
            }
          ]
        },
        {
          "source": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "z3"
          },
          "target": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "67ed5e09-486d-4f97-929f-aefea9c43951"
          },
          "vertices": [
            {
              "x": 952,
              "y": 800
            }
          ]
        },
        {
          "source": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "z0"
          },
          "target": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
          },
          "vertices": [
            {
              "x": 944,
              "y": 208
            }
          ]
        },
        {
          "source": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "z1"
          },
          "target": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
          },
          "vertices": [
            {
              "x": 1024,
              "y": 424
            }
          ]
        },
        {
          "source": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "z2"
          },
          "target": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
          },
          "vertices": [
            {
              "x": 1064,
              "y": 640
            }
          ]
        },
        {
          "source": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "z3"
          },
          "target": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "8be9cded-6d06-4b23-b73c-94c7ff311dbc"
          },
          "vertices": [
            {
              "x": 1080,
              "y": 856
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a0"
          },
          "target": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
          },
          "vertices": [
            {
              "x": 976,
              "y": 232
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a0"
          },
          "target": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
          },
          "vertices": [
            {
              "x": 1048,
              "y": 472
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a0"
          },
          "target": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
          },
          "vertices": [
            {
              "x": 1088,
              "y": 696
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a0"
          },
          "target": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "1b7db016-c89a-4f65-b6f0-0f87c851c077"
          },
          "vertices": [
            {
              "x": 1096,
              "y": 904
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a1"
          },
          "target": {
            "block": "cbf6c487-d3ff-4c70-9709-3258b67ebc8f",
            "port": "a014971e-5470-490b-9058-b4b00f2dd125"
          },
          "vertices": [
            {
              "x": 1008,
              "y": 272
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a1"
          },
          "target": {
            "block": "2003a476-5b9d-453d-a3f0-311a2e452485",
            "port": "a014971e-5470-490b-9058-b4b00f2dd125"
          },
          "vertices": [
            {
              "x": 1080,
              "y": 480
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a1"
          },
          "target": {
            "block": "a9c1f645-654d-4bb7-92ff-e1b8e05d3f0c",
            "port": "a014971e-5470-490b-9058-b4b00f2dd125"
          },
          "vertices": [
            {
              "x": 1104,
              "y": 696
            }
          ]
        },
        {
          "source": {
            "block": "8e7d4974-e04f-4e1d-9794-483d7523a3d6",
            "port": "a1"
          },
          "target": {
            "block": "5fb1f347-8887-4dad-8459-460ff725e3c4",
            "port": "a014971e-5470-490b-9058-b4b00f2dd125"
          }
        },
        {
          "source": {
            "block": "70227e0d-92bf-4966-b073-737974436cef",
            "port": "out"
          },
          "target": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "push"
          }
        },
        {
          "source": {
            "block": "59285eea-0889-4322-9482-b8c690647766",
            "port": "out"
          },
          "target": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "push"
          }
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "rst"
          },
          "vertices": [
            {
              "x": -304,
              "y": 904
            }
          ]
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "rst"
          },
          "vertices": [
            {
              "x": -336,
              "y": 1272
            }
          ]
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "pause"
          },
          "vertices": [
            {
              "x": -416,
              "y": 1336
            },
            {
              "x": 272,
              "y": 1328
            }
          ]
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "pause"
          },
          "vertices": [
            {
              "x": -400,
              "y": 992
            },
            {
              "x": 320,
              "y": 952
            }
          ]
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "pause"
          },
          "vertices": [
            {
              "x": -376,
              "y": 608
            }
          ]
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "pause"
          },
          "vertices": [
            {
              "x": -360,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "cb11e83c-137d-486f-ad5b-8440e60021e5",
            "port": "constant-out"
          },
          "target": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "MAX"
          }
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "rst"
          },
          "vertices": [
            {
              "x": -248,
              "y": 136
            }
          ]
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "pause"
          }
        },
        {
          "source": {
            "block": "6249ca23-f684-4170-87d6-b79eb3077f45",
            "port": "constant-out"
          },
          "target": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "MAX"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "has"
          },
          "target": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 24,
              "y": 288
            }
          ]
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "rst"
          },
          "vertices": [
            {
              "x": -520,
              "y": 472
            }
          ]
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "pause"
          }
        },
        {
          "source": {
            "block": "61019820-0dc8-4428-ace0-52b26d1485be",
            "port": "b669f922-036a-40e5-b4de-a6809cf99675"
          },
          "target": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "clk"
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
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "clk"
          },
          "vertices": [
            {
              "x": 216,
              "y": 48
            }
          ]
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "rst"
          },
          "vertices": [
            {
              "x": 248,
              "y": 424
            }
          ]
        },
        {
          "source": {
            "block": "567b1531-2474-48c9-afcc-239f1db69587",
            "port": "constant-out"
          },
          "target": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "MAX"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "has"
          },
          "target": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "clk"
          },
          "vertices": [
            {
              "x": -24,
              "y": 672
            }
          ]
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "pause"
          }
        },
        {
          "source": {
            "block": "7932f045-ec51-4880-914f-be2f7fcc5cbd",
            "port": "constant-out"
          },
          "target": {
            "block": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
            "port": "MAX"
          },
          "vertices": []
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
              "x": 256,
              "y": 64
            }
          ]
        },
        {
          "source": {
            "block": "ea127b10-00c3-4b10-b044-c3fecaf1ce5b",
            "port": "out"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "clk"
          },
          "vertices": [
            {
              "x": -280,
              "y": 1056
            }
          ]
        },
        {
          "source": {
            "block": "edbad291-264e-4ee1-8f15-934f6f940b81",
            "port": "reset"
          },
          "target": {
            "block": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "d4bd2056-78a5-470c-9f0c-54be57df09cf",
            "port": "pause"
          },
          "target": {
            "block": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
            "port": "pause"
          },
          "vertices": [
            {
              "x": -320,
              "y": 1200
            }
          ]
        },
        {
          "source": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "has"
          },
          "target": {
            "block": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "coun"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "c"
          },
          "vertices": [
            {
              "x": 280,
              "y": 64
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "c2d4d728-b669-4df1-b0ce-2d0a77873d7c",
            "port": "counpause"
          },
          "target": {
            "block": "6325f048-e4d0-45e7-8c26-9ec5c7af86da",
            "port": "cp"
          },
          "size": 4
        },
        {
          "source": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "coun"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "c"
          },
          "size": 4
        },
        {
          "source": {
            "block": "b1b1866c-1917-412a-8bb2-e83400a87916",
            "port": "counpause"
          },
          "target": {
            "block": "1a2c4ba8-df6a-461e-abbb-ba34fe67dac0",
            "port": "cp"
          },
          "size": 4
        },
        {
          "source": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "coun"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "c"
          },
          "size": 4
        },
        {
          "source": {
            "block": "051a6ca4-e198-4e36-a145-57e054b7009a",
            "port": "counpause"
          },
          "target": {
            "block": "df4bcea1-75f4-4cb2-b218-615aecb27ab7",
            "port": "cp"
          },
          "size": 4
        },
        {
          "source": {
            "block": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
            "port": "coun"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "c"
          },
          "size": 4
        },
        {
          "source": {
            "block": "14136ad6-8650-46cb-a8cf-a5c199a970cc",
            "port": "counpause"
          },
          "target": {
            "block": "68eed0ed-c57d-4cb4-9e7a-b72367069dbc",
            "port": "cp"
          },
          "size": 4
        }
      ]
    },
    "state": {
      "pan": {
        "x": 733.2669,
        "y": 21.2551
      },
      "zoom": 0.5842
    }
  },
  "dependencies": {
    "8f9fee0d3423a9b8febade3a93297f29e5e9da4a": {
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
        "state": {
          "pan": {
            "x": -167.525,
            "y": -74.1416
          },
          "zoom": 1.301
        }
      }
    },
    "903e23d5d0f911df7bf3e4317d3833c225d577da": {
      "package": {
        "name": "Mux 4:1",
        "version": "1.0.0",
        "description": "Multiplexer 4:1",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-162%20419.9h-24v-7.2l-41-11.8v9h-25v2h25v18h-25v2h25v9l41-11.7v-7.4h24v-1.9zm-63%2018.5v-35l37%2010.8v13.5l-37%2010.7z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c3f73f68-1074-4355-b69f-6a20f7bea3e7",
              "type": "basic.input",
              "data": {
                "name": "i0"
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
                "name": "i1"
              },
              "position": {
                "x": 40,
                "y": 104
              }
            },
            {
              "id": "e4eb896c-1039-4d73-aeb0-ce34b933f4c3",
              "type": "basic.code",
              "data": {
                "code": "reg _o;\nwire [1:0] _sel;\n\nassign _sel = {sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "in0"
                    },
                    {
                      "name": "in1"
                    },
                    {
                      "name": "in2"
                    },
                    {
                      "name": "in3"
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
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 152
              }
            },
            {
              "id": "67ed5e09-486d-4f97-929f-aefea9c43951",
              "type": "basic.input",
              "data": {
                "name": "i2"
              },
              "position": {
                "x": 40,
                "y": 184
              }
            },
            {
              "id": "061aa997-2f30-4591-8841-fb6abf5c3b2e",
              "type": "basic.output",
              "data": {
                "name": "o"
              },
              "position": {
                "x": 776,
                "y": 248
              }
            },
            {
              "id": "8be9cded-6d06-4b23-b73c-94c7ff311dbc",
              "type": "basic.input",
              "data": {
                "name": "i3"
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
                "name": "sel0"
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
                "name": "sel1"
              },
              "position": {
                "x": 40,
                "y": 400
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