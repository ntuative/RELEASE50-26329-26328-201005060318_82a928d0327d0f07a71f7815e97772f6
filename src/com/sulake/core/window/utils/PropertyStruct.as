package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_538:String = "Rectangle";
      
      public static const const_61:String = "Boolean";
      
      public static const const_604:String = "Number";
      
      public static const const_70:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_554:String = "Point";
      
      public static const const_859:String = "Array";
      
      public static const const_1008:String = "uint";
      
      public static const const_485:String = "hex";
      
      public static const const_896:String = "Map";
       
      
      private var var_612:String;
      
      private var var_175:Object;
      
      private var var_2341:Boolean;
      
      private var _type:String;
      
      private var var_2101:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_612 = param1;
         var_175 = param2;
         _type = param3;
         var_2101 = param4;
         var_2341 = param3 == const_896 || param3 == const_859 || param3 == const_554 || param3 == const_538;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_485:
               return "0x" + uint(var_175).toString(16);
            case const_61:
               return Boolean(var_175) == true ? "true" : "false";
            case const_554:
               return "Point(" + Point(var_175).x + ", " + Point(var_175).y + ")";
            case const_538:
               return "Rectangle(" + Rectangle(var_175).x + ", " + Rectangle(var_175).y + ", " + Rectangle(var_175).width + ", " + Rectangle(var_175).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_896:
               _loc3_ = var_175 as Map;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_859:
               _loc4_ = var_175 as Array;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_554:
               _loc5_ = var_175 as Point;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_70 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_70 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_538:
               _loc6_ = var_175 as Rectangle;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_70 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_70 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_70 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_70 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_485:
               _loc1_ = "<var key=\"" + var_612 + "\" value=\"" + "0x" + uint(var_175).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_612 + "\" value=\"" + var_175 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_175;
      }
      
      public function get valid() : Boolean
      {
         return var_2101;
      }
      
      public function get key() : String
      {
         return var_612;
      }
   }
}
