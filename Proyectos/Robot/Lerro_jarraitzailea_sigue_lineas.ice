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
          "id": "d1a2c736-abbd-4a15-bb6c-2ee66755c5de",
          "type": "Serbo-robot",
          "position": {
            "x": 352,
            "y": 0
          }
        },
        {
          "id": "4fcfb58d-e239-4711-a79a-9f968782fc17",
          "type": "basic.output",
          "data": {
            "name": "Servo",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 592,
            "y": 0
          }
        },
        {
          "id": "41756780-20a1-495e-b70f-8fd604224fd0",
          "type": "Delay-1s",
          "position": {
            "x": -120,
            "y": 32
          }
        },
        {
          "id": "6ff883ca-d147-45d9-9034-42c08b8ef66b",
          "type": "2bit-Counter",
          "position": {
            "x": 88,
            "y": 32
          }
        },
        {
          "id": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
          "type": "basic.input",
          "data": {
            "name": "Clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -456,
            "y": 104
          }
        },
        {
          "id": "3e939885-8be6-4751-b371-6b459a4bcea2",
          "type": "Counterclockwise",
          "position": {
            "x": 312,
            "y": 120
          }
        },
        {
          "id": "a2847acd-93f2-4cac-9698-0105342e9938",
          "type": "basic.output",
          "data": {
            "name": "Left_servo",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 592,
            "y": 120
          }
        },
        {
          "id": "f9b1bd82-efc5-4b40-9f3d-3bc72f59c4fa",
          "type": "basic.input",
          "data": {
            "name": "IR_right",
            "pins": [
              {
                "index": "0",
                "name": "D7",
                "value": "112"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -304,
            "y": 184
          }
        },
        {
          "id": "40b522f3-aa4b-4a3b-8383-6e4ff9935fa2",
          "type": "logic.gate.not",
          "position": {
            "x": -104,
            "y": 184
          }
        },
        {
          "id": "fd37e918-36b6-4d54-a7a7-032f5f715e4c",
          "type": "clockwise",
          "position": {
            "x": 312,
            "y": 264
          }
        },
        {
          "id": "4bdc692c-91be-401f-a9e0-09309a984ea5",
          "type": "basic.output",
          "data": {
            "name": "Right_servo",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 592,
            "y": 264
          }
        },
        {
          "id": "dda159c6-6b69-40de-be6d-2f4ae83911d0",
          "type": "basic.input",
          "data": {
            "name": "IR_left",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "113"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -304,
            "y": 280
          }
        },
        {
          "id": "5c0c9d78-efe7-4441-9af5-2fb9e093446a",
          "type": "logic.gate.not",
          "position": {
            "x": -96,
            "y": 280
          }
        },
        {
          "id": "de5caaa6-e5ed-4632-b6f2-75611734623e",
          "type": "RE_4nota",
          "position": {
            "x": 368,
            "y": 376
          }
        },
        {
          "id": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
          "type": "Mux-81",
          "position": {
            "x": 664,
            "y": 392
          }
        },
        {
          "id": "ed09fcfd-414b-4b77-b93c-aa065d40ecce",
          "type": "SI_4nota",
          "position": {
            "x": 368,
            "y": 448
          }
        },
        {
          "id": "74fb29a9-8e98-49f6-95cf-6c25590be13d",
          "type": "RE_5nota",
          "position": {
            "x": 368,
            "y": 520
          }
        },
        {
          "id": "5269caec-1290-4104-a021-5ef4b039dc41",
          "type": "basic.output",
          "data": {
            "name": "Buzzer",
            "pins": [
              {
                "index": "0",
                "name": "D8",
                "value": "138"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 856,
            "y": 536
          }
        },
        {
          "id": "a209a15d-7fb7-47b5-95a3-186dccfbdb13",
          "type": "bit.0",
          "position": {
            "x": 400,
            "y": 600
          }
        },
        {
          "id": "ef21a104-a126-45e2-9d7b-46829dd925cb",
          "type": "3bit-Counter",
          "position": {
            "x": 376,
            "y": 720
          }
        },
        {
          "id": "fe8c23e5-2bce-4796-8b17-8756ba7b594c",
          "type": "Delay-250ms",
          "position": {
            "x": 136,
            "y": 736
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "3e939885-8be6-4751-b371-6b459a4bcea2",
            "port": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527"
          },
          "target": {
            "block": "a2847acd-93f2-4cac-9698-0105342e9938",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fd37e918-36b6-4d54-a7a7-032f5f715e4c",
            "port": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527"
          },
          "target": {
            "block": "4bdc692c-91be-401f-a9e0-09309a984ea5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "3e939885-8be6-4751-b371-6b459a4bcea2",
            "port": "f6ac14c6-9ed8-45b5-a83d-2e60572df337"
          }
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "fd37e918-36b6-4d54-a7a7-032f5f715e4c",
            "port": "f6ac14c6-9ed8-45b5-a83d-2e60572df337"
          },
          "vertices": [
            {
              "x": 208,
              "y": 200
            }
          ]
        },
        {
          "source": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "0ae4cda2-1003-44b3-9d40-a3d2261d2775"
          },
          "target": {
            "block": "5269caec-1290-4104-a021-5ef4b039dc41",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fe8c23e5-2bce-4796-8b17-8756ba7b594c",
            "port": "f0a3c15d-a5b9-42d6-84d8-d41a6daca92e"
          },
          "target": {
            "block": "ef21a104-a126-45e2-9d7b-46829dd925cb",
            "port": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d"
          }
        },
        {
          "source": {
            "block": "ef21a104-a126-45e2-9d7b-46829dd925cb",
            "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "8f6b18f1-8f5d-485e-94ea-93c62c98695d"
          },
          "vertices": [
            {
              "x": 600,
              "y": 680
            }
          ]
        },
        {
          "source": {
            "block": "ef21a104-a126-45e2-9d7b-46829dd925cb",
            "port": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "7f52e35b-7756-4dac-9497-d9266de5adf3"
          },
          "vertices": [
            {
              "x": 608,
              "y": 704
            }
          ]
        },
        {
          "source": {
            "block": "ef21a104-a126-45e2-9d7b-46829dd925cb",
            "port": "82a3ae39-96ac-425c-8e84-d67535b309d2"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "354e3469-c33c-469a-b23f-0997fc1ba923"
          },
          "vertices": [
            {
              "x": 624,
              "y": 744
            }
          ]
        },
        {
          "source": {
            "block": "de5caaa6-e5ed-4632-b6f2-75611734623e",
            "port": "cb230da2-5f04-4475-8d6c-dbc2c48777bd"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "23d46aff-e1fb-4bad-b13b-efc82e6636d7"
          }
        },
        {
          "source": {
            "block": "74fb29a9-8e98-49f6-95cf-6c25590be13d",
            "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "c8c3d737-1207-4504-8b6c-3f6fd008d8f5"
          },
          "vertices": [
            {
              "x": 584,
              "y": 488
            }
          ]
        },
        {
          "source": {
            "block": "ed09fcfd-414b-4b77-b93c-aa065d40ecce",
            "port": "7dd2f708-98ea-4b91-9e43-2a62089d9229"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "6e7f360c-d2e6-4cc3-9bba-7dfa2be5f466"
          },
          "vertices": [
            {
              "x": 560,
              "y": 448
            }
          ]
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "de5caaa6-e5ed-4632-b6f2-75611734623e",
            "port": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7"
          },
          "vertices": [
            {
              "x": 232,
              "y": 224
            }
          ]
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "ed09fcfd-414b-4b77-b93c-aa065d40ecce",
            "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
          },
          "vertices": [
            {
              "x": 232,
              "y": 216
            }
          ]
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "74fb29a9-8e98-49f6-95cf-6c25590be13d",
            "port": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f"
          },
          "vertices": [
            {
              "x": 232,
              "y": 208
            }
          ]
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "fe8c23e5-2bce-4796-8b17-8756ba7b594c",
            "port": "51dfd376-3d97-4aaf-b548-f492cb48a219"
          },
          "vertices": [
            {
              "x": 48,
              "y": 152
            }
          ]
        },
        {
          "source": {
            "block": "41756780-20a1-495e-b70f-8fd604224fd0",
            "port": "f8e7d270-f8ea-4ab9-920c-d6682902d8d9"
          },
          "target": {
            "block": "6ff883ca-d147-45d9-9034-42c08b8ef66b",
            "port": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d"
          }
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "41756780-20a1-495e-b70f-8fd604224fd0",
            "port": "1a8fbc1d-c7b7-4a1e-9ab3-00a7e5f0dd00"
          }
        },
        {
          "source": {
            "block": "6ff883ca-d147-45d9-9034-42c08b8ef66b",
            "port": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977"
          },
          "target": {
            "block": "d1a2c736-abbd-4a15-bb6c-2ee66755c5de",
            "port": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8"
          }
        },
        {
          "source": {
            "block": "32ca2975-9da5-48d2-8c98-be5a1a76d236",
            "port": "out"
          },
          "target": {
            "block": "d1a2c736-abbd-4a15-bb6c-2ee66755c5de",
            "port": "f6ac14c6-9ed8-45b5-a83d-2e60572df337"
          },
          "vertices": [
            {
              "x": -256,
              "y": 16
            }
          ]
        },
        {
          "source": {
            "block": "d1a2c736-abbd-4a15-bb6c-2ee66755c5de",
            "port": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527"
          },
          "target": {
            "block": "4fcfb58d-e239-4711-a79a-9f968782fc17",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "40b522f3-aa4b-4a3b-8383-6e4ff9935fa2",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "3e939885-8be6-4751-b371-6b459a4bcea2",
            "port": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8"
          }
        },
        {
          "source": {
            "block": "5c0c9d78-efe7-4441-9af5-2fb9e093446a",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "fd37e918-36b6-4d54-a7a7-032f5f715e4c",
            "port": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8"
          }
        },
        {
          "source": {
            "block": "f9b1bd82-efc5-4b40-9f3d-3bc72f59c4fa",
            "port": "out"
          },
          "target": {
            "block": "40b522f3-aa4b-4a3b-8383-6e4ff9935fa2",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "dda159c6-6b69-40de-be6d-2f4ae83911d0",
            "port": "out"
          },
          "target": {
            "block": "5c0c9d78-efe7-4441-9af5-2fb9e093446a",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "a209a15d-7fb7-47b5-95a3-186dccfbdb13",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "acc534fd-6787-4cda-99e0-b6c4e5e0e35f"
          }
        },
        {
          "source": {
            "block": "a209a15d-7fb7-47b5-95a3-186dccfbdb13",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "821010e3-2d9f-4181-8a80-3a275d741795"
          }
        },
        {
          "source": {
            "block": "a209a15d-7fb7-47b5-95a3-186dccfbdb13",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "a83438c5-f405-4833-8c55-de93c4f18afe"
          }
        },
        {
          "source": {
            "block": "a209a15d-7fb7-47b5-95a3-186dccfbdb13",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "2c64bde3-a11e-4a11-9bf0-298532ab6128"
          }
        },
        {
          "source": {
            "block": "a209a15d-7fb7-47b5-95a3-186dccfbdb13",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b4851cd5-ff37-4906-8b20-33db378ef6fc",
            "port": "505d82ae-2b27-47b7-9d28-ae3d5474dcf9"
          }
        }
      ]
    },
    "deps": {
      "Counterclockwise": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                "type": "basic.code",
                "data": {
                  "code": "// @include ServoMotor.v\n\nparameter HIGH = 8'h50;\nparameter LOW = 8'h8C;\n\nreg [7:0] pos = LOW;\n\nServoMotor servo (\n  .clk(clk),\n  .pos(pos),\n  .servo(pwm));\n    \nalways @(posedge clk)\n  pos <= bit ? HIGH : LOW;\n",
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
                  "x": 376,
                  "y": 248
                }
              },
              {
                "id": "f6ac14c6-9ed8-45b5-a83d-2e60572df337",
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
                  "virtual": false
                },
                "position": {
                  "x": 168,
                  "y": 280
                }
              },
              {
                "id": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8",
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
                  "virtual": false
                },
                "position": {
                  "x": 168,
                  "y": 408
                }
              },
              {
                "id": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527",
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
                  "virtual": false
                },
                "position": {
                  "x": 880,
                  "y": 344
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "f6ac14c6-9ed8-45b5-a83d-2e60572df337",
                  "port": "out"
                },
                "target": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8",
                  "port": "out"
                },
                "target": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "bit"
                }
              },
              {
                "source": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "pwm"
                },
                "target": {
                  "block": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527",
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
            "zoom": 1.0000000936291973
          }
        }
      },
      "clockwise": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                "type": "basic.code",
                "data": {
                  "code": "// @include ServoMotor.v\n\nparameter HIGH = 8'hF0;\nparameter LOW = 8'h8C;\n\nreg [7:0] pos = LOW;\n\nServoMotor servo (\n  .clk(clk),\n  .pos(pos),\n  .servo(pwm));\n    \nalways @(posedge clk)\n  pos <= bit ? HIGH : LOW;\n",
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
                  "x": 376,
                  "y": 248
                }
              },
              {
                "id": "f6ac14c6-9ed8-45b5-a83d-2e60572df337",
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
                  "virtual": false
                },
                "position": {
                  "x": 168,
                  "y": 280
                }
              },
              {
                "id": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8",
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
                  "virtual": false
                },
                "position": {
                  "x": 168,
                  "y": 408
                }
              },
              {
                "id": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527",
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
                  "virtual": false
                },
                "position": {
                  "x": 880,
                  "y": 344
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "f6ac14c6-9ed8-45b5-a83d-2e60572df337",
                  "port": "out"
                },
                "target": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8",
                  "port": "out"
                },
                "target": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "bit"
                }
              },
              {
                "source": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "pwm"
                },
                "target": {
                  "block": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527",
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
            "zoom": 1.0000000936291973
          }
        }
      },
      "logic.gate.not": {
        "version": "1.0",
        "package": {
          "name": "NOT",
          "version": "1.0.0",
          "description": "NOT logic gate",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "type": "basic.code",
                "data": {
                  "code": "// NOT logic gate\n\nassign c = ~ a;",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "a"
                      }
                    ],
                    "out": [
                      {
                        "name": "c"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 256,
                  "y": 48
                }
              },
              {
                "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "type": "basic.input",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 64,
                  "y": 144
                }
              },
              {
                "id": "664caf9e-5f40-4df4-800a-b626af702e62",
                "type": "basic.output",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 752,
                  "y": 144
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                  "port": "out"
                },
                "target": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "a"
                }
              },
              {
                "source": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "c"
                },
                "target": {
                  "block": "664caf9e-5f40-4df4-800a-b626af702e62",
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
      },
      "3bit-Counter": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d",
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
                  "virtual": false
                },
                "position": {
                  "x": -568,
                  "y": -8
                }
              },
              {
                "id": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
                "type": "basic.output",
                "data": {
                  "name": "c0",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 104,
                  "y": -96
                }
              },
              {
                "id": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
                "type": "basic.output",
                "data": {
                  "name": "c1",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 96,
                  "y": -8
                }
              },
              {
                "id": "1b89a88f-9114-4a97-80aa-87e046c68982",
                "type": "basic.code",
                "data": {
                  "code": "// Counter 3 bit\n\nreg [2:0] counter;\n\nalways @(posedge clk)\n  counter <= counter + 1;\n\nassign c0 = counter[0];\nassign c1 = counter[1];\nassign c2 = counter[2];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk"
                      }
                    ],
                    "out": [
                      {
                        "name": "c0"
                      },
                      {
                        "name": "c1"
                      },
                      {
                        "name": "c2"
                      }
                    ]
                  }
                },
                "position": {
                  "x": -392,
                  "y": -104
                }
              },
              {
                "id": "82a3ae39-96ac-425c-8e84-d67535b309d2",
                "type": "basic.output",
                "data": {
                  "name": "c2",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 96,
                  "y": 80
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d",
                  "port": "out"
                },
                "target": {
                  "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
                  "port": "c0"
                },
                "target": {
                  "block": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
                  "port": "c1"
                },
                "target": {
                  "block": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1b89a88f-9114-4a97-80aa-87e046c68982",
                  "port": "c2"
                },
                "target": {
                  "block": "82a3ae39-96ac-425c-8e84-d67535b309d2",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 618.8893742051678,
              "y": 289.7878112769334
            },
            "zoom": 0.7356396780548399
          }
        }
      },
      "Delay-250ms": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "cc9f73ea-7706-4564-963d-6cdaa5ca01a6",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 3_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk_in"
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
                  "x": 248,
                  "y": 32
                }
              },
              {
                "id": "51dfd376-3d97-4aaf-b548-f492cb48a219",
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
                  "virtual": false
                },
                "position": {
                  "x": 24,
                  "y": 128
                }
              },
              {
                "id": "f0a3c15d-a5b9-42d6-84d8-d41a6daca92e",
                "type": "basic.output",
                "data": {
                  "name": "clk_out",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 760,
                  "y": 128
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "51dfd376-3d97-4aaf-b548-f492cb48a219",
                  "port": "out"
                },
                "target": {
                  "block": "cc9f73ea-7706-4564-963d-6cdaa5ca01a6",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "cc9f73ea-7706-4564-963d-6cdaa5ca01a6",
                  "port": "clk_out"
                },
                "target": {
                  "block": "f0a3c15d-a5b9-42d6-84d8-d41a6daca92e",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 191.6798430657699,
              "y": 164.81929190818397
            },
            "zoom": 1.196131156812164
          }
        }
      },
      "Mux-81": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                "type": "basic.code",
                "data": {
                  "code": "reg _o;\nwire [2:0] _sel;\n\nassign _sel = {sel2, sel1, sel0};\n\nalways @(*) begin\n    case(_sel)\n        0: _o = in0;\n        1: _o = in1;\n        2: _o = in2;\n        3: _o = in3;\n        4: _o = in4;\n        5: _o = in5;\n        6: _o = in6;\n        7: _o = in7;\n        default: _o = in0;\n    endcase\nend\n\nassign o = _o;",
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
                        "name": "sel0"
                      },
                      {
                        "name": "sel1"
                      },
                      {
                        "name": "sel2"
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
                  "x": 216,
                  "y": -168
                }
              },
              {
                "id": "23d46aff-e1fb-4bad-b13b-efc82e6636d7",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": -424
                }
              },
              {
                "id": "6e7f360c-d2e6-4cc3-9bba-7dfa2be5f466",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": -344
                }
              },
              {
                "id": "c8c3d737-1207-4504-8b6c-3f6fd008d8f5",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": -264
                }
              },
              {
                "id": "505d82ae-2b27-47b7-9d28-ae3d5474dcf9",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": -192
                }
              },
              {
                "id": "2c64bde3-a11e-4a11-9bf0-298532ab6128",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": -120
                }
              },
              {
                "id": "a83438c5-f405-4833-8c55-de93c4f18afe",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": -40
                }
              },
              {
                "id": "821010e3-2d9f-4181-8a80-3a275d741795",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": 40
                }
              },
              {
                "id": "acc534fd-6787-4cda-99e0-b6c4e5e0e35f",
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
                  "virtual": false
                },
                "position": {
                  "x": -64,
                  "y": 112
                }
              },
              {
                "id": "8f6b18f1-8f5d-485e-94ea-93c62c98695d",
                "type": "basic.input",
                "data": {
                  "name": "sel0",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 8,
                  "y": 192
                }
              },
              {
                "id": "7f52e35b-7756-4dac-9497-d9266de5adf3",
                "type": "basic.input",
                "data": {
                  "name": "sel1",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 0,
                  "y": 272
                }
              },
              {
                "id": "354e3469-c33c-469a-b23f-0997fc1ba923",
                "type": "basic.input",
                "data": {
                  "name": "sel2",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 0,
                  "y": 344
                }
              },
              {
                "id": "0ae4cda2-1003-44b3-9d40-a3d2261d2775",
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
                  "virtual": false
                },
                "position": {
                  "x": 712,
                  "y": -72
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "23d46aff-e1fb-4bad-b13b-efc82e6636d7",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in0"
                }
              },
              {
                "source": {
                  "block": "6e7f360c-d2e6-4cc3-9bba-7dfa2be5f466",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in1"
                },
                "vertices": [
                  {
                    "x": 152,
                    "y": -264
                  }
                ]
              },
              {
                "source": {
                  "block": "c8c3d737-1207-4504-8b6c-3f6fd008d8f5",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in2"
                },
                "vertices": [
                  {
                    "x": 128,
                    "y": -216
                  }
                ]
              },
              {
                "source": {
                  "block": "505d82ae-2b27-47b7-9d28-ae3d5474dcf9",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in3"
                },
                "vertices": [
                  {
                    "x": 112,
                    "y": -152
                  }
                ]
              },
              {
                "source": {
                  "block": "2c64bde3-a11e-4a11-9bf0-298532ab6128",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in4"
                },
                "vertices": [
                  {
                    "x": 96,
                    "y": -72
                  }
                ]
              },
              {
                "source": {
                  "block": "a83438c5-f405-4833-8c55-de93c4f18afe",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in5"
                },
                "vertices": [
                  {
                    "x": 96,
                    "y": -32
                  }
                ]
              },
              {
                "source": {
                  "block": "821010e3-2d9f-4181-8a80-3a275d741795",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in6"
                },
                "vertices": [
                  {
                    "x": 112,
                    "y": 0
                  }
                ]
              },
              {
                "source": {
                  "block": "acc534fd-6787-4cda-99e0-b6c4e5e0e35f",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "in7"
                },
                "vertices": [
                  {
                    "x": 136,
                    "y": 24
                  }
                ]
              },
              {
                "source": {
                  "block": "8f6b18f1-8f5d-485e-94ea-93c62c98695d",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "sel0"
                },
                "vertices": [
                  {
                    "x": 160,
                    "y": 48
                  }
                ]
              },
              {
                "source": {
                  "block": "7f52e35b-7756-4dac-9497-d9266de5adf3",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "sel1"
                },
                "vertices": [
                  {
                    "x": 168,
                    "y": 64
                  }
                ]
              },
              {
                "source": {
                  "block": "354e3469-c33c-469a-b23f-0997fc1ba923",
                  "port": "out"
                },
                "target": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "sel2"
                }
              },
              {
                "source": {
                  "block": "5fcb5652-df84-4e45-ae46-93fcf952a8ad",
                  "port": "o"
                },
                "target": {
                  "block": "0ae4cda2-1003-44b3-9d40-a3d2261d2775",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 495.98157701188507,
              "y": 474.443802002074
            },
            "zoom": 1.0592550915925727
          }
        }
      },
      "RE_4nota": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 40_863;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clock)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clock_out = divcounter[N - 1];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clock"
                      }
                    ],
                    "out": [
                      {
                        "name": "clock_out"
                      }
                    ]
                  }
                },
                "position": {
                  "x": -1232,
                  "y": -568
                }
              },
              {
                "id": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
                "type": "basic.input",
                "data": {
                  "name": "in",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": -1464,
                  "y": -472
                }
              },
              {
                "id": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
                "type": "basic.output",
                "data": {
                  "name": "out",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": -672,
                  "y": -480
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "437b9ba6-fb9f-4fdf-b435-a2d596c260d7",
                  "port": "out"
                },
                "target": {
                  "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
                  "port": "clock"
                }
              },
              {
                "source": {
                  "block": "f12b2e18-9ad7-4c26-8eea-d181efce1e6e",
                  "port": "clock_out"
                },
                "target": {
                  "block": "cb230da2-5f04-4475-8d6c-dbc2c48777bd",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 1576.9547013028478,
              "y": 704.2570461403099
            },
            "zoom": 0.9693590402603149
          }
        }
      },
      "SI_4nota": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 24_297;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk_in"
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
                  "x": 352,
                  "y": 168
                }
              },
              {
                "id": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f",
                "type": "basic.input",
                "data": {
                  "name": "in",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 176,
                  "y": 264
                }
              },
              {
                "id": "7dd2f708-98ea-4b91-9e43-2a62089d9229",
                "type": "basic.output",
                "data": {
                  "name": "out",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 856,
                  "y": 248
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f",
                  "port": "out"
                },
                "target": {
                  "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                  "port": "clk_out"
                },
                "target": {
                  "block": "7dd2f708-98ea-4b91-9e43-2a62089d9229",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -0.000018294353623105053,
              "y": 0.14129806496099206
            },
            "zoom": 1.0000000362340538
          }
        }
      },
      "RE_5nota": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 20_431;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk_in"
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
                  "x": 352,
                  "y": 168
                }
              },
              {
                "id": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f",
                "type": "basic.input",
                "data": {
                  "name": "in",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 176,
                  "y": 264
                }
              },
              {
                "id": "7dd2f708-98ea-4b91-9e43-2a62089d9229",
                "type": "basic.output",
                "data": {
                  "name": "out",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 856,
                  "y": 248
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "b0517b44-adfc-4ccf-8e7a-4ce9b44e784f",
                  "port": "out"
                },
                "target": {
                  "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                  "port": "clk_out"
                },
                "target": {
                  "block": "7dd2f708-98ea-4b91-9e43-2a62089d9229",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -0.000018294353623105053,
              "y": 0.14129806496099206
            },
            "zoom": 1.000000028981617
          }
        }
      },
      "bit.0": {
        "version": "1.0",
        "package": {
          "name": "Bit 0",
          "version": "1.0.0",
          "description": "Assign 0 to the output wire",
          "author": "Jesús Arroyo",
          "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "type": "basic.code",
                "data": {
                  "code": "// Bit 0\n\nassign v = 1'b0;",
                  "params": [],
                  "ports": {
                    "in": [],
                    "out": [
                      {
                        "name": "v"
                      }
                    ]
                  }
                },
                "position": {
                  "x": 96,
                  "y": 96
                }
              },
              {
                "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "type": "basic.output",
                "data": {
                  "name": ""
                },
                "position": {
                  "x": 608,
                  "y": 192
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                  "port": "v"
                },
                "target": {
                  "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
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
      },
      "2bit-Counter": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "880040b3-7a02-466c-b703-64efd708ded5",
                "type": "basic.code",
                "data": {
                  "code": "// Counter 2 bit\n\nreg [1:0] counter;\n\nalways @(posedge clk)\n  counter <= counter + 1;\n\nassign c0 = counter[0];\nassign c1 = counter[1];\n",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk"
                      }
                    ],
                    "out": [
                      {
                        "name": "c0"
                      },
                      {
                        "name": "c1"
                      }
                    ]
                  }
                },
                "position": {
                  "x": -384,
                  "y": -104
                }
              },
              {
                "id": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d",
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
                  "virtual": false
                },
                "position": {
                  "x": -568,
                  "y": -8
                }
              },
              {
                "id": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
                "type": "basic.output",
                "data": {
                  "name": "c0",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 96,
                  "y": -72
                }
              },
              {
                "id": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
                "type": "basic.output",
                "data": {
                  "name": "c1",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 96,
                  "y": 56
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "6ea87b91-1b67-4f02-b51c-0c894dd57f4d",
                  "port": "out"
                },
                "target": {
                  "block": "880040b3-7a02-466c-b703-64efd708ded5",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "880040b3-7a02-466c-b703-64efd708ded5",
                  "port": "c0"
                },
                "target": {
                  "block": "a2bc3376-29a2-4e9f-94a0-1ff2ca287977",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "880040b3-7a02-466c-b703-64efd708ded5",
                  "port": "c1"
                },
                "target": {
                  "block": "6e9ea63b-0704-40ef-a3d1-00cfb46ccfa7",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": 588.7251715139968,
              "y": 271.10326976606086
            },
            "zoom": 0.7943261915791214
          }
        }
      },
      "Delay-1s": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "1a8fbc1d-c7b7-4a1e-9ab3-00a7e5f0dd00",
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
                  "virtual": false
                },
                "position": {
                  "x": 144,
                  "y": 264
                }
              },
              {
                "id": "f8e7d270-f8ea-4ab9-920c-d6682902d8d9",
                "type": "basic.output",
                "data": {
                  "name": "clk_out",
                  "pins": [
                    {
                      "index": "0",
                      "name": "",
                      "value": "0"
                    }
                  ],
                  "virtual": false
                },
                "position": {
                  "x": 856,
                  "y": 264
                }
              },
              {
                "id": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                "type": "basic.code",
                "data": {
                  "code": "parameter M = 12_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
                  "params": [],
                  "ports": {
                    "in": [
                      {
                        "name": "clk_in"
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
                  "x": 352,
                  "y": 168
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "1a8fbc1d-c7b7-4a1e-9ab3-00a7e5f0dd00",
                  "port": "out"
                },
                "target": {
                  "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                  "port": "clk_in"
                }
              },
              {
                "source": {
                  "block": "ae42f8e9-9644-48a6-9d33-c90d2296edff",
                  "port": "clk_out"
                },
                "target": {
                  "block": "f8e7d270-f8ea-4ab9-920c-d6682902d8d9",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "state": {
            "pan": {
              "x": -0.000018294353623105053,
              "y": 0.14129806496099206
            },
            "zoom": 0.9999999940739842
          }
        }
      },
      "Serbo-robot": {
        "version": "1.0",
        "package": {
          "name": "",
          "version": "",
          "description": "",
          "author": "",
          "image": ""
        },
        "design": {
          "graph": {
            "blocks": [
              {
                "id": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                "type": "basic.code",
                "data": {
                  "code": "// @include ServoMotor.v\n\nparameter HIGH = 8'h96;\nparameter LOW = 8'h50;\n\nreg [7:0] pos = LOW;\n\nServoMotor servo (\n  .clk(clk),\n  .pos(pos),\n  .servo(pwm));\n    \nalways @(posedge clk)\n  pos <= bit ? HIGH : LOW;\n",
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
                  "x": 376,
                  "y": 248
                }
              },
              {
                "id": "f6ac14c6-9ed8-45b5-a83d-2e60572df337",
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
                  "virtual": false
                },
                "position": {
                  "x": 168,
                  "y": 280
                }
              },
              {
                "id": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8",
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
                  "virtual": false
                },
                "position": {
                  "x": 168,
                  "y": 408
                }
              },
              {
                "id": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527",
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
                  "virtual": false
                },
                "position": {
                  "x": 880,
                  "y": 344
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "f6ac14c6-9ed8-45b5-a83d-2e60572df337",
                  "port": "out"
                },
                "target": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "clk"
                }
              },
              {
                "source": {
                  "block": "eb2f1ad5-a45d-495f-be32-43a6cfb714f8",
                  "port": "out"
                },
                "target": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "bit"
                }
              },
              {
                "source": {
                  "block": "07c5c9d3-8cbf-4e5d-8629-d831bd41263f",
                  "port": "pwm"
                },
                "target": {
                  "block": "5b26c75b-0b6b-4c0c-8fa7-aa49284d5527",
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
            "zoom": 1.0000000689497655
          }
        }
      }
    },
    "state": {
      "pan": {
        "x": 522.0851,
        "y": 101.0906
      },
      "zoom": 0.9261
    }
  }
}