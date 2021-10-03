package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1122:int = 80;
       
      
      private var var_535:Map;
      
      private var var_752:String = "";
      
      private var var_1352:Array;
      
      public function UserRegistry()
      {
         var_535 = new Map();
         var_1352 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_535.getValue(var_1352.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_752;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_535.getValue(param1) != null)
         {
            var_535.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_752);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_752 == "")
         {
            var_1352.push(param1);
         }
         var_535.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_535;
      }
      
      public function unregisterRoom() : void
      {
         var_752 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_535.length > const_1122)
         {
            _loc1_ = var_535.getKey(0);
            var_535.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_752 = param1;
         if(var_752 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
