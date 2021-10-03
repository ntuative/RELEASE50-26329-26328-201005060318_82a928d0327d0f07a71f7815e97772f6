package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1481:int;
      
      private var var_1480:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get method_1() : int
      {
         return var_1481;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_1481 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1481 = this.var_1481;
         _loc1_.var_1480 = this.var_1480;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1480 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1480;
      }
   }
}
