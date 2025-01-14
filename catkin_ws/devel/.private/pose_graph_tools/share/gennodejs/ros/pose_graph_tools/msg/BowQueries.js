// Auto-generated. Do not edit!

// (in-package pose_graph_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BowQuery = require('./BowQuery.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BowQueries {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.destination_robot_id = null;
      this.queries = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('destination_robot_id')) {
        this.destination_robot_id = initObj.destination_robot_id
      }
      else {
        this.destination_robot_id = 0;
      }
      if (initObj.hasOwnProperty('queries')) {
        this.queries = initObj.queries
      }
      else {
        this.queries = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BowQueries
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [destination_robot_id]
    bufferOffset = _serializer.uint32(obj.destination_robot_id, buffer, bufferOffset);
    // Serialize message field [queries]
    // Serialize the length for message field [queries]
    bufferOffset = _serializer.uint32(obj.queries.length, buffer, bufferOffset);
    obj.queries.forEach((val) => {
      bufferOffset = BowQuery.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BowQueries
    let len;
    let data = new BowQueries(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [destination_robot_id]
    data.destination_robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [queries]
    // Deserialize array length for message field [queries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.queries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.queries[i] = BowQuery.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.queries.forEach((val) => {
      length += BowQuery.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/BowQueries';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80b67ea7bb31f6bc0188a59d8ca2119d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 destination_robot_id
    pose_graph_tools/BowQuery[] queries
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pose_graph_tools/BowQuery
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
    const resolved = new BowQueries(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.destination_robot_id !== undefined) {
      resolved.destination_robot_id = msg.destination_robot_id;
    }
    else {
      resolved.destination_robot_id = 0
    }

    if (msg.queries !== undefined) {
      resolved.queries = new Array(msg.queries.length);
      for (let i = 0; i < resolved.queries.length; ++i) {
        resolved.queries[i] = BowQuery.Resolve(msg.queries[i]);
      }
    }
    else {
      resolved.queries = []
    }

    return resolved;
    }
};

module.exports = BowQueries;
