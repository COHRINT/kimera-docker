// Auto-generated. Do not edit!

// (in-package pose_graph_tools.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let PoseGraph = require('../msg/PoseGraph.js');

//-----------------------------------------------------------

class PoseGraphQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseGraphQueryRequest
    // Serialize message field [robot_id]
    bufferOffset = _serializer.uint16(obj.robot_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseGraphQueryRequest
    let len;
    let data = new PoseGraphQueryRequest(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_graph_tools/PoseGraphQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '706491581a3d70d6605714be7ea7f612';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 robot_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseGraphQueryRequest(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    return resolved;
    }
};

class PoseGraphQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_graph = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_graph')) {
        this.pose_graph = initObj.pose_graph
      }
      else {
        this.pose_graph = new PoseGraph();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseGraphQueryResponse
    // Serialize message field [pose_graph]
    bufferOffset = PoseGraph.serialize(obj.pose_graph, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseGraphQueryResponse
    let len;
    let data = new PoseGraphQueryResponse(null);
    // Deserialize message field [pose_graph]
    data.pose_graph = PoseGraph.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PoseGraph.getMessageSize(object.pose_graph);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_graph_tools/PoseGraphQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c232646d10e49131de5460199de2ac55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pose_graph_tools/PoseGraph pose_graph
    
    ================================================================================
    MSG: pose_graph_tools/PoseGraph
    Header header
    
    # Nodes and edges
    PoseGraphNode[] nodes
    PoseGraphEdge[] edges
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
    MSG: pose_graph_tools/PoseGraphNode
    Header header
    
    int32 robot_id
    
    uint64 key
    
    geometry_msgs/Pose pose
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseGraphQueryResponse(null);
    if (msg.pose_graph !== undefined) {
      resolved.pose_graph = PoseGraph.Resolve(msg.pose_graph)
    }
    else {
      resolved.pose_graph = new PoseGraph()
    }

    return resolved;
    }
};

module.exports = {
  Request: PoseGraphQueryRequest,
  Response: PoseGraphQueryResponse,
  md5sum() { return '40dc150d34e522c5c9dc2d4c5d84a9d7'; },
  datatype() { return 'pose_graph_tools/PoseGraphQuery'; }
};
