package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1149:String = "WN_CREATED";
      
      public static const const_914:String = "WN_DISABLE";
      
      public static const const_904:String = "WN_DEACTIVATED";
      
      public static const const_810:String = "WN_OPENED";
      
      public static const const_828:String = "WN_CLOSED";
      
      public static const const_811:String = "WN_DESTROY";
      
      public static const const_1485:String = "WN_ARRANGED";
      
      public static const const_488:String = "WN_PARENT_RESIZED";
      
      public static const const_812:String = "WN_ENABLE";
      
      public static const const_866:String = "WN_RELOCATE";
      
      public static const const_803:String = "WN_FOCUS";
      
      public static const const_844:String = "WN_PARENT_RELOCATED";
      
      public static const const_465:String = "WN_PARAM_UPDATED";
      
      public static const const_628:String = "WN_PARENT_ACTIVATED";
      
      public static const const_162:String = "WN_RESIZED";
      
      public static const const_852:String = "WN_CLOSE";
      
      public static const const_915:String = "WN_PARENT_REMOVED";
      
      public static const const_248:String = "WN_CHILD_RELOCATED";
      
      public static const const_611:String = "WN_ENABLED";
      
      public static const const_281:String = "WN_CHILD_RESIZED";
      
      public static const const_836:String = "WN_MINIMIZED";
      
      public static const const_529:String = "WN_DISABLED";
      
      public static const const_239:String = "WN_CHILD_ACTIVATED";
      
      public static const const_374:String = "WN_STATE_UPDATED";
      
      public static const const_553:String = "WN_UNSELECTED";
      
      public static const const_401:String = "WN_STYLE_UPDATED";
      
      public static const const_1457:String = "WN_UPDATE";
      
      public static const const_398:String = "WN_PARENT_ADDED";
      
      public static const const_724:String = "WN_RESIZE";
      
      public static const const_742:String = "WN_CHILD_REMOVED";
      
      public static const const_1617:String = "";
      
      public static const const_991:String = "WN_RESTORED";
      
      public static const const_337:String = "WN_SELECTED";
      
      public static const const_918:String = "WN_MINIMIZE";
      
      public static const const_878:String = "WN_FOCUSED";
      
      public static const const_1311:String = "WN_LOCK";
      
      public static const const_315:String = "WN_CHILD_ADDED";
      
      public static const const_841:String = "WN_UNFOCUSED";
      
      public static const const_481:String = "WN_RELOCATED";
      
      public static const const_847:String = "WN_DEACTIVATE";
      
      public static const const_1296:String = "WN_CRETAE";
      
      public static const const_967:String = "WN_RESTORE";
      
      public static const const_318:String = "WN_ACTVATED";
      
      public static const const_1216:String = "WN_LOCKED";
      
      public static const const_416:String = "WN_SELECT";
      
      public static const const_854:String = "WN_MAXIMIZE";
      
      public static const const_966:String = "WN_OPEN";
      
      public static const const_558:String = "WN_UNSELECT";
      
      public static const const_1531:String = "WN_ARRANGE";
      
      public static const const_1171:String = "WN_UNLOCKED";
      
      public static const const_1602:String = "WN_UPDATED";
      
      public static const const_1014:String = "WN_ACTIVATE";
      
      public static const const_1238:String = "WN_UNLOCK";
      
      public static const const_962:String = "WN_MAXIMIZED";
      
      public static const const_1012:String = "WN_DESTROYED";
      
      public static const const_935:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1621,cancelable);
      }
   }
}
