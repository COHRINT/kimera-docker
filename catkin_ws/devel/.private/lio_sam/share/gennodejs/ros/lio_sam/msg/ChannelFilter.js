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

class ChannelFilter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.recipient = null;
      this.dims = null;
      this.matrixDim = null;
      this.infMat = null;
      this.infVec = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = 0;
      }
      if (initObj.hasOwnProperty('recipient')) {
        this.recipient = initObj.recipient
      }
      else {
        this.recipient = 0;
      }
      if (initObj.hasOwnProperty('dims')) {
        this.dims = initObj.dims
      }
      else {
        this.dims = [];
      }
      if (initObj.hasOwnProperty('matrixDim')) {
        this.matrixDim = initObj.matrixDim
      }
      else {
        this.matrixDim = 0;
      }
      if (initObj.hasOwnProperty('infMat')) {
        this.infMat = initObj.infMat
      }
      else {
        this.infMat = [];
      }
      if (initObj.hasOwnProperty('infVec')) {
        this.infVec = initObj.infVec
      }
      else {
        this.infVec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChannelFilter
    // Serialize message field [sender]
    bufferOffset = _serializer.int16(obj.sender, buffer, bufferOffset);
    // Serialize message field [recipient]
    bufferOffset = _serializer.int16(obj.recipient, buffer, bufferOffset);
    // Serialize message field [dims]
    bufferOffset = _arraySerializer.string(obj.dims, buffer, bufferOffset, null);
    // Serialize message field [matrixDim]
    bufferOffset = _serializer.int16(obj.matrixDim, buffer, bufferOffset);
    // Serialize message field [infMat]
    bufferOffset = _arraySerializer.float64(obj.infMat, buffer, bufferOffset, null);
    // Serialize message field [infVec]
    bufferOffset = _arraySerializer.float64(obj.infVec, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChannelFilter
    let len;
    let data = new ChannelFilter(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [recipient]
    data.recipient = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [dims]
    data.dims = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [matrixDim]
    data.matrixDim = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [infMat]
    data.infMat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [infVec]
    data.infVec = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.dims.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.infMat.length;
    length += 8 * object.infVec.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lio_sam/ChannelFilter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87e5f6005f50505b9be672729f6ad269';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 sender
    int16 recipient
    string[] dims
    int16 matrixDim
    float64[] infMat
    float64[] infVec
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChannelFilter(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = 0
    }

    if (msg.recipient !== undefined) {
      resolved.recipient = msg.recipient;
    }
    else {
      resolved.recipient = 0
    }

    if (msg.dims !== undefined) {
      resolved.dims = msg.dims;
    }
    else {
      resolved.dims = []
    }

    if (msg.matrixDim !== undefined) {
      resolved.matrixDim = msg.matrixDim;
    }
    else {
      resolved.matrixDim = 0
    }

    if (msg.infMat !== undefined) {
      resolved.infMat = msg.infMat;
    }
    else {
      resolved.infMat = []
    }

    if (msg.infVec !== undefined) {
      resolved.infVec = msg.infVec;
    }
    else {
      resolved.infVec = []
    }

    return resolved;
    }
};

module.exports = ChannelFilter;
