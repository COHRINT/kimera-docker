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

class factors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.keys = null;
      this.informationMatrix = null;
      this.informationMatrixDim = null;
      this.covarianceMatrix = null;
      this.covarianceMatrixDim = null;
      this.mean = null;
      this.numMeans = null;
    }
    else {
      if (initObj.hasOwnProperty('keys')) {
        this.keys = initObj.keys
      }
      else {
        this.keys = [];
      }
      if (initObj.hasOwnProperty('informationMatrix')) {
        this.informationMatrix = initObj.informationMatrix
      }
      else {
        this.informationMatrix = [];
      }
      if (initObj.hasOwnProperty('informationMatrixDim')) {
        this.informationMatrixDim = initObj.informationMatrixDim
      }
      else {
        this.informationMatrixDim = 0;
      }
      if (initObj.hasOwnProperty('covarianceMatrix')) {
        this.covarianceMatrix = initObj.covarianceMatrix
      }
      else {
        this.covarianceMatrix = [];
      }
      if (initObj.hasOwnProperty('covarianceMatrixDim')) {
        this.covarianceMatrixDim = initObj.covarianceMatrixDim
      }
      else {
        this.covarianceMatrixDim = 0;
      }
      if (initObj.hasOwnProperty('mean')) {
        this.mean = initObj.mean
      }
      else {
        this.mean = [];
      }
      if (initObj.hasOwnProperty('numMeans')) {
        this.numMeans = initObj.numMeans
      }
      else {
        this.numMeans = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type factors
    // Serialize message field [keys]
    bufferOffset = _arraySerializer.int16(obj.keys, buffer, bufferOffset, null);
    // Serialize message field [informationMatrix]
    bufferOffset = _arraySerializer.float32(obj.informationMatrix, buffer, bufferOffset, null);
    // Serialize message field [informationMatrixDim]
    bufferOffset = _serializer.int16(obj.informationMatrixDim, buffer, bufferOffset);
    // Serialize message field [covarianceMatrix]
    bufferOffset = _arraySerializer.float32(obj.covarianceMatrix, buffer, bufferOffset, null);
    // Serialize message field [covarianceMatrixDim]
    bufferOffset = _serializer.int16(obj.covarianceMatrixDim, buffer, bufferOffset);
    // Serialize message field [mean]
    bufferOffset = _arraySerializer.float32(obj.mean, buffer, bufferOffset, null);
    // Serialize message field [numMeans]
    bufferOffset = _serializer.int16(obj.numMeans, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type factors
    let len;
    let data = new factors(null);
    // Deserialize message field [keys]
    data.keys = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [informationMatrix]
    data.informationMatrix = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [informationMatrixDim]
    data.informationMatrixDim = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [covarianceMatrix]
    data.covarianceMatrix = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [covarianceMatrixDim]
    data.covarianceMatrixDim = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mean]
    data.mean = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [numMeans]
    data.numMeans = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.keys.length;
    length += 4 * object.informationMatrix.length;
    length += 4 * object.covarianceMatrix.length;
    length += 4 * object.mean.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lio_sam/factors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '132517768e54222e9cb7f7948cccc70e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[] keys
    float32[] informationMatrix
    int16 informationMatrixDim
    float32[] covarianceMatrix
    int16 covarianceMatrixDim
    float32[] mean
    int16 numMeans
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new factors(null);
    if (msg.keys !== undefined) {
      resolved.keys = msg.keys;
    }
    else {
      resolved.keys = []
    }

    if (msg.informationMatrix !== undefined) {
      resolved.informationMatrix = msg.informationMatrix;
    }
    else {
      resolved.informationMatrix = []
    }

    if (msg.informationMatrixDim !== undefined) {
      resolved.informationMatrixDim = msg.informationMatrixDim;
    }
    else {
      resolved.informationMatrixDim = 0
    }

    if (msg.covarianceMatrix !== undefined) {
      resolved.covarianceMatrix = msg.covarianceMatrix;
    }
    else {
      resolved.covarianceMatrix = []
    }

    if (msg.covarianceMatrixDim !== undefined) {
      resolved.covarianceMatrixDim = msg.covarianceMatrixDim;
    }
    else {
      resolved.covarianceMatrixDim = 0
    }

    if (msg.mean !== undefined) {
      resolved.mean = msg.mean;
    }
    else {
      resolved.mean = []
    }

    if (msg.numMeans !== undefined) {
      resolved.numMeans = msg.numMeans;
    }
    else {
      resolved.numMeans = 0
    }

    return resolved;
    }
};

module.exports = factors;
