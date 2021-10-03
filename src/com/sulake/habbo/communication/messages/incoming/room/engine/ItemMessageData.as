package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_82:Number = 0;
      
      private var _data:String = "";
      
      private var var_1567:int = 0;
      
      private var var_33:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1927:Boolean = false;
      
      private var var_2385:String = "";
      
      private var _id:int = 0;
      
      private var var_190:Boolean = false;
      
      private var var_228:String = "";
      
      private var var_1931:int = 0;
      
      private var var_1929:int = 0;
      
      private var var_1928:int = 0;
      
      private var var_1930:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1927 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_190)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1927;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_190)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_228;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_190)
         {
            var_1928 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_190)
         {
            var_1931 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_190)
         {
            var_1929 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_190)
         {
            var_228 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_190)
         {
            var_1930 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_190)
         {
            var_33 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1928;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_190)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1931;
      }
      
      public function get wallY() : Number
      {
         return var_1929;
      }
      
      public function get localY() : Number
      {
         return var_1930;
      }
      
      public function setReadOnly() : void
      {
         var_190 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_190)
         {
            var_82 = param1;
         }
      }
   }
}
