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

let VLCFrameMsg = require('../msg/VLCFrameMsg.js');

//-----------------------------------------------------------

class VLCFrameQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.pose_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
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
    // Serializes a message object of type VLCFrameQueryRequest
    // Serialize message field [robot_id]
    bufferOffset = _serializer.uint32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [pose_ids]
    bufferOffset = _arraySerializer.uint32(obj.pose_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VLCFrameQueryRequest
    let len;
    let data = new VLCFrameQueryRequest(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pose_ids]
    data.pose_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pose_ids.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_graph_tools/VLCFrameQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53b8b74cf9d6c3e714f479044e27576c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 robot_id
    uint32[] pose_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VLCFrameQueryRequest(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
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

class VLCFrameQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frames = null;
    }
    else {
      if (initObj.hasOwnProperty('frames')) {
        this.frames = initObj.frames
      }
      else {
        this.frames = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VLCFrameQueryResponse
    // Serialize message field [frames]
    // Serialize the length for message field [frames]
    bufferOffset = _serializer.uint32(obj.frames.length, buffer, bufferOffset);
    obj.frames.forEach((val) => {
      bufferOffset = VLCFrameMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VLCFrameQueryResponse
    let len;
    let data = new VLCFrameQueryResponse(null);
    // Deserialize message field [frames]
    // Deserialize array length for message field [frames]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frames = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frames[i] = VLCFrameMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.frames.forEach((val) => {
      length += VLCFrameMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_graph_tools/VLCFrameQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b3cb914841f95b129588855729951ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pose_graph_tools/VLCFrameMsg[] frames
    
    ================================================================================
    MSG: pose_graph_tools/VLCFrameMsg
    uint32 robot_id
    uint32 pose_id
    uint32 submap_id
    sensor_msgs/Image descriptors_mat          # Descriptor of all keypoints stored as a matrix.
    sensor_msgs/PointCloud2 versors            # Bearing vector of each keypoint expressed as a 3D vector.
    float32[] depths                           # Depth of each keypoint. The 3D keypoint v can be recovered from the depth d and bearing u by v = d * u / u[2]
    geometry_msgs/Pose T_submap_pose
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
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
    const resolved = new VLCFrameQueryResponse(null);
    if (msg.frames !== undefined) {
      resolved.frames = new Array(msg.frames.length);
      for (let i = 0; i < resolved.frames.length; ++i) {
        resolved.frames[i] = VLCFrameMsg.Resolve(msg.frames[i]);
      }
    }
    else {
      resolved.frames = []
    }

    return resolved;
    }
};

module.exports = {
  Request: VLCFrameQueryRequest,
  Response: VLCFrameQueryResponse,
  md5sum() { return 'a1775d31ad21123116ba0a043abbc040'; },
  datatype() { return 'pose_graph_tools/VLCFrameQuery'; }
};
