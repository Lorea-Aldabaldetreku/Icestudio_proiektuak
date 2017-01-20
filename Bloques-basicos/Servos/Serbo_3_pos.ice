{
  "version": "1.0",
  "package": {
    "name": "Serbo_3_pos",
    "version": "1.0",
    "description": "Serboa sarreren arabera, orratzen alde, aurka biratuko du edo geltituko da.",
    "author": "Lorea",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "cc59ed34-a2ca-4811-8436-03eabf648241",
          "type": "basic.code",
          "data": {
            "code": "// @include ServoMotor.v\n\nparameter CLOCKWISE = 8'hF0;\nparameter COUNTERCLOCKWISE = 8'h50;\nparameter LOW = 8'h8C;\n\nreg [7:0] pos = LOW;\n\nServoMotor servo (\n  .clk(clk),\n  .pos(pos),\n  .servo(pwm));\n    \nalways @(posedge clk)\n\n  if (bit1 == 0 && bit0 == 1)\n    pos <= CLOCKWISE;\n  else if (bit1 == 1 && bit0 == 0)\n    pos <= COUNTERCLOCKWISE;\n  else\n        pos <= LOW;    ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "bit0"
                },
                {
                  "name": "bit1"
                }
              ],
              "out": [
                {
                  "name": "pwm"
                }
              ]
            }
          },
          "position": {
            "x": 240,
            "y": 192
          }
        },
        {
          "id": "3fa8853c-7c0e-4511-916a-e29916a948b6",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "x": 56,
            "y": 200
          }
        },
        {
          "id": "995171c2-a5b4-47d7-b120-f21d6808ff20",
          "type": "basic.input",
          "data": {
            "name": "bit0",
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
            "x": 56,
            "y": 288
          }
        },
        {
          "id": "c559b052-0977-4f3e-945a-4c0b06b01d46",
          "type": "basic.output",
          "data": {
            "name": "pwm",
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
            "x": 720,
            "y": 288
          }
        },
        {
          "id": "40497f21-5925-4c64-91db-4375f4939a27",
          "type": "basic.input",
          "data": {
            "name": "bit1",
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
            "x": 56,
            "y": 376
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "995171c2-a5b4-47d7-b120-f21d6808ff20",
            "port": "out"
          },
          "target": {
            "block": "cc59ed34-a2ca-4811-8436-03eabf648241",
            "port": "bit0"
          }
        },
        {
          "source": {
            "block": "40497f21-5925-4c64-91db-4375f4939a27",
            "port": "out"
          },
          "target": {
            "block": "cc59ed34-a2ca-4811-8436-03eabf648241",
            "port": "bit1"
          }
        },
        {
          "source": {
            "block": "3fa8853c-7c0e-4511-916a-e29916a948b6",
            "port": "out"
          },
          "target": {
            "block": "cc59ed34-a2ca-4811-8436-03eabf648241",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "cc59ed34-a2ca-4811-8436-03eabf648241",
            "port": "pwm"
          },
          "target": {
            "block": "c559b052-0977-4f3e-945a-4c0b06b01d46",
            "port": "in"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": -31,
        "y": -136
      },
      "zoom": 1
    }
  }
}