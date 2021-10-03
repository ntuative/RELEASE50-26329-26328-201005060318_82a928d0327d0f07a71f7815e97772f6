package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_242:String = "WE_CHILD_RESIZED";
      
      public static const const_1362:String = "WE_CLOSE";
      
      public static const const_1339:String = "WE_DESTROY";
      
      public static const const_135:String = "WE_CHANGE";
      
      public static const const_1294:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1455:String = "WE_PARENT_RESIZE";
      
      public static const const_97:String = "WE_UPDATE";
      
      public static const const_1365:String = "WE_MAXIMIZE";
      
      public static const const_385:String = "WE_DESTROYED";
      
      public static const const_833:String = "WE_UNSELECT";
      
      public static const const_1324:String = "WE_MAXIMIZED";
      
      public static const const_1618:String = "WE_UNLOCKED";
      
      public static const const_471:String = "WE_CHILD_REMOVED";
      
      public static const const_177:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1182:String = "WE_ACTIVATE";
      
      public static const const_268:String = "WE_ENABLED";
      
      public static const const_373:String = "WE_CHILD_RELOCATED";
      
      public static const const_1286:String = "WE_CREATE";
      
      public static const const_537:String = "WE_SELECT";
      
      public static const const_171:String = "";
      
      public static const const_1459:String = "WE_LOCKED";
      
      public static const const_1566:String = "WE_PARENT_RELOCATE";
      
      public static const const_1522:String = "WE_CHILD_REMOVE";
      
      public static const const_1462:String = "WE_CHILD_RELOCATE";
      
      public static const const_1525:String = "WE_LOCK";
      
      public static const const_200:String = "WE_FOCUSED";
      
      public static const const_679:String = "WE_UNSELECTED";
      
      public static const const_889:String = "WE_DEACTIVATED";
      
      public static const const_1290:String = "WE_MINIMIZED";
      
      public static const const_1606:String = "WE_ARRANGED";
      
      public static const const_1470:String = "WE_UNLOCK";
      
      public static const const_1502:String = "WE_ATTACH";
      
      public static const const_1265:String = "WE_OPEN";
      
      public static const const_1229:String = "WE_RESTORE";
      
      public static const const_1550:String = "WE_PARENT_RELOCATED";
      
      public static const const_1402:String = "WE_RELOCATE";
      
      public static const const_1565:String = "WE_CHILD_RESIZE";
      
      public static const const_1610:String = "WE_ARRANGE";
      
      public static const const_1208:String = "WE_OPENED";
      
      public static const const_1203:String = "WE_CLOSED";
      
      public static const const_1587:String = "WE_DETACHED";
      
      public static const const_1575:String = "WE_UPDATED";
      
      public static const const_1189:String = "WE_UNFOCUSED";
      
      public static const const_454:String = "WE_RELOCATED";
      
      public static const const_1349:String = "WE_DEACTIVATE";
      
      public static const const_199:String = "WE_DISABLED";
      
      public static const const_520:String = "WE_CANCEL";
      
      public static const const_603:String = "WE_ENABLE";
      
      public static const const_1279:String = "WE_ACTIVATED";
      
      public static const const_1328:String = "WE_FOCUS";
      
      public static const const_1614:String = "WE_DETACH";
      
      public static const const_1172:String = "WE_RESTORED";
      
      public static const const_1242:String = "WE_UNFOCUS";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_1185:String = "WE_PARENT_RESIZED";
      
      public static const const_1310:String = "WE_CREATED";
      
      public static const const_1483:String = "WE_ATTACHED";
      
      public static const const_1158:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1621:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1401:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1621 = param3;
         var_1401 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1401;
      }
      
      public function get related() : IWindow
      {
         return var_1621;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1401 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
