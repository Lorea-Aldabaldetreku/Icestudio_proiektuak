{
  "version": "1.0",
  "package": {
    "name": "Maiztasun zatitzailea M",
    "version": "1.0",
    "description": "M maiztasun zatitzailearen balioa sartu M konstantean",
    "author": "Lorea",
    "image": ""
  },
  "design": {
    "board": "icezum",
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
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": true
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
            "name": "clk_out",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": true
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