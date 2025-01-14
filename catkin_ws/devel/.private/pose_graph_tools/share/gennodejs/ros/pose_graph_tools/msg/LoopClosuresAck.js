// Auto-generated. Do not edit!

// (in-package pose_graph_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LoopClosuresAck {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publishing_robot_id = null;
      this.destination_robot_id = null;
      this.robot_src = null;
      this.frame_src = null;
      this.robot_dst = null;
      this.frame_dst = null;
    }
    else {
      if (initObj.hasOwnProperty('publishing_robot_id')) {
        this.publishing_robot_id = initObj.publishing_robot_id
      }
      else {
        this.publishing_robot_id = 0;
      }
      if (initObj.hasOwnProperty('destination_robot_id')) {
        this.destination_robot_id = initObj.destination_robot_id
      }
      else {
        this.destination_robot_id = 0;
      }
      if (initObj.hasOwnProperty('robot_src')) {
        this.robot_src = initObj.robot_src
      }
      else {
        this.robot_src = [];
      }
      if (initObj.hasOwnProperty('frame_src')) {
        this.frame_src = initObj.frame_src
      }
      else {
        this.frame_src = [];
      }
      if (initObj.hasOwnProperty('robot_dst')) {
        this.robot_dst = initObj.robot_dst
      }
      else {
        this.robot_dst = [];
      }
      if (initObj.hasOwnProperty('frame_dst')) {
        this.frame_dst = initObj.frame_dst
      }
      else {
        this.frame_dst = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopClosuresAck
    // Serialize message field [publishing_robot_id]
    bufferOffset = _serializer.uint16(obj.publishing_robot_id, buffer, bufferOffset);
    // Serialize message field [destination_robot_id]
    bufferOffset = _serializer.uint16(obj.destination_robot_id, buffer, bufferOffset);
    // Serialize message field [robot_src]
    bufferOffset = _arraySerializer.uint32(obj.robot_src, buffer, bufferOffset, null);
    // Serialize message field [frame_src]
    bufferOffset = _arraySerializer.uint32(obj.frame_src, buffer, bufferOffset, null);
    // Serialize message field [robot_dst]
    bufferOffset = _arraySerializer.uint32(obj.robot_dst, buffer, bufferOffset, null);
    // Serialize message field [frame_dst]
    bufferOffset = _arraySerializer.uint32(obj.frame_dst, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopClosuresAck
    let len;
    let data = new LoopClosuresAck(null);
    // Deserialize message field [publishing_robot_id]
    data.publishing_robot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [destination_robot_id]
    data.destination_robot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [robot_src]
    data.robot_src = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [frame_src]
    data.frame_src = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [robot_dst]
    data.robot_dst = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [frame_dst]
    data.frame_dst = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.robot_src.length;
    length += 4 * object.frame_src.length;
    length += 4 * object.robot_dst.length;
    length += 4 * object.frame_dst.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/LoopClosuresAck';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9c7cfa8a3ce5c724d171d7076a7f930';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 publishing_robot_id
    uint16 destination_robot_id
    uint32[] robot_src
    uint32[] frame_src
    uint32[] robot_dst
    uint32[] frame_dst
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopClosuresAck(null);
    if (msg.publishing_robot_id !== undefined) {
      resolved.publishing_robot_id = msg.publishing_robot_id;
    }
    else {
      resolved.publishing_robot_id = 0
    }

    if (msg.destination_robot_id !== undefined) {
      resolved.destination_robot_id = msg.destination_robot_id;
    }
    else {
      resolved.destination_robot_id = 0
    }

    if (msg.robot_src !== undefined) {
      resolved.robot_src = msg.robot_src;
    }
    else {
      resolved.robot_src = []
    }

    if (msg.frame_src !== undefined) {
      resolved.frame_src = msg.frame_src;
    }
    else {
      resolved.frame_src = []
    }

    if (msg.robot_dst !== undefined) {
      resolved.robot_dst = msg.robot_dst;
    }
    else {
      resolved.robot_dst = []
    }

    if (msg.frame_dst !== undefined) {
      resolved.frame_dst = msg.frame_dst;
    }
    else {
      resolved.frame_dst = []
    }

    return resolved;
    }
};

module.exports = LoopClosuresAck;
