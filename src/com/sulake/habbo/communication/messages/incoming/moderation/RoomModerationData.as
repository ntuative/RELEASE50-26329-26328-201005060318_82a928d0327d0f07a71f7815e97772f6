package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_116:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1777:int;
      
      private var var_418:int;
      
      private var var_763:RoomData;
      
      private var var_1721:int;
      
      private var _ownerName:String;
      
      private var var_2149:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_418 = param1.readInteger();
         var_1777 = param1.readInteger();
         var_2149 = param1.readBoolean();
         var_1721 = param1.readInteger();
         _ownerName = param1.readString();
         var_116 = new RoomData(param1);
         var_763 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1777;
      }
      
      public function get event() : RoomData
      {
         return var_763;
      }
      
      public function get room() : RoomData
      {
         return var_116;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_116 != null)
         {
            var_116.dispose();
            var_116 = null;
         }
         if(var_763 != null)
         {
            var_763.dispose();
            var_763 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_418;
      }
      
      public function get ownerId() : int
      {
         return var_1721;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2149;
      }
   }
}
