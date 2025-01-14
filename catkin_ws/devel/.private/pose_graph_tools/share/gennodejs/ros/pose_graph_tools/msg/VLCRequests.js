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

class VLCRequests {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source_robot_id = null;
      this.destination_robot_id = null;
      this.pose_ids = null;
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
      if (initObj.hasOwnProperty('pose_ids')) {
        this.pose_ids = initObj.pose_ids
      }
      else {
        this.pose_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VLCRequests
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [source_robot_id]
    bufferOffset = _serializer.uint32(obj.source_robot_id, buffer, bufferOffset);
    // Serialize message field [destination_robot_id]
    bufferOffset = _serializer.uint32(obj.destination_robot_id, buffer, bufferOffset);
    // Serialize message field [pose_ids]
    bufferOffset = _arraySerializer.uint32(obj.pose_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VLCRequests
    let len;
    let data = new VLCRequests(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_robot_id]
    data.source_robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [destination_robot_id]
    data.destination_robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pose_ids]
    data.pose_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.pose_ids.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/VLCRequests';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '772d3c253526173250ad7a3a53433c14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 source_robot_id        # Robot that sends this request
    uint32 destination_robot_id   # Robot that receives this request
    uint32[] pose_ids             # Pose IDs of requested VLC frames of the destination robot 
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
    const resolved = new VLCRequests(null);
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

    if (msg.pose_ids !== undefined) {
      resolved.pose_ids = msg.pose_ids;
    }
    else {
      resolved.pose_ids = []
    }

    return resolved;
    }
};

module.exports = VLCRequests;
