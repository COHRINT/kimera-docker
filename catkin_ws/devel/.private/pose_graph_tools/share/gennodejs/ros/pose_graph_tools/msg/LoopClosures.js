// Auto-generated. Do not edit!

// (in-package pose_graph_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseGraphEdge = require('./PoseGraphEdge.js');

//-----------------------------------------------------------

class LoopClosures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publishing_robot_id = null;
      this.destination_robot_id = null;
      this.edges = null;
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
      if (initObj.hasOwnProperty('edges')) {
        this.edges = initObj.edges
      }
      else {
        this.edges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopClosures
    // Serialize message field [publishing_robot_id]
    bufferOffset = _serializer.uint16(obj.publishing_robot_id, buffer, bufferOffset);
    // Serialize message field [destination_robot_id]
    bufferOffset = _serializer.uint16(obj.destination_robot_id, buffer, bufferOffset);
    // Serialize message field [edges]
    // Serialize the length for message field [edges]
    bufferOffset = _serializer.uint32(obj.edges.length, buffer, bufferOffset);
    obj.edges.forEach((val) => {
      bufferOffset = PoseGraphEdge.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopClosures
    let len;
    let data = new LoopClosures(null);
    // Deserialize message field [publishing_robot_id]
    data.publishing_robot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [destination_robot_id]
    data.destination_robot_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [edges]
    // Deserialize array length for message field [edges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.edges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.edges[i] = PoseGraphEdge.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.edges.forEach((val) => {
      length += PoseGraphEdge.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/LoopClosures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f4b270327fa0c480a57687e4837bab6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 publishing_robot_id
    uint16 destination_robot_id
    pose_graph_tools/PoseGraphEdge[] edges
    ================================================================================
    MSG: pose_graph_tools/PoseGraphEdge
    Header header
    
    uint64 key_from
    uint64 key_to
    
    int32 robot_from
    int32 robot_to
    
    int32 type
    
    # Type enums
    int32 ODOM      = 0
    int32 LOOPCLOSE = 1
    int32 LANDMARK  = 2
    int32 REJECTED_LOOPCLOSE = 3
    int32 MESH = 4
    int32 POSE_MESH = 5
    int32 MESH_POSE = 6
    
    # Transforms in ede
    geometry_msgs/Pose pose
    float64[36] covariance
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopClosures(null);
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

    if (msg.edges !== undefined) {
      resolved.edges = new Array(msg.edges.length);
      for (let i = 0; i < resolved.edges.length; ++i) {
        resolved.edges[i] = PoseGraphEdge.Resolve(msg.edges[i]);
      }
    }
    else {
      resolved.edges = []
    }

    return resolved;
    }
};

module.exports = LoopClosures;
