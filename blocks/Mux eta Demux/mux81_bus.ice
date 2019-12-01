{
  "version": "1.1",
  "package": {
    "name": "multiplexorea 8:1",
    "version": "",
    "description": "Zirkuitu multiplexorea (MUX) datu hautatzailea da",
    "author": "Lorea",
    "image": "%3Csvg%20viewBox=%220.0%200.0%20617.3254593175853%20531.8530183727034%22%20fill=%22none%22%20stroke-linecap=%22square%22%20stroke-miterlimit=%2210%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3CclipPath%20id=%22a%22%3E%3Cpath%20d=%22M0%200h617.325v531.853H0V0z%22/%3E%3C/clipPath%3E%3Cg%20clip-path=%22url(#a)%22%3E%3Cpath%20fill=%22none%22%20d=%22M0%200h617.325v531.853H0z%22/%3E%3Cpath%20fill=%22none%22%20d=%22M142.933%2011.186l336%2084v336.662l-336%2084z%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M142.933%2011.186l336%2084v336.662l-336%2084z%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20226.599h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20226.599h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20472.664h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20472.664h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M478.933%20263.517h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M478.933%20263.517h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M177%20182.32h560.095v65.355H177z%22/%3E%3Cpath%20fill=%22#20124d%22%20d=%22M268.078%20283.48h-17.906v-46.734l-12.938%2030.328h-12.422l-12.937-30.328v46.734h-16.969v-69.797h20.906l15.704%2035.016%2015.656-35.016h20.906v69.797zm78.938-25.265q0%2012.937-7.875%2019.828-7.875%206.89-23.204%206.89-15.328%200-23.187-6.89-7.844-6.89-7.844-19.782v-44.578H303v43.547q0%207.266%203.047%2010.828%203.047%203.563%209.89%203.563%206.75%200%209.86-3.422%203.125-3.422%203.125-10.969v-43.547h18.094v44.532zm80.109%2025.265h-20.813l-15.046-22.969-15.329%2022.97h-19.875l24.75-35.157-24.234-34.64h20.766l14.531%2021.75%2014.953-21.75h19.922l-24.375%2033.937%2024.75%2035.86z%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20103.566h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20103.566h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20349.631h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20349.631h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20165.082h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20165.082h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20411.148h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20411.148h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%2042.05h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%2042.05h127.15%22/%3E%3Cpath%20fill=%22none%22%20d=%22M15.148%20288.115h127.15%22/%3E%3Cpath%20stroke=%22#20124d%22%20stroke-width=%2216%22%20stroke-linejoin=%22round%22%20stroke-linecap=%22butt%22%20d=%22M15.148%20288.115h127.15%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "fec41126-180d-4939-a97a-bf08a168e68c",
          "type": "basic.input",
          "data": {
            "name": "i0",
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
            "x": 128,
            "y": -104
          }
        },
        {
          "id": "990ccdb7-94e1-432c-a50c-76b83de2b125",
          "type": "basic.input",
          "data": {
            "name": "i1",
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
            "x": 96,
            "y": -16
          }
        },
        {
          "id": "c3c7ff3b-0e5b-4229-a4fc-79bbe5c002b9",
          "type": "basic.input",
          "data": {
            "name": "i2",
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
            "x": 88,
            "y": 56
          }
        },
        {
          "id": "cc16015f-1565-4350-bc8c-1a6734cee36f",
          "type": "basic.input",
          "data": {
            "name": "i3",
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
            "x": 56,
            "y": 104
          }
        },
        {
          "id": "1a37e559-300d-4cc7-b458-f30f98fae0ae",
          "type": "basic.input",
          "data": {
            "name": "i4",
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
            "x": 16,
            "y": 160
          }
        },
        {
          "id": "00015a93-d18e-4d5a-81c1-8d9df1cb9eb0",
          "type": "basic.input",
          "data": {
            "name": "i5",
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
            "x": -48,
            "y": 240
          }
        },
        {
          "id": "feb32f6f-a290-4e45-bd5d-a254b9bcf65f",
          "type": "basic.input",
          "data": {
            "name": "i6",
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
            "x": 48,
            "y": 280
          }
        },
        {
          "id": "696e165f-27d9-4726-a246-2c46ef454839",
          "type": "basic.output",
          "data": {
            "name": "o",
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
            "x": 784,
            "y": 304
          }
        },
        {
          "id": "55ce3655-5c4c-4fc4-965c-2839d4fb0b4c",
          "type": "basic.input",
          "data": {
            "name": "i7",
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
            "x": -80,
            "y": 304
          }
        },
        {
          "id": "f3a29081-c135-4a11-8474-f9cd63df270a",
          "type": "basic.input",
          "data": {
            "name": "sel",
            "range": "[2:0]",
            "pins": [
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
            "x": -8,
            "y": 400
          }
        },
        {
          "id": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
          "type": "basic.code",
          "data": {
            "code": "reg _o;\nwire [2:0] _sel;\n\nassign _sel = sel;\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        4: _o = in4;\n        5: _o = in5;\n        6: _o = in6;\n        7: _o = in7;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in0"
                },
                {
                  "name": "in1"
                },
                {
                  "name": "in2"
                },
                {
                  "name": "in3"
                },
                {
                  "name": "in4"
                },
                {
                  "name": "in5"
                },
                {
                  "name": "in6"
                },
                {
                  "name": "in7"
                },
                {
                  "name": "sel",
                  "range": "[2:0]",
                  "size": 3
                }
              ],
              "out": [
                {
                  "name": "o"
                }
              ]
            }
          },
          "position": {
            "x": 392,
            "y": 120
          },
          "size": {
            "width": 320,
            "height": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "o"
          },
          "target": {
            "block": "696e165f-27d9-4726-a246-2c46ef454839",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fec41126-180d-4939-a97a-bf08a168e68c",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in0"
          }
        },
        {
          "source": {
            "block": "990ccdb7-94e1-432c-a50c-76b83de2b125",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in1"
          }
        },
        {
          "source": {
            "block": "c3c7ff3b-0e5b-4229-a4fc-79bbe5c002b9",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in2"
          }
        },
        {
          "source": {
            "block": "cc16015f-1565-4350-bc8c-1a6734cee36f",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in3"
          }
        },
        {
          "source": {
            "block": "1a37e559-300d-4cc7-b458-f30f98fae0ae",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in4"
          }
        },
        {
          "source": {
            "block": "00015a93-d18e-4d5a-81c1-8d9df1cb9eb0",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in5"
          }
        },
        {
          "source": {
            "block": "feb32f6f-a290-4e45-bd5d-a254b9bcf65f",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in6"
          }
        },
        {
          "source": {
            "block": "55ce3655-5c4c-4fc4-965c-2839d4fb0b4c",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "in7"
          }
        },
        {
          "source": {
            "block": "f3a29081-c135-4a11-8474-f9cd63df270a",
            "port": "out"
          },
          "target": {
            "block": "5a8b306e-5a9e-4629-a23f-8d090c574bbd",
            "port": "sel"
          },
          "size": 3
        }
      ]
    },
    "state": {
      "pan": {
        "x": 501,
        "y": 189.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}