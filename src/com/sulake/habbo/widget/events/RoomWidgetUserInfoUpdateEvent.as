package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_219:String = "RWUIUE_PEER";
      
      public static const const_223:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1191:String = "BOT";
      
      public static const const_867:int = 2;
      
      public static const const_1201:int = 0;
      
      public static const const_968:int = 3;
       
      
      private var var_312:String = "";
      
      private var var_1348:String = "";
      
      private var var_2233:Boolean = false;
      
      private var var_1741:int = 0;
      
      private var var_1972:int = 0;
      
      private var var_2231:Boolean = false;
      
      private var var_1349:String = "";
      
      private var var_2229:Boolean = false;
      
      private var var_874:int = 0;
      
      private var var_2232:Boolean = true;
      
      private var var_1010:int = 0;
      
      private var var_2237:Boolean = false;
      
      private var var_1379:Boolean = false;
      
      private var var_2236:Boolean = false;
      
      private var var_1971:int = 0;
      
      private var var_2234:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_262:Array;
      
      private var var_1377:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1742:int = 0;
      
      private var var_2230:Boolean = false;
      
      private var var_2235:int = 0;
      
      private var var_1970:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_262 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1972;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1972 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2233;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2232;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2232 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2229 = param1;
      }
      
      public function get motto() : String
      {
         return var_1348;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2237 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1379;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1348 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2230;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1970;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1379 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2234;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1971 = param1;
      }
      
      public function get badges() : Array
      {
         return var_262;
      }
      
      public function get amIController() : Boolean
      {
         return var_2231;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2231 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2230 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2235 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1970 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1349 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2229;
      }
      
      public function set figure(param1:String) : void
      {
         var_312 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1971;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1377;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2237;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_874 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2235;
      }
      
      public function get realName() : String
      {
         return var_1349;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function set webID(param1:int) : void
      {
         var_1742 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_262 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2236 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2234 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_874;
      }
      
      public function get webID() : int
      {
         return var_1742;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1010 = param1;
      }
      
      public function get xp() : int
      {
         return var_1741;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2233 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1010;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2236;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1377 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1741 = param1;
      }
   }
}
