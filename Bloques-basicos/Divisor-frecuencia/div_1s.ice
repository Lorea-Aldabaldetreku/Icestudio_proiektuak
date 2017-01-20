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
          "id": "47969141-dd7d-4df0-88d2-b6d38c3f70d2",
          "type": "basic.code",
          "data": {
            "code": "parameter M = 12_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
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
            "x": 368,
            "y": 456
          }
        },
        {
          "id": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7",
          "type": "basic.input",
          "data": {
            "name": "in",
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
            "x": 168,
            "y": 552
          }
        },
        {
          "id": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9",
          "type": "basic.output",
          "data": {
            "name": "out",
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
            "x": 880,
            "y": 552
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cd11ed30-5299-4fb6-8dfe-656a6e2567a7",
            "port": "out"
          },
          "target": {
            "block": "47969141-dd7d-4df0-88d2-b6d38c3f70d2",
            "port": "clk_in"
          }
        },
        {
          "source": {
            "block": "47969141-dd7d-4df0-88d2-b6d38c3f70d2",
            "port": "clk_out"
          },
          "target": {
            "block": "e2c0e37c-cebb-4fe7-a3d7-bf62fc87b7b9",
            "port": "in"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": -129,
        "y": -365.8587
      },
      "zoom": 1
    }
  }
}