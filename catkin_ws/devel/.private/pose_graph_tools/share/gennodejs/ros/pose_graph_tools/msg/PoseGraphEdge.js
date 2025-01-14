// Auto-generated. Do not edit!

// (in-package pose_graph_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PoseGraphEdge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.key_from = null;
      this.key_to = null;
      this.robot_from = null;
      this.robot_to = null;
      this.type = null;
      this.pose = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('key_from')) {
        this.key_from = initObj.key_from
      }
      else {
        this.key_from = 0;
      }
      if (initObj.hasOwnProperty('key_to')) {
        this.key_to = initObj.key_to
      }
      else {
        this.key_to = 0;
      }
      if (initObj.hasOwnProperty('robot_from')) {
        this.robot_from = initObj.robot_from
      }
      else {
        this.robot_from = 0;
      }
      if (initObj.hasOwnProperty('robot_to')) {
        this.robot_to = initObj.robot_to
      }
      else {
        this.robot_to = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseGraphEdge
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [key_from]
    bufferOffset = _serializer.uint64(obj.key_from, buffer, bufferOffset);
    // Serialize message field [key_to]
    bufferOffset = _serializer.uint64(obj.key_to, buffer, bufferOffset);
    // Serialize message field [robot_from]
    bufferOffset = _serializer.int32(obj.robot_from, buffer, bufferOffset);
    // Serialize message field [robot_to]
    bufferOffset = _serializer.int32(obj.robot_to, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseGraphEdge
    let len;
    let data = new PoseGraphEdge(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [key_from]
    data.key_from = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [key_to]
    data.key_to = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [robot_from]
    data.robot_from = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_to]
    data.robot_to = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 372;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_tools/PoseGraphEdge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c891cedd80b91b7f1fa4a46b7d77a19f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PoseGraphEdge(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.key_from !== undefined) {
      resolved.key_from = msg.key_from;
    }
    else {
      resolved.key_from = 0
    }

    if (msg.key_to !== undefined) {
      resolved.key_to = msg.key_to;
    }
    else {
      resolved.key_to = 0
    }

    if (msg.robot_from !== undefined) {
      resolved.robot_from = msg.robot_from;
    }
    else {
      resolved.robot_from = 0
    }

    if (msg.robot_to !== undefined) {
      resolved.robot_to = msg.robot_to;
    }
    else {
      resolved.robot_to = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(36).fill(0)
    }

    return resolved;
    }
};

// Constants for message
PoseGraphEdge.Constants = {
  ODOM: 0,
  LOOPCLOSE: 1,
  LANDMARK: 2,
  REJECTED_LOOPCLOSE: 3,
  MESH: 4,
  POSE_MESH: 5,
  MESH_POSE: 6,
}

module.exports = PoseGraphEdge;
