package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_134:int = 0;
      
      public static const const_111:int = 1;
      
      public static const const_104:int = 2;
      
      public static const const_605:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1367:int = 0;
      
      private var var_1889:String = "";
      
      private var var_197:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_197 = param2;
         var_1367 = param3;
         var_1889 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1889;
      }
      
      public function get chatType() : int
      {
         return var_1367;
      }
      
      public function get text() : String
      {
         return var_197;
      }
   }
}
