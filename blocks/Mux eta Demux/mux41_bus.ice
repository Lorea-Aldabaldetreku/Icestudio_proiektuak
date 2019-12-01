{
  "version": "1.1",
  "package": {
    "name": "multiplexorea 4:1",
    "version": "",
    "description": "Zirkuitu multiplexorea (MUX) datu hautatzailea da",
    "author": "Lorea",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-162%20419.9h-24v-7.2l-41-11.8v9h-25v2h25v18h-25v2h25v9l41-11.7v-7.4h24v-1.9zm-63%2018.5v-35l37%2010.8v13.5l-37%2010.7z%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "fec41126-180d-4939-a97a-bf08a168e68c",
          "type": "basic.input",
          "data": {
            "name": "i0",
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
            "x": 144,
            "y": 32
          }
        },
        {
          "id": "990ccdb7-94e1-432c-a50c-76b83de2b125",
          "type": "basic.input",
          "data": {
            "name": "i1",
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
            "x": 144,
            "y": 104
          }
        },
        {
          "id": "c3c7ff3b-0e5b-4229-a4fc-79bbe5c002b9",
          "type": "basic.input",
          "data": {
            "name": "i2",
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
            "x": 136,
            "y": 176
          }
        },
        {
          "id": "cc16015f-1565-4350-bc8c-1a6734cee36f",
          "type": "basic.input",
          "data": {
            "name": "i3",
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
            "x": 136,
            "y": 248
          }
        },
        {
          "id": "696e165f-27d9-4726-a246-2c46ef454839",
          "type": "basic.output",
          "data": {
            "name": "o",
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
            "x": 784,
            "y": 304
          }
        },
        {
          "id": "ad81a79f-4dc1-43c7-ae33-1519ec4d765b",
          "type": "basic.input",
          "data": {
            "name": "sel",
            "range": "[1:0]",
            "pins": [
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
            "x": 152,
            "y": 408
          }
        },
        {
          "id": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
          "type": "basic.code",
          "data": {
            "code": "reg _o;\nwire [1:0] _sel;\n\nassign _sel = sel;\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
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
                  "name": "sel",
                  "range": "[1:0]",
                  "size": 2
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
            "x": 376,
            "y": 216
          },
          "size": {
            "width": 320,
            "height": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "o"
          },
          "target": {
            "block": "696e165f-27d9-4726-a246-2c46ef454839",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fec41126-180d-4939-a97a-bf08a168e68c",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in0"
          }
        },
        {
          "source": {
            "block": "990ccdb7-94e1-432c-a50c-76b83de2b125",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in1"
          }
        },
        {
          "source": {
            "block": "c3c7ff3b-0e5b-4229-a4fc-79bbe5c002b9",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in2"
          }
        },
        {
          "source": {
            "block": "cc16015f-1565-4350-bc8c-1a6734cee36f",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in3"
          }
        },
        {
          "source": {
            "block": "ad81a79f-4dc1-43c7-ae33-1519ec4d765b",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "sel"
          },
          "size": 2
        }
      ]
    },
    "state": {
      "pan": {
        "x": 533,
        "y": 233.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}