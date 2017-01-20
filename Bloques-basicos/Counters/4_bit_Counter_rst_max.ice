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
          "id": "96aa78b8-04d9-4bbe-b82a-9a959a0e6ba7",
          "type": "basic.constant",
          "data": {
            "name": "MAX",
            "value": "5",
            "local": false
          },
          "position": {
            "x": 480,
            "y": 88
          }
        },
        {
          "id": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
          "type": "basic.code",
          "data": {
            "code": "// Counter 4 bit\n\nreg c;\nalways @(posedge clk) begin\n  if ((rst == 1) || (c == MAX))\n    c <= 0;\n  else if ((ena == 1) && (c < MAX))\n    c <= c + 1;\nend",
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
                  "name": "ena"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "c",
                  "range": "[5:0]",
                  "size": 6
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
          "id": "47bee272-6590-4de1-add6-3d081a7a5ef2",
          "type": "basic.output",
          "data": {
            "name": "c",
            "range": "[5:0]",
            "pins": [
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
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
            "block": "b7cfac87-9a5d-4043-99bb-9b09c06649d9",
            "port": "out"
          },
          "target": {
            "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ccc7b60f-c270-4d47-9ca5-10ccf23bbea4",
            "port": "out"
          },
          "target": {
            "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
            "port": "ena"
          }
        },
        {
          "source": {
            "block": "e3381038-f8a3-4630-bb40-6999d9e9ca0c",
            "port": "out"
          },
          "target": {
            "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
            "port": "c"
          },
          "target": {
            "block": "47bee272-6590-4de1-add6-3d081a7a5ef2",
            "port": "in"
          },
          "size": 6
        },
        {
          "source": {
            "block": "96aa78b8-04d9-4bbe-b82a-9a959a0e6ba7",
            "port": "constant-out"
          },
          "target": {
            "block": "0e47465d-7559-47ca-8b5c-3a9d5ac407cf",
            "port": "MAX"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": -95,
        "y": -67
      },
      "zoom": 1
    }
  }
}