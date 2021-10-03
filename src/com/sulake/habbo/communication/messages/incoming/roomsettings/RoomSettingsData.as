package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_455:int = 0;
      
      public static const const_130:int = 2;
      
      public static const const_180:int = 1;
      
      public static const const_699:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1650:Boolean;
      
      private var var_1651:Boolean;
      
      private var var_2223:int;
      
      private var var_1653:Array;
      
      private var var_2222:int;
      
      private var var_1648:Boolean;
      
      private var var_1179:String;
      
      private var var_1649:int;
      
      private var var_1652:int;
      
      private var var_1311:int;
      
      private var _roomId:int;
      
      private var var_643:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1649;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1649 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_643;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1648;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2222 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1653 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_643 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1650;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1651;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2223;
      }
      
      public function get categoryId() : int
      {
         return var_1311;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1648 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2222;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1653;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1652 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1650 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1651 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2223 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1652;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1311 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1179 = param1;
      }
      
      public function get description() : String
      {
         return var_1179;
      }
   }
}
