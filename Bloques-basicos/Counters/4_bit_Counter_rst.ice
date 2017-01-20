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
          "id": "2e7b71e1-3957-4b2b-a22a-ed904219c649",
          "type": "basic.code",
          "data": {
            "code": "// Counter 4 bit\n\nreg c;\nalways @(posedge clk) begin\n  if (rst == 1)\n    c <= 0;\n  else if (ena == 1)\n    c <= c + 1;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "ena"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "c",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 336,
            "y": 240
          }
        },
        {
          "id": "b7cfac87-9a5d-4043-99bb-9b09c06649d9",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "x": 152,
            "y": 248
          }
        },
        {
          "id": "ccc7b60f-c270-4d47-9ca5-10ccf23bbea4",
          "type": "basic.input",
          "data": {
            "name": "ena",
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
            "x": 152,
            "y": 336
          }
        },
        {
          "id": "c80fec72-156a-472d-a80a-7a732e3abef6",
          "type": "basic.output",
          "data": {
            "name": "c",
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
            "virtual": true
          },
          "position": {
            "x": 816,
            "y": 336
          }
        },
        {
          "id": "e3381038-f8a3-4630-bb40-6999d9e9ca0c",
          "type": "basic.input",
          "data": {
            "name": "rst",
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
            "x": 152,
            "y": 424
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e3381038-f8a3-4630-bb40-6999d9e9ca0c",
            "port": "out"
          },
          "target": {
            "block": "2e7b71e1-3957-4b2b-a22a-ed904219c649",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "ccc7b60f-c270-4d47-9ca5-10ccf23bbea4",
            "port": "out"
          },
          "target": {
            "block": "2e7b71e1-3957-4b2b-a22a-ed904219c649",
            "port": "ena"
          }
        },
        {
          "source": {
            "block": "b7cfac87-9a5d-4043-99bb-9b09c06649d9",
            "port": "out"
          },
          "target": {
            "block": "2e7b71e1-3957-4b2b-a22a-ed904219c649",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "2e7b71e1-3957-4b2b-a22a-ed904219c649",
            "port": "c"
          },
          "target": {
            "block": "c80fec72-156a-472d-a80a-7a732e3abef6",
            "port": "in"
          },
          "size": 4
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": 191,
        "y": 7
      },
      "zoom": 1
    }
  }
}