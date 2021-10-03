package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_784:LegacyWallGeometry = null;
      
      private var var_557:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_558:TileHeightMap = null;
      
      private var var_1660:String = null;
      
      private var _roomId:int = 0;
      
      private var var_559:SelectedRoomObjectData = null;
      
      private var var_785:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_784 = new LegacyWallGeometry();
         var_785 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_557 != null)
         {
            var_557.dispose();
         }
         var_557 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_558 != null)
         {
            var_558.dispose();
         }
         var_558 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1660 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_784;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_559;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_785;
      }
      
      public function dispose() : void
      {
         if(var_558 != null)
         {
            var_558.dispose();
            var_558 = null;
         }
         if(var_784 != null)
         {
            var_784.dispose();
            var_784 = null;
         }
         if(var_785 != null)
         {
            var_785.dispose();
            var_785 = null;
         }
         if(var_557 != null)
         {
            var_557.dispose();
            var_557 = null;
         }
         if(var_559 != null)
         {
            var_559.dispose();
            var_559 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_558;
      }
      
      public function get worldType() : String
      {
         return var_1660;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_559 != null)
         {
            var_559.dispose();
         }
         var_559 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_557;
      }
   }
}
