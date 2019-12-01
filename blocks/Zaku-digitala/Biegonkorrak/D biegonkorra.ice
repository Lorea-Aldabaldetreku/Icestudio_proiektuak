{
  "version": "1.2",
  "package": {
    "name": "D Flip-flop",
    "version": "",
    "description": "Clk-ren goranzko ertzean d balioa irteerara eramango da",
    "author": "Lorea Aldabaldetreku",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2257.811%22%20height=%2244.68%22%20viewBox=%220%200%2054.198062%2041.88788%22%3E%3Cg%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22313.685%22%20y=%22398.653%22%20font-family=%22sans-serif%22%20fill=%22navy%22%20transform=%22translate(-313.353%20-375.884)%22%3E%3Ctspan%20x=%22313.685%22%20y=%22398.653%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2227.335%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Verdana%22%20x=%22325.529%22%20y=%22398.017%22%20transform=%22matrix(.95962%200%200%201.04208%20-313.353%20-375.884)%22%20font-size=%2214.344%22%20font-family=%22Verdana%22%20fill=%22#00f%22%20stroke-width=%22.359%22%3E%3Ctspan%20x=%22325.529%22%20y=%22398.017%22%3EFlip-flop%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "b9ca9d22-79bd-416c-8cc8-70ed9c686132",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 592,
            "y": 304
          }
        },
        {
          "id": "ae937cae-6064-493e-9d90-f6198f74464c",
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
            "x": 1144,
            "y": 376
          }
        },
        {
          "id": "754e6a22-54d3-4aca-8e96-a9475aa3d749",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": 584,
            "y": 440
          }
        },
        {
          "id": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
          "type": "basic.code",
          "data": {
            "code": "// D biegonkorra\n// hasierako balioa 0 da\n\n\nreg q = 0;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "d"
                }
              ],
              "out": [
                {
                  "name": "q"
                }
              ]
            }
          },
          "position": {
            "x": 776,
            "y": 272
          },
          "size": {
            "width": 312,
            "height": 264
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "754e6a22-54d3-4aca-8e96-a9475aa3d749",
            "port": "out"
          },
          "target": {
            "block": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
            "port": "d"
          }
        },
        {
          "source": {
            "block": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
            "port": "q"
          },
          "target": {
            "block": "ae937cae-6064-493e-9d90-f6198f74464c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9ca9d22-79bd-416c-8cc8-70ed9c686132",
            "port": "out"
          },
          "target": {
            "block": "1e5b63a8-7e83-4de6-b37f-c727c5d0b33f",
            "port": "clk"
          }
        }
      ]
    }
  },
  "dependencies": {}
}