// Auto-generated. Do not edit!

// (in-package lio_sam.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SLAMRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeSteps = null;
    }
    else {
      if (initObj.hasOwnProperty('timeSteps')) {
        this.timeSteps = initObj.timeSteps
      }
      else {
        this.timeSteps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SLAMRequest
    // Serialize message field [timeSteps]
    bufferOffset = _arraySerializer.int16(obj.timeSteps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SLAMRequest
    let len;
    let data = new SLAMRequest(null);
    // Deserialize message field [timeSteps]
    data.timeSteps = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.timeSteps.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lio_sam/SLAMRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22beaa9729a4d342620b03d0ce0a3db3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[] timeSteps
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SLAMRequest(null);
    if (msg.timeSteps !== undefined) {
      resolved.timeSteps = msg.timeSteps;
    }
    else {
      resolved.timeSteps = []
    }

    return resolved;
    }
};

module.exports = SLAMRequest;
