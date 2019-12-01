{
  "version": "1.1",
  "package": {
    "name": "6 biteko konparadorea",
    "version": "",
    "description": "Bi zenbakiak berdinak badira irteera 1 izango da.",
    "author": "Lorea",
    "image": "%3Csvg%20viewBox=%220.0%200.0%20625.2965879265092%20347.6745406824147%22%20fill=%22none%22%20stroke-linecap=%22square%22%20stroke-miterlimit=%2210%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3CclipPath%20id=%22a%22%3E%3Cpath%20d=%22M0%200h625.297v347.675H0V0z%22/%3E%3C/clipPath%3E%3Cg%20clip-path=%22url(#a)%22%3E%3Cpath%20fill=%22none%22%20d=%22M0%200h625.297v347.675H0z%22/%3E%3Cpath%20fill=%22#00009b%22%20d=%22M24.648%2024.648h586.394v132.315H24.648z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20stroke=%22#000%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M24.648%2024.648h586.394v132.315H24.648z%22/%3E%3Cpath%20fill=%22#00009b%22%20d=%22M24.648%20192.43h586.394v132.315H24.648z%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20stroke=%22#000%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M24.648%20192.43h586.394v132.315H24.648z%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "d8e50b12-62a5-47d4-a91a-75a062f40294",
          "type": "basic.input",
          "data": {
            "name": "a",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 136,
            "y": 160
          }
        },
        {
          "id": "05384a13-c685-4e20-b717-ea5166dcab92",
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
            "x": 768,
            "y": 224
          }
        },
        {
          "id": "2b1a37ad-7b3f-4f49-bb39-e8ddc00677e6",
          "type": "basic.input",
          "data": {
            "name": "b",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 144,
            "y": 288
          }
        },
        {
          "id": "4a6d5b38-c8fb-48bb-be93-c741f789b68d",
          "type": "basic.code",
          "data": {
            "code": "reg c;\n\nalways @(*) begin\n  c = (a == b);\nend\n \n ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "b",
                  "range": "[5:0]",
                  "size": 6
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
            "x": 328,
            "y": 128
          },
          "size": {
            "width": 384,
            "height": 256
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "4a6d5b38-c8fb-48bb-be93-c741f789b68d",
            "port": "c"
          },
          "target": {
            "block": "05384a13-c685-4e20-b717-ea5166dcab92",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d8e50b12-62a5-47d4-a91a-75a062f40294",
            "port": "out"
          },
          "target": {
            "block": "4a6d5b38-c8fb-48bb-be93-c741f789b68d",
            "port": "a"
          },
          "size": 6
        },
        {
          "source": {
            "block": "2b1a37ad-7b3f-4f49-bb39-e8ddc00677e6",
            "port": "out"
          },
          "target": {
            "block": "4a6d5b38-c8fb-48bb-be93-c741f789b68d",
            "port": "b"
          },
          "size": 6
        }
      ]
    },
    "state": {
      "pan": {
        "x": -113,
        "y": -27.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}