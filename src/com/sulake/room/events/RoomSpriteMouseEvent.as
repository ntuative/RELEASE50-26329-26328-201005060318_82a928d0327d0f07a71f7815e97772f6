package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2051:Boolean = false;
      
      private var var_2049:Boolean = false;
      
      private var var_2176:String = "";
      
      private var _type:String = "";
      
      private var var_2048:Boolean = false;
      
      private var var_1928:Number = 0;
      
      private var var_2261:Number = 0;
      
      private var var_2259:Number = 0;
      
      private var var_2260:String = "";
      
      private var var_1930:Number = 0;
      
      private var var_2050:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2260 = param2;
         var_2176 = param3;
         var_2261 = param4;
         var_2259 = param5;
         var_1928 = param6;
         var_1930 = param7;
         var_2050 = param8;
         var_2049 = param9;
         var_2048 = param10;
         var_2051 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2050;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2051;
      }
      
      public function get localX() : Number
      {
         return var_1928;
      }
      
      public function get localY() : Number
      {
         return var_1930;
      }
      
      public function get canvasId() : String
      {
         return var_2260;
      }
      
      public function get altKey() : Boolean
      {
         return var_2049;
      }
      
      public function get spriteTag() : String
      {
         return var_2176;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2261;
      }
      
      public function get screenY() : Number
      {
         return var_2259;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2048;
      }
   }
}
