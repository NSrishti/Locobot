# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from interbotix_perception_modules/ClusterInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ClusterInfo(genpy.Message):
  _md5sum = "9627d2d019ccc4ed2077673b4b0f3b40"
  _type = "interbotix_perception_modules/ClusterInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message is used specifically in the interbotix_perception_modules package
#
# Message that holds information about each cluster

string frame_id                     # parent frame of the cluster (usually 'camera_depth_optical_frame' or similar)
geometry_msgs/Point position        # x, y, z position of the cluster
float32 yaw                         # yaw [rad] of the cluster; x-axis of the cluster should align
                                    # with the major-axis of a best-fit ellipse (currently not supported)
std_msgs/ColorRGBA color            # average RGB values (0 - 255) for the whole cluster
geometry_msgs/Point min_z_point     # point with the min 'z' value of the cluster
int32 num_points                    # number of points in the cluster

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
"""
  __slots__ = ['frame_id','position','yaw','color','min_z_point','num_points']
  _slot_types = ['string','geometry_msgs/Point','float32','std_msgs/ColorRGBA','geometry_msgs/Point','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frame_id,position,yaw,color,min_z_point,num_points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ClusterInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.frame_id is None:
        self.frame_id = ''
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.yaw is None:
        self.yaw = 0.
      if self.color is None:
        self.color = std_msgs.msg.ColorRGBA()
      if self.min_z_point is None:
        self.min_z_point = geometry_msgs.msg.Point()
      if self.num_points is None:
        self.num_points = 0
    else:
      self.frame_id = ''
      self.position = geometry_msgs.msg.Point()
      self.yaw = 0.
      self.color = std_msgs.msg.ColorRGBA()
      self.min_z_point = geometry_msgs.msg.Point()
      self.num_points = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d5f3di().pack(_x.position.x, _x.position.y, _x.position.z, _x.yaw, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.min_z_point.x, _x.min_z_point.y, _x.min_z_point.z, _x.num_points))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.color is None:
        self.color = std_msgs.msg.ColorRGBA()
      if self.min_z_point is None:
        self.min_z_point = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.position.x, _x.position.y, _x.position.z, _x.yaw, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.min_z_point.x, _x.min_z_point.y, _x.min_z_point.z, _x.num_points,) = _get_struct_3d5f3di().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d5f3di().pack(_x.position.x, _x.position.y, _x.position.z, _x.yaw, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.min_z_point.x, _x.min_z_point.y, _x.min_z_point.z, _x.num_points))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.color is None:
        self.color = std_msgs.msg.ColorRGBA()
      if self.min_z_point is None:
        self.min_z_point = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.position.x, _x.position.y, _x.position.z, _x.yaw, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.min_z_point.x, _x.min_z_point.y, _x.min_z_point.z, _x.num_points,) = _get_struct_3d5f3di().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d5f3di = None
def _get_struct_3d5f3di():
    global _struct_3d5f3di
    if _struct_3d5f3di is None:
        _struct_3d5f3di = struct.Struct("<3d5f3di")
    return _struct_3d5f3di