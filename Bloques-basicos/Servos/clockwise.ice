{
  "version": "1.0",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "f3409556-6237-469d-86d6-40f60380135f",
          "type": "basic.code",
          "data": {
            "code": "// @include ServoMotor.v\n\nparameter HIGH = 8'hF0;\nparameter LOW = 8'h8C;\n\nreg [7:0] pos = LOW;\n\nServoMotor servo (\n  .clk(clk),\n  .pos(pos),\n  .servo(pwm));\n    \nalways @(posedge clk)\n  pos <= bit ? HIGH : LOW;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "bit"
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
            "x": 248,
            "y": 192
          }
        },
        {
          "id": "ee0950c9-9ff7-4821-9c63-43a2d899b446",
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
            "x": 64,
            "y": 224
          }
        },
        {
          "id": "68a7aa16-be63-4a74-8ed5-01383c6e7717",
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
            "x": 736,
            "y": 288
          }
        },
        {
          "id": "a28d4957-730e-4aba-a7ea-4e9fc2fda04b",
          "type": "basic.input",
          "data": {
            "name": "bit",
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
            "x": 64,
            "y": 352
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "ee0950c9-9ff7-4821-9c63-43a2d899b446",
            "port": "out"
          },
          "target": {
            "block": "f3409556-6237-469d-86d6-40f60380135f",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "a28d4957-730e-4aba-a7ea-4e9fc2fda04b",
            "port": "out"
          },
          "target": {
            "block": "f3409556-6237-469d-86d6-40f60380135f",
            "port": "bit"
          }
        },
        {
          "source": {
            "block": "f3409556-6237-469d-86d6-40f60380135f",
            "port": "pwm"
          },
          "target": {
            "block": "68a7aa16-be63-4a74-8ed5-01383c6e7717",
            "port": "in"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  }
}