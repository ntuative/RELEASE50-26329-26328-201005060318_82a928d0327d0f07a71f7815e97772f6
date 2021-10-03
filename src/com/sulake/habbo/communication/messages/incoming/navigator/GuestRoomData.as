package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1777:int;
      
      private var var_2104:String;
      
      private var var_2108:int;
      
      private var var_2106:int;
      
      private var var_763:Boolean;
      
      private var var_1648:Boolean;
      
      private var var_418:int;
      
      private var var_1179:String;
      
      private var var_1652:int;
      
      private var var_1311:int;
      
      private var _ownerName:String;
      
      private var var_752:String;
      
      private var var_2107:int;
      
      private var var_2105:RoomThumbnailData;
      
      private var var_1884:Boolean;
      
      private var var_643:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_643 = new Array();
         super();
         var_418 = param1.readInteger();
         var_763 = param1.readBoolean();
         var_752 = param1.readString();
         _ownerName = param1.readString();
         var_1652 = param1.readInteger();
         var_1777 = param1.readInteger();
         var_2107 = param1.readInteger();
         var_1179 = param1.readString();
         var_2108 = param1.readInteger();
         var_1884 = param1.readBoolean();
         var_2106 = param1.readInteger();
         var_1311 = param1.readInteger();
         var_2104 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_643.push(_loc4_);
            _loc3_++;
         }
         var_2105 = new RoomThumbnailData(param1);
         var_1648 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2107;
      }
      
      public function get roomName() : String
      {
         return var_752;
      }
      
      public function get userCount() : int
      {
         return var_1777;
      }
      
      public function get score() : int
      {
         return var_2106;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2104;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1884;
      }
      
      public function get tags() : Array
      {
         return var_643;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1648;
      }
      
      public function get event() : Boolean
      {
         return var_763;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_643 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1311;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2108;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2105;
      }
      
      public function get doorMode() : int
      {
         return var_1652;
      }
      
      public function get flatId() : int
      {
         return var_418;
      }
      
      public function get description() : String
      {
         return var_1179;
      }
   }
}
