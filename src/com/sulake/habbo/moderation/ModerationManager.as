package com.sulake.habbo.moderation
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.parser.moderation.ModeratorInitMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDSessionDataManager;
   import iid.IIDHabboWindowManager;
   
   public class ModerationManager extends Component implements IHabboModeration
   {
       
      
      private var var_474:IHabboSoundManager;
      
      private var var_2179:ModeratorInitMessageParser;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2181:WindowTracker;
      
      private var var_344:ISessionDataManager;
      
      private var var_2180:int;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _navigator:IHabboNavigator;
      
      private var var_2178:ModerationMessageHandler;
      
      private var var_747:StartPanelCtrl;
      
      private var _issueManager:IssueManager;
      
      private var var_153:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      public function ModerationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationReady);
         queueInterface(new IIDSessionDataManager(),onSessionDataReady);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationReady);
         queueInterface(new IIDHabboNavigator(),onNavigatorReady);
         queueInterface(new IIDHabboSoundManager(),onSoundManagerReady);
         var_747 = new StartPanelCtrl(this);
         var_2181 = new WindowTracker();
      }
      
      public function userSelected(param1:int, param2:String) : void
      {
         Logger.log("USER SELECTED: " + param1 + ", " + param2);
         this.var_747.userSelected(param1,param2);
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var_153 = param2 as IHabboConfigurationManager;
      }
      
      public function get issueManager() : IssueManager
      {
         return _issueManager;
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_474 = param2 as IHabboSoundManager;
      }
      
      public function set currentFlatId(param1:int) : void
      {
         var_2180 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function get soundManager() : IHabboSoundManager
      {
         return var_474;
      }
      
      private function onSessionDataReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var_344 = param2 as ISessionDataManager;
      }
      
      public function openHkPage(param1:String, param2:String) : void
      {
         var _loc3_:String = configuration.getKey(param1);
         var _loc4_:String = _loc3_ + param2;
         HabboWebTools.navigateToURL(_loc4_,"housekeeping");
      }
      
      override public function dispose() : void
      {
         if(var_747)
         {
            var_747.dispose();
            var_747 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         if(_communication)
         {
            _communication.release(new IIDHabboCommunicationManager());
            _communication = null;
         }
         if(var_344)
         {
            var_344.release(new IIDSessionDataManager());
            var_344 = null;
         }
         if(var_153)
         {
            var_153.release(new IIDHabboConfigurationManager());
            var_153 = null;
         }
         if(_navigator)
         {
            _navigator.release(new IIDHabboNavigator());
            _navigator = null;
         }
         if(var_474)
         {
            var_474.release(new IIDHabboSoundManager());
            var_474 = null;
         }
         _connection = null;
         super.dispose();
      }
      
      public function get windowTracker() : WindowTracker
      {
         return var_2181;
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _communication = param2 as IHabboCommunicationManager;
         if(_communication != null)
         {
            _connection = _communication.getHabboMainConnection(onConnectionReady);
            if(_connection != null)
            {
               onConnectionReady(_connection);
            }
         }
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return var_344;
      }
      
      public function set initMsg(param1:ModeratorInitMessageParser) : void
      {
         var_2179 = param1;
      }
      
      public function getXmlWindow(param1:String) : IWindow
      {
         var _loc2_:IAsset = assets.getAssetByName(param1 + "_xml");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         var _loc4_:ICoreWindowManager = ICoreWindowManager(_windowManager);
         return _loc4_.buildFromXML(XML(_loc3_.content));
      }
      
      public function disableButton(param1:Boolean, param2:IWindowContainer, param3:String) : void
      {
         var _loc4_:IButtonWindow = IButtonWindow(param2.findChildByName(param3));
         if(!param1)
         {
            _loc4_.disable();
            _loc4_.toolTipCaption = "No permission";
         }
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            _connection = param1;
            var_2178 = new ModerationMessageHandler(this);
         }
      }
      
      public function get startPanel() : StartPanelCtrl
      {
         return var_747;
      }
      
      public function get messageHandler() : ModerationMessageHandler
      {
         return var_2178;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _windowManager = param2 as IHabboWindowManager;
         _issueManager = new IssueManager(this);
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         _navigator = IHabboNavigator(param2);
      }
      
      public function get currentFlatId() : int
      {
         return var_2180;
      }
      
      public function get initMsg() : ModeratorInitMessageParser
      {
         return var_2179;
      }
      
      public function get connection() : IConnection
      {
         return _connection;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return var_153;
      }
      
      public function goToRoom(param1:int) : void
      {
         Logger.log("MOD: GO TO ROOM: " + param1);
         _navigator.goToRoom(param1,false);
      }
   }
}
