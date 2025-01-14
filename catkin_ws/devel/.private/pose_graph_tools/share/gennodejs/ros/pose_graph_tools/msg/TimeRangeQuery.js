// Auto-generated. Do not edit!

// (in-package pose_graph_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TimeRangeQuery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source_robot_id = null;
      this.destination_robot_id = null;
      this.start = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('source_robot_id')) {
        this.source_robot_id = initObj.source_robot_id
      }
      else {
        this.source_robot_id = 0;
      }
      if (initObj.hasOwnProperty('destination_robot_id')) {
        this.destination_robot_id = initObj.destination_robot_id
      }
      else {
        this.destination_robot_id = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeRangeQuery
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [source_robot_id]
    bufferOffset = _serializer.uint32(obj.source_robot_id, buffer, bufferOffset);
    // Serialize message field [destination_robot_id]
    bufferOffset = _serializer.uint32(obj.destination_robot_id, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.time(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.time(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeRangeQuery
    let len;
    let data = new TimeRangeQuery(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_robot_id]
    data.source_robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [destination_robot_id]
    data.destination_robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/TimeRangeQuery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8850a010b4d3f62be955d67ff24be89e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 source_robot_id        # Robot that sends this request
    uint32 destination_robot_id   # Robot that receives this request
    time start                    # Start of time range
    time end                      # End of time range
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeRangeQuery(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.source_robot_id !== undefined) {
      resolved.source_robot_id = msg.source_robot_id;
    }
    else {
      resolved.source_robot_id = 0
    }

    if (msg.destination_robot_id !== undefined) {
      resolved.destination_robot_id = msg.destination_robot_id;
    }
    else {
      resolved.destination_robot_id = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = {secs: 0, nsecs: 0}
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = TimeRangeQuery;
