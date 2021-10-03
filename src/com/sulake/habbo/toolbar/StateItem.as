package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1185:Boolean;
      
      private var var_2066:String;
      
      private var _frames:XMLList;
      
      private var var_976:String = "-1";
      
      private var var_644:String;
      
      private var var_184:int = 120;
      
      private var var_1297:String = "-1";
      
      private var var_1298:String;
      
      private var var_2067:Boolean;
      
      private var var_1543:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1185 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_2067 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_184 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1298 = param1.@namebase;
         }
         else
         {
            var_1298 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_976 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1297 = param1.@nextState;
         }
         else
         {
            var_1297 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1543 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_2066 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_644 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_976 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_2067;
      }
      
      public function get defaultState() : String
      {
         return var_1543;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1543 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_2066;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_184;
      }
      
      public function get loop() : Boolean
      {
         return var_1185;
      }
      
      public function get nextState() : String
      {
         return var_1297;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_644;
      }
      
      public function get stateOver() : String
      {
         return var_976;
      }
      
      public function get nameBase() : String
      {
         return var_1298;
      }
   }
}
