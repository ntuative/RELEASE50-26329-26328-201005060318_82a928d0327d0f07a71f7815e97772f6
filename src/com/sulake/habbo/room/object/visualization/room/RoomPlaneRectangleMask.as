package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2144:Number = 0;
      
      private var var_1780:Number = 0;
      
      private var var_1779:Number = 0;
      
      private var var_2143:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1780 = param1;
         var_1779 = param2;
         var_2144 = param3;
         var_2143 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1780;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2144;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1779;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2143;
      }
   }
}
