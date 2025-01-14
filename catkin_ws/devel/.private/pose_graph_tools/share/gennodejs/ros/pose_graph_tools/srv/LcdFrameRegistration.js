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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LcdFrameRegistrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.query_robot = null;
      this.match_robot = null;
      this.query = null;
      this.match = null;
    }
    else {
      if (initObj.hasOwnProperty('query_robot')) {
        this.query_robot = initObj.query_robot
      }
      else {
        this.query_robot = 0;
      }
      if (initObj.hasOwnProperty('match_robot')) {
        this.match_robot = initObj.match_robot
      }
      else {
        this.match_robot = 0;
      }
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = 0;
      }
      if (initObj.hasOwnProperty('match')) {
        this.match = initObj.match
      }
      else {
        this.match = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LcdFrameRegistrationRequest
    // Serialize message field [query_robot]
    bufferOffset = _serializer.uint64(obj.query_robot, buffer, bufferOffset);
    // Serialize message field [match_robot]
    bufferOffset = _serializer.uint64(obj.match_robot, buffer, bufferOffset);
    // Serialize message field [query]
    bufferOffset = _serializer.uint64(obj.query, buffer, bufferOffset);
    // Serialize message field [match]
    bufferOffset = _serializer.uint64(obj.match, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LcdFrameRegistrationRequest
    let len;
    let data = new LcdFrameRegistrationRequest(null);
    // Deserialize message field [query_robot]
    data.query_robot = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [match_robot]
    data.match_robot = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [query]
    data.query = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [match]
    data.match = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_graph_tools/LcdFrameRegistrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c70b0c2140c92a1e48918c9a269225fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 query_robot
    uint64 match_robot
    uint64 query
    uint64 match
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LcdFrameRegistrationRequest(null);
    if (msg.query_robot !== undefined) {
      resolved.query_robot = msg.query_robot;
    }
    else {
      resolved.query_robot = 0
    }

    if (msg.match_robot !== undefined) {
      resolved.match_robot = msg.match_robot;
    }
    else {
      resolved.match_robot = 0
    }

    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = 0
    }

    if (msg.match !== undefined) {
      resolved.match = msg.match;
    }
    else {
      resolved.match = 0
    }

    return resolved;
    }
};

class LcdFrameRegistrationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid = null;
      this.match_T_query = null;
    }
    else {
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('match_T_query')) {
        this.match_T_query = initObj.match_T_query
      }
      else {
        this.match_T_query = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LcdFrameRegistrationResponse
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [match_T_query]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.match_T_query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LcdFrameRegistrationResponse
    let len;
    let data = new LcdFrameRegistrationResponse(null);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [match_T_query]
    data.match_T_query = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_graph_tools/LcdFrameRegistrationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c544cb47163024a80f51b3b120d56c3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool valid
    geometry_msgs/Pose match_T_query
    
    
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
    const resolved = new LcdFrameRegistrationResponse(null);
    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.match_T_query !== undefined) {
      resolved.match_T_query = geometry_msgs.msg.Pose.Resolve(msg.match_T_query)
    }
    else {
      resolved.match_T_query = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: LcdFrameRegistrationRequest,
  Response: LcdFrameRegistrationResponse,
  md5sum() { return '35f0b877789b9625f9ce0e88684ba2e8'; },
  datatype() { return 'pose_graph_tools/LcdFrameRegistration'; }
};
