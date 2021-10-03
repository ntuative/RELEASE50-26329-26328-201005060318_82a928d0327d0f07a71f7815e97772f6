package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1387:String;
      
      private var var_1033:String;
      
      private var var_2255:Boolean;
      
      private var var_1567:int;
      
      private var var_1731:int;
      
      private var var_2256:Boolean;
      
      private var var_1525:String = "";
      
      private var var_2073:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1315:int;
      
      private var var_2072:Boolean;
      
      private var var_2071:int = -1;
      
      private var var_1856:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1731 = param1;
         var_1033 = param2;
         _objId = param3;
         var_1315 = param4;
         _category = param5;
         var_1387 = param6;
         var_2255 = param7;
         var_2073 = param8;
         var_2072 = param9;
         var_2256 = param10;
         var_1856 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1525;
      }
      
      public function get extra() : int
      {
         return var_1567;
      }
      
      public function get classId() : int
      {
         return var_1315;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2256;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2255;
      }
      
      public function get stripId() : int
      {
         return var_1731;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function get songId() : int
      {
         return var_2071;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1525 = param1;
         var_1567 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1033;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1856;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2072;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2073;
      }
   }
}
