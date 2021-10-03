package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1090:int = 0;
      
      private var var_82:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_190:Boolean = false;
      
      private var var_228:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_83:Number = 0;
      
      private var var_1091:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_190)
         {
            var_82 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1090;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_190)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_190)
         {
            var_228 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_190)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_190 = true;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_190)
         {
            var_1090 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_190)
         {
            var_1091 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_190)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_190)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1091;
      }
   }
}
