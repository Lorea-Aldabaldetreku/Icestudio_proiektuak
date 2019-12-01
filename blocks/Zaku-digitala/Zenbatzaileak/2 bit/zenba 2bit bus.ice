{
  "version": "1.1",
  "package": {
    "name": "2 bit zenbatzailea busa",
    "version": "",
    "description": "2 biteko zenbatzailea gaitzeko (ena) funtzioarekin eta  [1:0] buseko irteera",
    "author": "Lorea Aldabaldetreku",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22175.199%22%20height=%2299.982%22%20viewBox=%220%200%20164.24902%2093.732662%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-274.322%20-299.078)%22%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22350.428%22%20y=%22252.288%22%20transform=%22scale(.7831%201.27696)%22%20font-weight=%22400%22%20font-size=%2214.276%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.19%22%3E%3Ctspan%20x=%22350.428%22%20y=%22252.288%22%20style=%22line-height:1.25;-inkscape-font-specification:sans-serif%22%20font-size=%2223.793%22%3EZenbatzailea%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M384.489%20389.281v-45.218%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22319.965%22%20y=%22327.882%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22342.593%22%20y=%22357.894%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2212%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22342.593%22%20y=%22357.894%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2247.638%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M321.463%20361.275h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22275.322%22%20y=%22327.882%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22295.36%22%20y=%22357.894%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2212%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22295.36%22%20y=%22357.894%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2247.638%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M276.82%20361.275h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:Verdana%22%20x=%22449.801%22%20y=%22283.818%22%20transform=%22scale(.8824%201.13327)%22%20font-weight=%22400%22%20font-size=%2235.804%22%20font-family=%22Verdana%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.895%22%3E%3Ctspan%20x=%22449.801%22%20y=%22283.818%22%20font-size=%2226.256%22%20fill=%22#a00%22%3EBus%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "18b9d3be-d9bb-4149-89c3-9e95a4a548cc",
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
            "x": -296,
            "y": -136
          }
        },
        {
          "id": "a49dd828-3257-415e-851c-d220a7111e8e",
          "type": "basic.output",
          "data": {
            "name": "z",
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
            "virtual": true
          },
          "position": {
            "x": 344,
            "y": -80
          }
        },
        {
          "id": "8992b435-0a19-453b-8df1-48d2ecf7d2a1",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -280,
            "y": -24
          }
        },
        {
          "id": "ad7d9487-fcdc-4189-96a1-9a07410fb061",
          "type": "basic.code",
          "data": {
            "code": "// 2 biteko zenbatzailea busa\n\nreg [1:0] counter;\n\nalways @(posedge clk) \n  if (en)\n  counter <= counter + 1;\n\nassign z = counter;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "en"
                }
              ],
              "out": [
                {
                  "name": "z",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": -120,
            "y": -160
          },
          "size": {
            "width": 368,
            "height": 224
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8992b435-0a19-453b-8df1-48d2ecf7d2a1",
            "port": "out"
          },
          "target": {
            "block": "ad7d9487-fcdc-4189-96a1-9a07410fb061",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "18b9d3be-d9bb-4149-89c3-9e95a4a548cc",
            "port": "out"
          },
          "target": {
            "block": "ad7d9487-fcdc-4189-96a1-9a07410fb061",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ad7d9487-fcdc-4189-96a1-9a07410fb061",
            "port": "z"
          },
          "target": {
            "block": "a49dd828-3257-415e-851c-d220a7111e8e",
            "port": "in"
          },
          "size": 2
        }
      ]
    },
    "state": {
      "pan": {
        "x": 387,
        "y": 335
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}