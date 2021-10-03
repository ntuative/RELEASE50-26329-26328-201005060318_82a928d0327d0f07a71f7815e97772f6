package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2254:Number = 1;
      
      private var var_202:Number = 1;
      
      private var var_1660:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1660 = param1;
         var_202 = param2;
         var_2254 = param3;
      }
      
      public function get scale() : Number
      {
         return var_202;
      }
      
      public function get heightScale() : Number
      {
         return var_2254;
      }
   }
}
