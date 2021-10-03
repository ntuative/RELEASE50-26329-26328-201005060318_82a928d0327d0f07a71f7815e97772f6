package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_884:String = "whisper";
      
      public static const const_1308:String = "shout";
      
      public static const const_671:String = "RWWCIDE_CHAT_INPUT_CONTENT";
       
      
      private var var_1955:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_671,param3,param4);
         var_1955 = param1;
         _userName = param2;
      }
      
      public function get messageType() : String
      {
         return var_1955;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
