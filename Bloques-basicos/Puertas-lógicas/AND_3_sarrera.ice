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
          "id": "02ddf07c-54ab-46f8-87c9-3051a071e90d",
          "type": "basic.code",
          "data": {
            "code": "// AND logic gate\n\n assign y = a & b & c;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a"
                },
                {
                  "name": "b"
                },
                {
                  "name": "c"
                }
              ],
              "out": [
                {
                  "name": "y"
                }
              ]
            }
          },
          "position": {
            "x": 432,
            "y": 56
          }
        },
        {
          "id": "08d7ba54-26f4-4180-a1dc-ebacc2900c5b",
          "type": "basic.input",
          "data": {
            "name": "a",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 248,
            "y": 64
          }
        },
        {
          "id": "dedb4f69-8843-4659-8bcd-4742a6500597",
          "type": "basic.input",
          "data": {
            "name": "b",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 256,
            "y": 152
          }
        },
        {
          "id": "fffda24b-c415-433c-a900-a0c768cda0be",
          "type": "basic.output",
          "data": {
            "name": "y",
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
            "x": 912,
            "y": 152
          }
        },
        {
          "id": "e64adec6-fb0e-4070-9330-4774fb31ba1f",
          "type": "basic.input",
          "data": {
            "name": "c",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": 0
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 256,
            "y": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "02ddf07c-54ab-46f8-87c9-3051a071e90d",
            "port": "y"
          },
          "target": {
            "block": "fffda24b-c415-433c-a900-a0c768cda0be",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e64adec6-fb0e-4070-9330-4774fb31ba1f",
            "port": "out"
          },
          "target": {
            "block": "02ddf07c-54ab-46f8-87c9-3051a071e90d",
            "port": "c"
          }
        },
        {
          "source": {
            "block": "dedb4f69-8843-4659-8bcd-4742a6500597",
            "port": "out"
          },
          "target": {
            "block": "02ddf07c-54ab-46f8-87c9-3051a071e90d",
            "port": "b"
          }
        },
        {
          "source": {
            "block": "08d7ba54-26f4-4180-a1dc-ebacc2900c5b",
            "port": "out"
          },
          "target": {
            "block": "02ddf07c-54ab-46f8-87c9-3051a071e90d",
            "port": "a"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": -170,
        "y": -3
      },
      "zoom": 1
    }
  }
}