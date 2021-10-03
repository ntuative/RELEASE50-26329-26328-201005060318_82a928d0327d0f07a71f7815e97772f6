package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1441:int = 10;
       
      
      private var var_1596:NavigatorSettingsMessageParser;
      
      private var var_1356:int;
      
      private var var_2205:int;
      
      private var var_2204:Boolean;
      
      private var var_1093:Array;
      
      private var var_930:Dictionary;
      
      private var var_1094:Array;
      
      private var var_2350:int;
      
      private var var_2207:int;
      
      private var var_2202:int;
      
      private var var_2208:int;
      
      private var var_628:PublicRoomShortData;
      
      private var var_449:RoomEventData;
      
      private var var_143:MsgWithRequestId;
      
      private var var_2206:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2203:Boolean;
      
      private var var_211:GuestRoomData;
      
      private var var_756:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1093 = new Array();
         var_1094 = new Array();
         var_930 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2205;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2203;
      }
      
      public function startLoading() : void
      {
         this.var_756 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2203 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_449 != null)
         {
            var_449.dispose();
         }
         var_449 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_143 != null && var_143 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_143 != null && var_143 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_143 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_211;
      }
      
      public function get allCategories() : Array
      {
         return var_1093;
      }
      
      public function onRoomExit() : void
      {
         if(var_449 != null)
         {
            var_449.dispose();
            var_449 = null;
         }
         if(var_628 != null)
         {
            var_628.dispose();
            var_628 = null;
         }
         if(var_211 != null)
         {
            var_211.dispose();
            var_211 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_756 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1596;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_756 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_628 = null;
         var_211 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_628 = param1.publicSpace;
            var_449 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2350 = param1.limit;
         this.var_1356 = param1.favouriteRoomIds.length;
         this.var_930 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_930[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_143 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_628;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2204;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_756 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2202 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_211 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_756;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1094;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1093 = param1;
         var_1094 = new Array();
         for each(_loc2_ in var_1093)
         {
            if(_loc2_.visible)
            {
               var_1094.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2207;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2208;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1596 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_143 == null)
         {
            return;
         }
         var_143.dispose();
         var_143 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_449;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_930[param1] = !!param2 ? "yes" : null;
         var_1356 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_143 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2202;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_143 != null && var_143 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2204 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2207 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2206 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_211 != null)
         {
            var_211.dispose();
         }
         var_211 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_211 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1596.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1356 >= var_2350;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2208 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2206;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_211 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2205 = param1;
      }
   }
}
