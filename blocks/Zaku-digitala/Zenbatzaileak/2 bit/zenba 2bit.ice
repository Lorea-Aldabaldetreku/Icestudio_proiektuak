{
  "version": "1.1",
  "package": {
    "name": "2 bit zenbatzailea ena",
    "version": "",
    "description": "2 biteko zenbatzailea gaitzeko (ena) funtzioarekin",
    "author": "Lorea",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22137.493%22%20height=%22103.903%22%20viewBox=%220%200%20128.89966%2097.408805%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-272.599%20-296.734)%22%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22318.242%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22340.77%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22340.77%22%20y=%22359.153%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2247.638%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M319.74%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22326.346%22%20y=%22266.459%22%20transform=%22scale(.8366%201.19532)%22%20font-weight=%22400%22%20font-size=%2214.382%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.199%22%3E%3Ctspan%20x=%22326.346%22%20y=%22266.459%22%20style=%22line-height:1.25;-inkscape-font-specification:sans-serif%22%20font-size=%2223.971%22%3EZenbatzailea%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M379.801%20388.612v-45.219%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22273.599%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:0%25%22%20x=%22293.536%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22293.536%22%20y=%22359.153%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2247.638%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M275.097%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "75a0ac61-78d3-4dcb-b39f-b5392d2cd4bf",
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
            "x": 40,
            "y": 72
          }
        },
        {
          "id": "c62c3d02-a15a-404b-8cd1-7ab2b1fda2e4",
          "type": "basic.output",
          "data": {
            "name": "a1",
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
            "x": 504,
            "y": 80
          }
        },
        {
          "id": "230c6e57-14eb-42bf-99b7-6ffe721d7606",
          "type": "basic.output",
          "data": {
            "name": "a0",
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
            "x": 504,
            "y": 144
          }
        },
        {
          "id": "731bc455-2047-4986-a4d1-8db0f4cdf294",
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
            "x": 32,
            "y": 152
          }
        },
        {
          "id": "3eab7b92-3ec9-4969-8a90-6e25bbae528a",
          "type": "basic.code",
          "data": {
            "code": "// 2 biteko zanbatzailea\n\nreg [1:0] counter;\n\nalways @(posedge clk) \n  if (en)\n  counter <= counter + 1;\n\nassign {a0, a1} = counter;\n",
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
                  "name": "a1"
                },
                {
                  "name": "a0"
                }
              ]
            }
          },
          "position": {
            "x": 200,
            "y": 80
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
            "block": "75a0ac61-78d3-4dcb-b39f-b5392d2cd4bf",
            "port": "out"
          },
          "target": {
            "block": "3eab7b92-3ec9-4969-8a90-6e25bbae528a",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "731bc455-2047-4986-a4d1-8db0f4cdf294",
            "port": "out"
          },
          "target": {
            "block": "3eab7b92-3ec9-4969-8a90-6e25bbae528a",
            "port": "en"
          }
        },
        {
          "source": {
            "block": "3eab7b92-3ec9-4969-8a90-6e25bbae528a",
            "port": "a0"
          },
          "target": {
            "block": "230c6e57-14eb-42bf-99b7-6ffe721d7606",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3eab7b92-3ec9-4969-8a90-6e25bbae528a",
            "port": "a1"
          },
          "target": {
            "block": "c62c3d02-a15a-404b-8cd1-7ab2b1fda2e4",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 139,
        "y": 131
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}