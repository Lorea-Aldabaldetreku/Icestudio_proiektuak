{
  "version": "1.1",
  "package": {
    "name": "Maiztasun zatitzailea M enablearekin",
    "version": "1.0",
    "description": "f_irteera = f_clock / M",
    "author": "Lorea",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22640%22%20height=%22640%22%20viewBox=%220%200%20640%20640%22%3E%3Cpath%20d=%22M310.77%20147.934c-138.242%200-250.31%20109.497-250.31%20244.509%200%20135.038%20112.068%20244.509%20250.31%20244.509%20138.241%200%20250.309-109.471%20250.309-244.51%200-135.037-112.068-244.508-250.31-244.508zm0%20435.864c-108.205%200-195.895-85.685-195.895-191.355%200-105.67%2087.69-191.355%20195.894-191.355%20108.205%200%20195.895%2085.684%20195.895%20191.355%200%20105.67-87.69%20191.355-195.895%20191.355zm19.045-329.556h-38.091V400.15l92.642%2090.495%2026.935-26.311-81.486-79.598z%22/%3E%3Ctext%20style=%22line-height:698.00000191%25;-inkscape-font-specification:MV%20Boli%22%20x=%226.678%22%20y=%22113.06%22%20transform=%22scale(.85543%201.169)%22%20font-size=%2231.737%22%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22MV%20Boli%22%3E%3Ctspan%20x=%226.678%22%20y=%22113.06%22%20style=%22-inkscape-font-specification:Verdana%20Bold%22%20font-size=%22114.255%22%20font-weight=%22700%22%20fill=%22navy%22%20font-family=%22Verdana%22%3Ef=12%3Ctspan%20style=%22-inkscape-font-specification:Verdana%20Oblique;text-align:start;line-height:698%25%22%20font-weight=%22400%22%20font-style=%22oblique%22%20writing-mode=%22lr%22%3EMHz%3C/tspan%3E/M%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "6b532ccd-59eb-4acc-98ce-a44415d0da81",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 200,
            "y": 248
          }
        },
        {
          "id": "b669f922-036a-40e5-b4de-a6809cf99675",
          "type": "basic.output",
          "data": {
            "name": "",
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
        },
        {
          "id": "598144bb-5ac3-4339-91ec-76eac9e0ffc8",
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
            "x": 192,
            "y": 376
          }
        },
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
            "code": "//--M Maiztasun zatitzailea\n\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk)\n\n  if (clk_ena)\n    //-- Funcionamiento normal\n    divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1;\n  else\n    //-- Contador \"congelado\" al valor maximo\n    divcounter <= M - 1;\n\n//-- Sacar un pulso de anchura 1 ciclo de reloj si el generador\n//-- esta habilitado (clk_ena == 1)\n//-- en caso contrario se saca 0\nassign clk_out = (divcounter == 0) ? clk_ena : 0;",
            "params": [
              {
                "name": "M"
              }
            ],
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
            "x": 384,
            "y": 216
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
        },
        {
          "source": {
            "block": "598144bb-5ac3-4339-91ec-76eac9e0ffc8",
            "port": "out"
          },
          "target": {
            "block": "e1dedba2-0a10-4ec8-9e9b-c8ffe8d01b9c",
            "port": "clk_ena"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 393,
        "y": 205.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}