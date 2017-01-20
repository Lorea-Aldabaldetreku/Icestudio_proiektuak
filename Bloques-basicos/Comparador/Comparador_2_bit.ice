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
          "id": "c66cb3cd-ca6a-487f-aea9-72f6d28579fb",
          "type": "basic.code",
          "data": {
            "code": "// 2 biteko konparadorea.\nassign L = (a < b);\nassign G = (a > b);\nassign E = (a == b);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a"
                },
                {
                  "name": "b"
                }
              ],
              "out": [
                {
                  "name": "G"
                },
                {
                  "name": "E"
                },
                {
                  "name": "L"
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
          "id": "5c65d88c-6e3d-4293-a360-8113f6eb6961",
          "type": "basic.output",
          "data": {
            "name": "G",
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
            "y": 200
          }
        },
        {
          "id": "813d522e-d7d5-4c10-86be-2eaac0fc3d74",
          "type": "basic.input",
          "data": {
            "name": "a",
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
          "id": "d7766c9b-4652-4ce7-abcf-2e367f38f863",
          "type": "basic.output",
          "data": {
            "name": "E",
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
          "id": "9b463aa4-6f88-4bf0-b750-e98553961a77",
          "type": "basic.input",
          "data": {
            "name": "b",
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
        },
        {
          "id": "751a5315-d811-43ba-a374-7ca33f2f96a8",
          "type": "basic.output",
          "data": {
            "name": "L",
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
            "y": 376
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "813d522e-d7d5-4c10-86be-2eaac0fc3d74",
            "port": "out"
          },
          "target": {
            "block": "c66cb3cd-ca6a-487f-aea9-72f6d28579fb",
            "port": "a"
          }
        },
        {
          "source": {
            "block": "9b463aa4-6f88-4bf0-b750-e98553961a77",
            "port": "out"
          },
          "target": {
            "block": "c66cb3cd-ca6a-487f-aea9-72f6d28579fb",
            "port": "b"
          }
        },
        {
          "source": {
            "block": "c66cb3cd-ca6a-487f-aea9-72f6d28579fb",
            "port": "G"
          },
          "target": {
            "block": "5c65d88c-6e3d-4293-a360-8113f6eb6961",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c66cb3cd-ca6a-487f-aea9-72f6d28579fb",
            "port": "L"
          },
          "target": {
            "block": "751a5315-d811-43ba-a374-7ca33f2f96a8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c66cb3cd-ca6a-487f-aea9-72f6d28579fb",
            "port": "E"
          },
          "target": {
            "block": "d7766c9b-4652-4ce7-abcf-2e367f38f863",
            "port": "in"
          }
        }
      ]
    },
    "deps": {},
    "state": {
      "pan": {
        "x": -20,
        "y": -93
      },
      "zoom": 1
    }
  }
}