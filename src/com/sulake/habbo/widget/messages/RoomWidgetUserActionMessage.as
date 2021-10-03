package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_722:String = "RWUAM_RESPECT_USER";
      
      public static const const_565:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_704:String = "RWUAM_START_TRADING";
      
      public static const const_528:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_670:String = "RWUAM_WHISPER_USER";
      
      public static const const_512:String = "RWUAM_IGNORE_USER";
      
      public static const const_428:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_540:String = "RWUAM_BAN_USER";
      
      public static const const_614:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_459:String = "RWUAM_KICK_USER";
      
      public static const const_734:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_592:String = " RWUAM_RESPECT_PET";
      
      public static const const_467:String = "RWUAM_KICK_BOT";
      
      public static const const_1291:String = "RWUAM_TRAIN_PET";
      
      public static const const_741:String = "RWUAM_PICKUP_PET";
      
      public static const const_633:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_621:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
