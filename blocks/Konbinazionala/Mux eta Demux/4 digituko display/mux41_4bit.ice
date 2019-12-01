{
  "version": "1.1",
  "package": {
    "name": "MUX 16:4",
    "version": "",
    "description": "4 busen artean, z[3:0], hautatu egiten du ",
    "author": "Lorea",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22210mm%22%20height=%22297mm%22%20viewBox=%220%200%20210%20297%22%3E%3Cpath%20d=%22M53.719%2055.94l106.678%2038.997v159.279L53.72%20288.985z%22%20fill=%22none%22%20stroke=%22#121001%22%20stroke-width=%225.572%22%20stroke-opacity=%22.952%22/%3E%3Cpath%20d=%22M161.03%20173.671h17.64M35.042%2090.501H52.68M34.593%20145.083h17.64M35.042%20199.764H52.68M35.042%20257.58H52.68%22%20stroke=%22#000300%22%20stroke-width=%225.56%22/%3E%3Ctext%20style=%22line-height:0%25;-inkscape-font-specification:Verdana%22%20x=%22-1.562%22%20y=%2236.196%22%20transform=%22scale(.83599%201.1962)%22%20font-weight=%22400%22%20font-family=%22Verdana%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#7532f1%22%3E%3Ctspan%20x=%22-1.562%22%20y=%2236.196%22%20style=%22line-height:1.25;-inkscape-font-specification:'Verdana%20Bold'%22%20font-weight=%22700%22%20font-size=%2247.115%22%20fill=%22#004800%22%3EMUX%2016:4%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "76b08a1e-7a66-4884-82e2-a362720cc663",
          "type": "basic.input",
          "data": {
            "name": "z0",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
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
            "x": 232,
            "y": 72
          }
        },
        {
          "id": "5e3c19c2-125f-4d80-936f-a62e8a7cb3c4",
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
            "x": 808,
            "y": 96
          }
        },
        {
          "id": "a99b99e5-b7c0-41e9-b00f-2133ff4cf980",
          "type": "basic.input",
          "data": {
            "name": "z1",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
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
            "x": 232,
            "y": 160
          }
        },
        {
          "id": "5e1354f7-6134-4513-84cc-d92eba74355c",
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
            "x": 808,
            "y": 216
          }
        },
        {
          "id": "375eb7be-2de3-4233-9692-e1932e8d6b69",
          "type": "basic.input",
          "data": {
            "name": "z2",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
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
            "x": 232,
            "y": 240
          }
        },
        {
          "id": "5d8a1338-3150-48c6-a63d-c06ae49ea341",
          "type": "basic.input",
          "data": {
            "name": "z3",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
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
            "x": 232,
            "y": 320
          }
        },
        {
          "id": "de44a242-8bd9-4b01-891b-0b07a2acb0c5",
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
            "x": 808,
            "y": 344
          }
        },
        {
          "id": "3f908099-1de5-43e4-ae46-2b0d3270708e",
          "type": "basic.input",
          "data": {
            "name": "sel0",
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
            "x": 232,
            "y": 408
          }
        },
        {
          "id": "8f3a2516-b785-45c3-aa89-61638ee2bc7c",
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
            "x": 808,
            "y": 464
          }
        },
        {
          "id": "81bcc67b-177f-4175-8ec9-8acd20e74cb6",
          "type": "basic.input",
          "data": {
            "name": "sel1",
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
            "x": 240,
            "y": 488
          }
        },
        {
          "id": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
          "type": "basic.code",
          "data": {
            "code": "reg [3:0]_z;\n\nwire [1:0] _sel;\n\nassign _sel = {sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: begin\n           _z = z0;\n           end\n        1: begin\n           _z = z1;\n           end\n        2: begin \n           _z = z2;\n           end\n        3: begin\n           _z = z3;\n           end\n        default: begin\n           _z = z0;\n           end\n    endcase\nend\n\nassign {a3,a2,a1,a0} = _z;",
            "params": [],
            "ports": {
              "in": [
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
                  "name": "sel0"
                },
                {
                  "name": "sel1"
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
                }
              ]
            }
          },
          "position": {
            "x": 424,
            "y": 64
          },
          "size": {
            "width": 320,
            "height": 496
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "81bcc67b-177f-4175-8ec9-8acd20e74cb6",
            "port": "out"
          },
          "target": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "sel1"
          }
        },
        {
          "source": {
            "block": "3f908099-1de5-43e4-ae46-2b0d3270708e",
            "port": "out"
          },
          "target": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "sel0"
          }
        },
        {
          "source": {
            "block": "76b08a1e-7a66-4884-82e2-a362720cc663",
            "port": "out"
          },
          "target": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "z0"
          },
          "size": 4
        },
        {
          "source": {
            "block": "a99b99e5-b7c0-41e9-b00f-2133ff4cf980",
            "port": "out"
          },
          "target": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "z1"
          },
          "size": 4
        },
        {
          "source": {
            "block": "375eb7be-2de3-4233-9692-e1932e8d6b69",
            "port": "out"
          },
          "target": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "z2"
          },
          "size": 4
        },
        {
          "source": {
            "block": "5d8a1338-3150-48c6-a63d-c06ae49ea341",
            "port": "out"
          },
          "target": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "z3"
          },
          "size": 4
        },
        {
          "source": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "a0"
          },
          "target": {
            "block": "5e3c19c2-125f-4d80-936f-a62e8a7cb3c4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "a3"
          },
          "target": {
            "block": "8f3a2516-b785-45c3-aa89-61638ee2bc7c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "a2"
          },
          "target": {
            "block": "de44a242-8bd9-4b01-891b-0b07a2acb0c5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4a2997d4-8d47-491e-a175-a81c4090b7e1",
            "port": "a1"
          },
          "target": {
            "block": "5e1354f7-6134-4513-84cc-d92eba74355c",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 401,
        "y": 165.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}