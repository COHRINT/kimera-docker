// Auto-generated. Do not edit!

// (in-package pose_graph_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BowVector = require('./BowVector.js');

//-----------------------------------------------------------

class BowQuery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.pose_id = null;
      this.bow_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('pose_id')) {
        this.pose_id = initObj.pose_id
      }
      else {
        this.pose_id = 0;
      }
      if (initObj.hasOwnProperty('bow_vector')) {
        this.bow_vector = initObj.bow_vector
      }
      else {
        this.bow_vector = new BowVector();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BowQuery
    // Serialize message field [robot_id]
    bufferOffset = _serializer.uint32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [pose_id]
    bufferOffset = _serializer.uint32(obj.pose_id, buffer, bufferOffset);
    // Serialize message field [bow_vector]
    bufferOffset = BowVector.serialize(obj.bow_vector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BowQuery
    let len;
    let data = new BowQuery(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pose_id]
    data.pose_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bow_vector]
    data.bow_vector = BowVector.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BowVector.getMessageSize(object.bow_vector);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/BowQuery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0cd5fc0bc344c45715e8fad77418231';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 robot_id
    uint32 pose_id
    BowVector bow_vector
    ================================================================================
    MSG: pose_graph_tools/BowVector
    uint32[] word_ids
    float32[] word_values
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BowQuery(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.pose_id !== undefined) {
      resolved.pose_id = msg.pose_id;
    }
    else {
      resolved.pose_id = 0
    }

    if (msg.bow_vector !== undefined) {
      resolved.bow_vector = BowVector.Resolve(msg.bow_vector)
    }
    else {
      resolved.bow_vector = new BowVector()
    }

    return resolved;
    }
};

module.exports = BowQuery;
