package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_149:int = 1;
      
      public static const const_1288:int = 3;
      
      public static const const_387:int = 2;
       
      
      private var var_2011:int;
      
      private var var_2014:int;
      
      private var var_2017:int;
      
      private var var_1898:int;
      
      private var var_33:int;
      
      private var var_418:int;
      
      private var var_1265:int;
      
      private var var_1925:int;
      
      private var var_985:int;
      
      private var _roomResources:String;
      
      private var var_1807:int;
      
      private var var_2009:int;
      
      private var var_2010:String;
      
      private var var_2013:String;
      
      private var var_2015:int = 0;
      
      private var var_1153:String;
      
      private var _message:String;
      
      private var var_1680:int;
      
      private var var_2016:String;
      
      private var var_1311:int;
      
      private var var_752:String;
      
      private var var_2012:String;
      
      private var var_1406:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_985 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2015 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2009;
      }
      
      public function set roomName(param1:String) : void
      {
         var_752 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_752;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1898 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2014;
      }
      
      public function get priority() : int
      {
         return var_2011 + var_2015;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1925 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2013;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1406) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1311;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2009 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1265;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2010 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1807;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1898;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2012 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1153 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1925;
      }
      
      public function set priority(param1:int) : void
      {
         var_2011 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2014 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2010;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2017 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2013 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1680 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1153;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1265 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2017;
      }
      
      public function set flatId(param1:int) : void
      {
         var_418 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1311 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1406 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1680;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2016 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1406;
      }
      
      public function get reportedUserId() : int
      {
         return var_985;
      }
      
      public function get flatId() : int
      {
         return var_418;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2012;
      }
      
      public function get reporterUserName() : String
      {
         return var_2016;
      }
   }
}
