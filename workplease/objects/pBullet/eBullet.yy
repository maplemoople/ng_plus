{
  "spriteId": {
    "name": "sEBullet",
    "path": "sprites/sEBullet/sEBullet.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_light",
    "path": "objects/obj_light/obj_light.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"eBullet","path":"objects/eBullet/eBullet.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"eBullet","path":"objects/eBullet/eBullet.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"eBullet","path":"objects/eBullet/eBullet.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"parent":{"name":"eBullet","path":"objects/eBullet/eBullet.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"Light_Intensity","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"1.5","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Color","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"$FF007FFF","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Type","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"\"Point Light\"","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Width","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"100","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Range","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"95","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "resourceVersion": "1.0",
  "name": "eBullet",
  "tags": [],
  "resourceType": "GMObject",
}