package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1464:int = 9;
      
      public static const const_1572:int = 4;
      
      public static const const_1504:int = 1;
      
      public static const const_1231:int = 10;
      
      public static const const_1466:int = 2;
      
      public static const const_1323:int = 7;
      
      public static const const_1237:int = 11;
      
      public static const const_1554:int = 3;
      
      public static const const_1170:int = 8;
      
      public static const const_1278:int = 5;
      
      public static const const_1489:int = 6;
      
      public static const const_1153:int = 12;
       
      
      private var var_1953:String;
      
      private var _roomId:int;
      
      private var var_1131:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1953;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1131 = param1.readInteger();
         var_1953 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1131;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
