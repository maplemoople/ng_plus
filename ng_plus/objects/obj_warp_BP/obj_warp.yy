{
  "spriteId": {
    "name": "spr_warp",
    "path": "sprites/spr_warp/spr_warp.yy",
  },
  "solid": false,
  "visible": false,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_warp","path":"objects/obj_warp/obj_warp.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_warp","path":"objects/obj_warp/obj_warp.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"targetX","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"targetY","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"Menu","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"targetRoom","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Collision - Assets",
    "path": "folders/Objects/Collision - Assets.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_warp",
  "tags": [],
  "resourceType": "GMObject",
}