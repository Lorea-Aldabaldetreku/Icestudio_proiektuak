{
  "version": "1.1",
  "package": {
    "name": "0.5 segundo",
    "version": "",
    "description": "0.5 segundoko periodoa duen ordularia",
    "author": "Lorea Aldabaldetreku",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22640%22%20height=%22640%22%20viewBox=%220%200%20640%20640%22%3E%3Cpath%20d=%22M310.77%20147.934c-138.242%200-250.31%20109.497-250.31%20244.509%200%20135.038%20112.068%20244.509%20250.31%20244.509%20138.241%200%20250.309-109.471%20250.309-244.51%200-135.037-112.068-244.508-250.31-244.508zm0%20435.864c-108.205%200-195.895-85.685-195.895-191.355%200-105.67%2087.69-191.355%20195.894-191.355%20108.205%200%20195.895%2085.684%20195.895%20191.355%200%20105.67-87.69%20191.355-195.895%20191.355zm19.045-329.556h-38.091V400.15l92.642%2090.495%2026.935-26.311-81.486-79.598z%22/%3E%3Ctext%20style=%22line-height:0%25;-inkscape-font-specification:'MV%20Boli'%22%20x=%2261.557%22%20y=%22101.823%22%20transform=%22scale(.86816%201.15186)%22%20font-weight=%22400%22%20font-size=%2213.464%22%20font-family=%22MV%20Boli%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%221.122%22%3E%3Ctspan%20x=%2261.557%22%20y=%22101.823%22%20style=%22line-height:6.98000002;-inkscape-font-specification:'Verdana%20Bold'%22%20font-weight=%22700%22%20font-size=%22128.19%22%20font-family=%22Verdana%22%20fill=%22navy%22%3ET%20=%200.5%20s%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "24fa93f2-c17f-4c02-a53a-f508b5f38b1e",
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
            "x": 24,
            "y": 104
          }
        },
        {
          "id": "adc60235-0629-490f-9c76-ce0e7962d4d0",
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
            "x": 712,
            "y": 160
          }
        },
        {
          "id": "4a0bfac8-20bf-4085-a7d7-1153981eb4a8",
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
            "x": -16,
            "y": 224
          }
        },
        {
          "id": "ad8a93bb-5d3a-4bfa-a269-93d72c223bd1",
          "type": "basic.code",
          "data": {
            "code": "//--0.5 segunduko periodoa lortzeko maiztasun zatitzailea\nlocalparam M = 6000000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk)\n\n  if (clk_ena)\n    //-- Funcionamiento normal\n    divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1;\n  else\n    //-- Contador \"congelado\" al valor maximo\n    divcounter <= M - 1;\n\n//-- Sacar un pulso de anchura 1 ciclo de reloj si el generador\n//-- esta habilitado (clk_ena == 1)\n//-- en caso contrario se saca 0\nassign clk_out = (divcounter == 0) ? clk_ena : 0;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "clk_ena"
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
            "x": 176,
            "y": 72
          },
          "size": {
            "width": 448,
            "height": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "24fa93f2-c17f-4c02-a53a-f508b5f38b1e",
            "port": "out"
          },
          "target": {
            "block": "ad8a93bb-5d3a-4bfa-a269-93d72c223bd1",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "ad8a93bb-5d3a-4bfa-a269-93d72c223bd1",
            "port": "clk_out"
          },
          "target": {
            "block": "adc60235-0629-490f-9c76-ce0e7962d4d0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4a0bfac8-20bf-4085-a7d7-1153981eb4a8",
            "port": "out"
          },
          "target": {
            "block": "ad8a93bb-5d3a-4bfa-a269-93d72c223bd1",
            "port": "clk_ena"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 553,
        "y": 285.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}