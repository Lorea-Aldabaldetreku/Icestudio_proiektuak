{
  "image": "",
  "state": {
    "pan": {
      "x": 378.9999897877357,
      "y": 54.999998577716035
    },
    "zoom": 0.9999999730547116
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "b3aafb72-3918-40d5-8480-194a80c06276",
        "type": "basic.input",
        "data": {
          "label": "Botoia",
          "pin": {
            "name": "SW1",
            "value": "10"
          }
        },
        "position": {
          "x": -104,
          "y": 144
        }
      },
      {
        "id": "7c8e817d-0b9d-4fef-ad42-39d8fd5f12f6",
        "type": "basic.input",
        "data": {
          "label": "Botoia",
          "pin": {
            "name": "SW2",
            "value": "11"
          }
        },
        "position": {
          "x": -104,
          "y": 240
        }
      },
      {
        "id": "8cf907a5-42ad-4954-95c2-45c09bd89bcb",
        "type": "basic.output",
        "data": {
          "label": "Led0",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 536,
          "y": 64
        }
      },
      {
        "id": "3c59390d-28a0-4242-9688-23828d66dc64",
        "type": "basic.output",
        "data": {
          "label": "Led0",
          "pin": {
            "name": "LED2",
            "value": "97"
          }
        },
        "position": {
          "x": 536,
          "y": 136
        }
      },
      {
        "id": "7937405c-abb9-465b-bde7-34751b74769f",
        "type": "basic.output",
        "data": {
          "label": "Led0",
          "pin": {
            "name": "LED4",
            "value": "99"
          }
        },
        "position": {
          "x": 536,
          "y": 208
        }
      },
      {
        "id": "3fdd0b75-12a8-410b-a422-41b4a5366908",
        "type": "basic.output",
        "data": {
          "label": "Led0",
          "pin": {
            "name": "LED6",
            "value": "102"
          }
        },
        "position": {
          "x": 520,
          "y": 288
        }
      },
      {
        "id": "d8c4fdda-3d72-476b-b686-600c81e4234e",
        "type": "logic.comb.demux_1_4",
        "data": {},
        "position": {
          "x": 288,
          "y": 120
        }
      },
      {
        "id": "98f30bce-b353-448f-93a1-42fd05462bf8",
        "type": "bit.1",
        "data": {},
        "position": {
          "x": -104,
          "y": 48
        }
      },
      {
        "id": "3a60dcb6-14d9-46e2-8112-c562c2d67a3b",
        "type": "config.pull_up",
        "data": {},
        "position": {
          "x": 72,
          "y": 144
        }
      },
      {
        "id": "1d592845-6759-4cea-8ee9-73f95fa18bee",
        "type": "config.pull_up",
        "data": {},
        "position": {
          "x": 72,
          "y": 240
        }
      },
      {
        "id": "01a16772-15c4-490c-9d6c-3d21bca38e58",
        "type": "bit.0",
        "data": {},
        "position": {
          "x": -96,
          "y": 368
        }
      },
      {
        "id": "9a0c250a-7ccf-4434-affb-82c9182578ee",
        "type": "basic.output",
        "data": {
          "label": "Led1",
          "pin": {
            "name": "LED1",
            "value": "96"
          }
        },
        "position": {
          "x": 184,
          "y": 368
        }
      },
      {
        "id": "03de97ad-5a48-4340-b913-c6f77c65d827",
        "type": "basic.output",
        "data": {
          "label": "Led1",
          "pin": {
            "name": "LED3",
            "value": "98"
          }
        },
        "position": {
          "x": 184,
          "y": 456
        }
      },
      {
        "id": "92f9a48b-c62a-4d11-ba59-8d54df31d849",
        "type": "basic.output",
        "data": {
          "label": "Led1",
          "pin": {
            "name": "LED5",
            "value": "101"
          }
        },
        "position": {
          "x": 184,
          "y": 528
        }
      },
      {
        "id": "590380ec-f077-4e69-bcdf-6ae20b14284b",
        "type": "basic.output",
        "data": {
          "label": "Led1",
          "pin": {
            "name": "LED7",
            "value": "104"
          }
        },
        "position": {
          "x": 184,
          "y": 608
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa"
        },
        "target": {
          "block": "8cf907a5-42ad-4954-95c2-45c09bd89bcb",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2"
        },
        "target": {
          "block": "3c59390d-28a0-4242-9688-23828d66dc64",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3"
        },
        "target": {
          "block": "7937405c-abb9-465b-bde7-34751b74769f",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "b9d764ea-538a-420f-a8d3-45af7a8e30a2"
        },
        "target": {
          "block": "3fdd0b75-12a8-410b-a422-41b4a5366908",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "98f30bce-b353-448f-93a1-42fd05462bf8",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406"
        }
      },
      {
        "source": {
          "block": "3a60dcb6-14d9-46e2-8112-c562c2d67a3b",
          "port": "a139fa0d-9b45-4480-a251-f4a66b49aa23"
        },
        "target": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f"
        }
      },
      {
        "source": {
          "block": "b3aafb72-3918-40d5-8480-194a80c06276",
          "port": "out"
        },
        "target": {
          "block": "3a60dcb6-14d9-46e2-8112-c562c2d67a3b",
          "port": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150"
        }
      },
      {
        "source": {
          "block": "7c8e817d-0b9d-4fef-ad42-39d8fd5f12f6",
          "port": "out"
        },
        "target": {
          "block": "1d592845-6759-4cea-8ee9-73f95fa18bee",
          "port": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150"
        }
      },
      {
        "source": {
          "block": "1d592845-6759-4cea-8ee9-73f95fa18bee",
          "port": "a139fa0d-9b45-4480-a251-f4a66b49aa23"
        },
        "target": {
          "block": "d8c4fdda-3d72-476b-b686-600c81e4234e",
          "port": "657dab9e-6580-4f02-b54f-66477863f26a"
        }
      },
      {
        "source": {
          "block": "01a16772-15c4-490c-9d6c-3d21bca38e58",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "9a0c250a-7ccf-4434-affb-82c9182578ee",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "01a16772-15c4-490c-9d6c-3d21bca38e58",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "03de97ad-5a48-4340-b913-c6f77c65d827",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "01a16772-15c4-490c-9d6c-3d21bca38e58",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "92f9a48b-c62a-4d11-ba59-8d54df31d849",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "01a16772-15c4-490c-9d6c-3d21bca38e58",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "590380ec-f077-4e69-bcdf-6ae20b14284b",
          "port": "in"
        }
      }
    ]
  },
  "deps": {
    "logic.comb.demux_1_4": {
      "image": "resources/images/demux.svg",
      "state": {
        "pan": {
          "x": 75.84442855228853,
          "y": 63.15803102316195
        },
        "zoom": 0.8586960434913635
      },
      "graph": {
        "blocks": [
          {
            "id": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
            "type": "basic.code",
            "data": {
              "code": "assign {out3,out2,out1,out0} = in0 << {sel1,sel0};",
              "ports": {
                "in": [
                  "in0",
                  "sel0",
                  "sel1"
                ],
                "out": [
                  "out0",
                  "out1",
                  "out2",
                  "out3"
                ]
              }
            },
            "position": {
              "x": 208,
              "y": 64
            }
          },
          {
            "id": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
            "type": "basic.output",
            "data": {
              "label": "o0"
            },
            "position": {
              "x": 760,
              "y": 40
            }
          },
          {
            "id": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
            "type": "basic.output",
            "data": {
              "label": "o1"
            },
            "position": {
              "x": 760,
              "y": 120
            }
          },
          {
            "id": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
            "type": "basic.output",
            "data": {
              "label": "o2"
            },
            "position": {
              "x": 760,
              "y": 200
            }
          },
          {
            "id": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
            "type": "basic.output",
            "data": {
              "label": "o3"
            },
            "position": {
              "x": 760,
              "y": 280
            }
          },
          {
            "id": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
            "type": "basic.input",
            "data": {
              "label": "i"
            },
            "position": {
              "x": 16,
              "y": 72
            }
          },
          {
            "id": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
            "type": "basic.input",
            "data": {
              "label": "sel0"
            },
            "position": {
              "x": 16,
              "y": 160
            }
          },
          {
            "id": "657dab9e-6580-4f02-b54f-66477863f26a",
            "type": "basic.input",
            "data": {
              "label": "sel1"
            },
            "position": {
              "x": 16,
              "y": 248
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "out0"
            },
            "target": {
              "block": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "out1"
            },
            "target": {
              "block": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "out2"
            },
            "target": {
              "block": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "out3"
            },
            "target": {
              "block": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
              "port": "out"
            },
            "target": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "in0"
            }
          },
          {
            "source": {
              "block": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
              "port": "out"
            },
            "target": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "sel0"
            }
          },
          {
            "source": {
              "block": "657dab9e-6580-4f02-b54f-66477863f26a",
              "port": "out"
            },
            "target": {
              "block": "8a50b4e9-884d-49bb-98c3-3cd1e6cb3f4f",
              "port": "sel1"
            }
          }
        ]
      },
      "deps": {}
    },
    "bit.1": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 1\n\nassign v = 1'b1;",
              "ports": {
                "in": [],
                "out": [
                  "v"
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
              "label": ""
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
      "image": "resources/images/1.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "config.pull_up": {
      "image": "resources/images/pull_up.svg",
      "state": {
        "pan": {
          "x": -23,
          "y": 8
        },
        "zoom": 1
      },
      "graph": {
        "blocks": [
          {
            "id": "2b245a71-2d80-466b-955f-e3d61839fe25",
            "type": "basic.code",
            "data": {
              "code": "// Pull up\n\nwire din, dout, outen;\n\nassign o = din;\n\nSB_IO #(\n    .PIN_TYPE(6'b 1010_01),\n    .PULLUP(1'b 1)\n) io_pin (\n    .PACKAGE_PIN(i),\n    .OUTPUT_ENABLE(outen),\n    .D_OUT_0(dout),\n    .D_IN_0(din)\n);",
              "ports": {
                "in": [
                  "i"
                ],
                "out": [
                  "o"
                ]
              }
            },
            "position": {
              "x": 256,
              "y": 104
            }
          },
          {
            "id": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150",
            "type": "basic.input",
            "data": {
              "label": ""
            },
            "position": {
              "x": 64,
              "y": 200
            }
          },
          {
            "id": "a139fa0d-9b45-4480-a251-f4a66b49aa23",
            "type": "basic.output",
            "data": {
              "label": ""
            },
            "position": {
              "x": 760,
              "y": 200
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "bb4a1ca9-1b30-471e-92ca-ca7ff2fc1150",
              "port": "out"
            },
            "target": {
              "block": "2b245a71-2d80-466b-955f-e3d61839fe25",
              "port": "i"
            }
          },
          {
            "source": {
              "block": "2b245a71-2d80-466b-955f-e3d61839fe25",
              "port": "o"
            },
            "target": {
              "block": "a139fa0d-9b45-4480-a251-f4a66b49aa23",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    },
    "bit.0": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 0\n\nassign v = 1'b0;",
              "ports": {
                "in": [],
                "out": [
                  "v"
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
              "label": ""
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
      "image": "resources/images/0.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    }
  }
}