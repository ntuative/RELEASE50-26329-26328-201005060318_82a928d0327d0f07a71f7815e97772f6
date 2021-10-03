package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2074:int;
      
      private var var_419:Boolean;
      
      private var var_2075:Boolean;
      
      private var var_890:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2075 = param1.readBoolean();
         if(var_2075)
         {
            var_2074 = param1.readInteger();
            var_419 = param1.readBoolean();
         }
         else
         {
            var_890 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_890 != null)
         {
            var_890.dispose();
            var_890 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2074;
      }
      
      public function get owner() : Boolean
      {
         return var_419;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2075;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_890;
      }
   }
}
