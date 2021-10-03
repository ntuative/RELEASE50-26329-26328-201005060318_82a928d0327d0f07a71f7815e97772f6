package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      private var var_228:int = 0;
      
      private var var_2084:int = 0;
      
      private var var_2085:Number = 0;
      
      private var var_2081:Number = 0;
      
      private var var_2083:Number = 0;
      
      private var var_2086:Number = 0;
      
      private var var_2082:Boolean = false;
      
      private var var_83:Number = 0;
      
      private var _id:int = 0;
      
      private var var_203:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_203 = [];
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_82 = param4;
         var_2086 = param5;
         var_228 = param6;
         var_2084 = param7;
         var_2085 = param8;
         var_2081 = param9;
         var_2083 = param10;
         var_2082 = param11;
         var_203 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function get localZ() : Number
      {
         return var_2086;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2082;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2084;
      }
      
      public function get targetX() : Number
      {
         return var_2085;
      }
      
      public function get targetY() : Number
      {
         return var_2081;
      }
      
      public function get targetZ() : Number
      {
         return var_2083;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get actions() : Array
      {
         return var_203.slice();
      }
   }
}
