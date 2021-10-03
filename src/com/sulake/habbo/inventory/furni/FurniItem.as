package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1731:int;
      
      private var var_2073:Boolean;
      
      private var var_2071:int;
      
      private var var_1387:String;
      
      private var var_2070:Boolean = false;
      
      private var var_1856:int;
      
      private var var_457:int;
      
      private var var_1033:String;
      
      private var var_1525:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1315:int;
      
      private var var_2072:Boolean;
      
      private var var_2069:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1731 = param1;
         var_1033 = param2;
         _objId = param3;
         var_1315 = param4;
         var_1387 = param5;
         var_2073 = param6;
         var_2072 = param7;
         var_1856 = param8;
         var_1525 = param9;
         var_2071 = param10;
         var_457 = -1;
      }
      
      public function get songId() : int
      {
         return var_2071;
      }
      
      public function get iconCallbackId() : int
      {
         return var_457;
      }
      
      public function get expiryTime() : int
      {
         return var_1856;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2069 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2070 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_457 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2072;
      }
      
      public function get slotId() : String
      {
         return var_1525;
      }
      
      public function get classId() : int
      {
         return var_1315;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2073;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1731;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2070;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2069;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1033;
      }
   }
}
