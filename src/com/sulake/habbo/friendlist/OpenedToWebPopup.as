package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class OpenedToWebPopup
   {
       
      
      private var var_184:Timer;
      
      private var _friendList:HabboFriendList;
      
      private var var_289:IWindowContainer;
      
      public function OpenedToWebPopup(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
      }
      
      private function getOpenedToWebAlert() : IWindowContainer
      {
         var _loc1_:IWindowContainer = IWindowContainer(_friendList.getXmlWindow("opened_to_web_popup"));
         _friendList.refreshButton(_loc1_,"opened_to_web",true,null,0);
         return _loc1_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         if(var_289 != null)
         {
            close(null);
         }
         var_289 = getOpenedToWebAlert();
         if(var_184 != null)
         {
            var_184.stop();
         }
         var_184 = new Timer(2000,1);
         var_184.addEventListener(TimerEvent.TIMER,close);
         var_184.start();
         var_289.x = param1;
         var_289.y = param2;
      }
      
      private function close(param1:Event) : void
      {
         var_289.destroy();
         var_289 = null;
      }
   }
}
