package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private var var_2172:Array;
      
      private const const_1434:String = "infostand_user_view";
      
      private var var_320:InfoStandPetView;
      
      private var var_1173:InfoStandPetData;
      
      private var var_140:Timer;
      
      private var var_916:InfoStandFurniView;
      
      private var var_391:InfostandFurniData;
      
      private var var_363:InfoStandBotView;
      
      private var _mainContainer:IWindowContainer;
      
      private const const_1435:String = "infostand_bot_view";
      
      private var _config:IHabboConfigurationManager;
      
      private const const_1432:String = "infostand_pet_view";
      
      private const const_1433:String = "infostand_furni_view";
      
      private const const_1655:int = 3000;
      
      private var var_207:InfoStandUserView;
      
      private var var_417:InfostandUserData;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param4;
         var_916 = new InfoStandFurniView(this,const_1433);
         var_207 = new InfoStandUserView(this,const_1434);
         var_320 = new InfoStandPetView(this,const_1432);
         var_363 = new InfoStandBotView(this,const_1435);
         var_417 = new InfostandUserData();
         var_391 = new InfostandFurniData();
         var_1173 = new InfoStandPetData();
         var_140 = new Timer(const_1655);
         var_140.addEventListener(TimerEvent.TIMER,onUpdateTimer);
         mainContainer.visible = false;
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            var_2172 = param1.tags;
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            var_207.setTags(param1.tags);
         }
         else
         {
            var_207.setTags(param1.tags,var_2172);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_330,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_232,onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_275,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_133,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_223,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_581,onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_148,onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_141,onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_120,onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_682,onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_145,onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return mainContainer;
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         petData.setData(param1);
         userData.petRespectLeft = param1.petRespectLeft;
         var_320.update(petData);
         selectView(const_1432);
         if(var_140)
         {
            var_140.start();
         }
      }
      
      public function get userData() : InfostandUserData
      {
         return var_417;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_207.update(param1);
         selectView(const_1434);
         if(var_140)
         {
            var_140.stop();
         }
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(var_320 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_428,var_320.getCurrentPetId()));
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_330,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_232,onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_275,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_133,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_223,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_581,onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_148,onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_141,onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_120,onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_682,onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_145,onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
      }
      
      override public function dispose() : void
      {
         if(var_140)
         {
            var_140.stop();
         }
         var_140 = null;
         if(var_207)
         {
            var_207.dispose();
         }
         var_207 = null;
         if(var_916)
         {
            var_916.dispose();
         }
         var_916 = null;
         if(var_363)
         {
            var_363.dispose();
         }
         var_363 = null;
         if(var_320)
         {
            var_320.dispose();
         }
         var_320 = null;
         super.dispose();
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != userData.userId)
         {
            return;
         }
         userData.badges = param1.badges;
         var_207.clearBadges();
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         furniData.setData(param1);
         var_916.update(param1);
         selectView(const_1433);
         if(var_140)
         {
            var_140.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_363.update(param1);
         selectView(const_1435);
         if(var_140)
         {
            var_140.stop();
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(!param1.isOwnUser)
         {
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(userData.isBot())
         {
            var_363.image = param1.image;
         }
         else
         {
            var_207.image = param1.image;
         }
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(userData.isBot())
            {
               var_363.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               var_207.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == userData.groupBadgeId)
         {
            var_207.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function selectView(param1:String) : void
      {
         hideChildren();
         var _loc2_:IWindow = mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         mainContainer.visible = true;
         mainContainer.width = _loc2_.width;
         mainContainer.height = _loc2_.height;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_62,HabboWindowStyle.const_43,HabboWindowParam.const_43,new Rectangle(0,0,50,100)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_infostand");
            _mainContainer.background = true;
            _mainContainer.color = 0;
         }
         return _mainContainer;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return var_391;
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         close();
         if(var_140)
         {
            var_140.stop();
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_133:
               _loc2_ = param1.id == var_391.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_275:
               if(var_207 != null && false && var_207.window.visible)
               {
                  _loc2_ = param1.id == var_417.userRoomId;
                  break;
               }
               if(var_320 != null && false && var_320.window.visible)
               {
                  _loc2_ = param1.id == var_1173.roomIndex;
                  break;
               }
               if(var_363 != null && false && var_363.window.visible)
               {
                  _loc2_ = param1.id == var_417.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            close();
         }
      }
      
      public function get petData() : InfoStandPetData
      {
         return var_1173;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < mainContainer.numChildren)
         {
            _loc1_ = mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               mainContainer.width = _loc1_.width;
               mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(_mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _mainContainer.numChildren)
            {
               _mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         var_320.updateEnabledTrainingCommands(param1.id,param1.enabledCommands);
      }
      
      public function close() : void
      {
         hideChildren();
         if(var_140)
         {
            var_140.stop();
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_344,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
   }
}
