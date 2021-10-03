package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_145:String = "RWPIUE_PET_INFO";
       
      
      private var var_1674:int;
      
      private var var_1725:int;
      
      private var var_1718:int;
      
      private var _nutrition:int;
      
      private var var_1720:int;
      
      private var var_1723:int;
      
      private var _energy:int;
      
      private var var_1053:int;
      
      private var var_1719:int;
      
      private var var_1717:int;
      
      private var var_1724:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_1726:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1722:Boolean;
      
      private var _name:String;
      
      private var var_510:int;
      
      private var var_1721:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_145,param10,param11);
         var_1053 = param1;
         var_1726 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_1722 = param6;
         var_1721 = param7;
         _ownerName = param8;
         var_1717 = param9;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1722;
      }
      
      public function get level() : int
      {
         return var_1674;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1723 = param1;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set level(param1:int) : void
      {
         var_1674 = param1;
      }
      
      public function get petRace() : int
      {
         return var_1726;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_510 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1720;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1718;
      }
      
      public function get ownerId() : int
      {
         return var_1721;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1720 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_1717;
      }
      
      public function get energyMax() : int
      {
         return var_1719;
      }
      
      public function get levelMax() : int
      {
         return var_1723;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_510;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         _canOwnerBeKicked = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1718 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1725;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1719 = param1;
      }
      
      public function get petType() : int
      {
         return var_1053;
      }
      
      public function set age(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function get age() : int
      {
         return var_1724;
      }
   }
}
