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

class BowVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.word_ids = null;
      this.word_values = null;
    }
    else {
      if (initObj.hasOwnProperty('word_ids')) {
        this.word_ids = initObj.word_ids
      }
      else {
        this.word_ids = [];
      }
      if (initObj.hasOwnProperty('word_values')) {
        this.word_values = initObj.word_values
      }
      else {
        this.word_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BowVector
    // Serialize message field [word_ids]
    bufferOffset = _arraySerializer.uint32(obj.word_ids, buffer, bufferOffset, null);
    // Serialize message field [word_values]
    bufferOffset = _arraySerializer.float32(obj.word_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BowVector
    let len;
    let data = new BowVector(null);
    // Deserialize message field [word_ids]
    data.word_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [word_values]
    data.word_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.word_ids.length;
    length += 4 * object.word_values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/BowVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1902706b4fdbaef5678c8f0eeda681c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] word_ids
    float32[] word_values
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BowVector(null);
    if (msg.word_ids !== undefined) {
      resolved.word_ids = msg.word_ids;
    }
    else {
      resolved.word_ids = []
    }

    if (msg.word_values !== undefined) {
      resolved.word_values = msg.word_values;
    }
    else {
      resolved.word_values = []
    }

    return resolved;
    }
};

module.exports = BowVector;
