package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2071:int;
      
      private var var_2161:int = 0;
      
      private var var_2163:String;
      
      private var var_2164:int;
      
      private var var_2162:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2071 = param1;
         var_2164 = param2;
         var_2162 = param3;
         var_2163 = param4;
      }
      
      public function get length() : int
      {
         return var_2164;
      }
      
      public function get name() : String
      {
         return var_2162;
      }
      
      public function get creator() : String
      {
         return var_2163;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2161;
      }
      
      public function get id() : int
      {
         return var_2071;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2161 = param1;
      }
   }
}
