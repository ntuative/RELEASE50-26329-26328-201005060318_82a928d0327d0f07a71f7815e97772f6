package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_2153:int;
      
      private var var_1159:int;
      
      private var _type:int;
      
      private var var_2152:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_2152;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_2153 = param1;
      }
      
      public function get duration() : int
      {
         return var_1159;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_2152 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1159 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_2153;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
