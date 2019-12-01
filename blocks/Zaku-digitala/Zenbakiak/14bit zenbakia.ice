{
  "version": "1.1",
  "package": {
    "name": "14bit zenbakia",
    "version": "",
    "description": "b[13:0] busa = balioa (14 biteko zenbakia) ",
    "author": "Lorea",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22829.147%22%20height=%22673.388%22%20viewBox=%220%200%20219.37836%20178.16713%22%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Verdana%22%20x=%22-.777%22%20y=%2266.735%22%20transform=%22matrix(.91132%200%200%201.0973%20-2.51%20-6.233)%22%20font-weight=%22400%22%20font-size=%2280.36%22%20font-family=%22Verdana%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%222.009%22%3E%3Ctspan%20x=%22-.777%22%20y=%2266.735%22%20style=%22-inkscape-font-specification:'Verdana%20Bold'%22%20font-weight=%22700%22%20fill=%22#005f28%22%3EZenb.%3C/tspan%3E%3Ctspan%20x=%22-.777%22%20y=%22167.184%22%20style=%22-inkscape-font-specification:'Verdana%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%20fill=%22#8700eb%22%3E14bit%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "4d16ad64-67a7-4e96-9779-f40a6fefc34f",
          "type": "basic.output",
          "data": {
            "name": "b",
            "range": "[13:0]",
            "pins": [
              {
                "index": "13",
                "name": "",
                "value": "0"
              },
              {
                "index": "12",
                "name": "",
                "value": "0"
              },
              {
                "index": "11",
                "name": "",
                "value": "0"
              },
              {
                "index": "10",
                "name": "",
                "value": "0"
              },
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
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
            "x": 560,
            "y": 176
          }
        },
        {
          "id": "6f2928a2-395c-4983-99e5-81c7f86f867a",
          "type": "basic.constant",
          "data": {
            "name": "Balioa",
            "value": "",
            "local": false
          },
          "position": {
            "x": 344,
            "y": 32
          }
        },
        {
          "id": "917a0b52-f086-44be-8c52-fbaf023c11b9",
          "type": "basic.code",
          "data": {
            "code": "assign b = balioa;",
            "params": [
              {
                "name": "balioa"
              }
            ],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "b",
                  "range": "[13:0]",
                  "size": 14
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": 144
          },
          "size": {
            "width": 192,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "6f2928a2-395c-4983-99e5-81c7f86f867a",
            "port": "constant-out"
          },
          "target": {
            "block": "917a0b52-f086-44be-8c52-fbaf023c11b9",
            "port": "balioa"
          }
        },
        {
          "source": {
            "block": "917a0b52-f086-44be-8c52-fbaf023c11b9",
            "port": "b"
          },
          "target": {
            "block": "4d16ad64-67a7-4e96-9779-f40a6fefc34f",
            "port": "in"
          },
          "size": 14
        }
      ]
    },
    "state": {
      "pan": {
        "x": 493,
        "y": 325.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}