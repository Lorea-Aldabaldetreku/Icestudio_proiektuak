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
          "id": "1e3110a6-5f1f-433a-859d-a745c8c3715a",
          "type": "basic.code",
          "data": {
            "code": "// 4 biteko zenbatzailea\n\nreg c;\n\nalways @(posedge clk)\n  c <= c + 1;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
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
            "x": 248,
            "y": 192
          }
        },
        {
          "id": "2f976509-0b49-465c-8832-a79ec1280bed",
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
            "x": 72,
            "y": 288
          }
        },
        {
          "id": "c5e374fb-38c0-41f0-bd69-f2c00bd31ddd",
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
            "x": 744,
            "y": 288
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1e3110a6-5f1f-433a-859d-a745c8c3715a",
            "port": "c"
          },
          "target": {
            "block": "c5e374fb-38c0-41f0-bd69-f2c00bd31ddd",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "2f976509-0b49-465c-8832-a79ec1280bed",
            "port": "out"
          },
          "target": {
            "block": "1e3110a6-5f1f-433a-859d-a745c8c3715a",
            "port": "clk"
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
}