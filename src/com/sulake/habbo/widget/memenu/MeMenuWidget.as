package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_673:String = "me_menu_settings_view";
      
      public static const const_657:String = "me_menu_effects_view";
      
      public static const const_124:String = "me_menu_top_view";
      
      public static const const_1157:String = "me_menu_rooms_view";
      
      public static const const_924:String = "me_menu_dance_moves_view";
      
      public static const const_328:String = "me_menu_my_clothes_view";
       
      
      private var var_1687:Boolean = false;
      
      private var var_429:Boolean = false;
      
      private var var_1415:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1416:int = 0;
      
      private var var_1685:int = 0;
      
      private var var_1682:Boolean = false;
      
      private var var_252:Boolean = false;
      
      private var var_1686:int = 0;
      
      private var var_1683:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_564:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1147:int = 0;
      
      private var var_1684:Boolean = false;
      
      private var var_980:Point;
      
      private var var_37:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_980 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1684 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_124);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_547,method_7);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_579,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_522,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_518,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_303,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_739,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_232,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_235,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_546,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_223,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_307,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_103,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_482,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_165,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_429)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_564;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_252)
         {
            return;
         }
         if(var_37.window.name == const_673)
         {
            (var_37 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1147 > 0;
      }
      
      private function method_7(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1416 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1416.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_252 && var_37.window.name == const_328))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_655);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_547,method_7);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_579,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_522,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_518,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_303,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_232,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_235,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_546,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_739,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_223,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_307,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_482,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_103,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_165,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_37 != null)
         {
            var_37.dispose();
            var_37 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1687;
      }
      
      public function get creditBalance() : int
      {
         return var_1416;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1683 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_482:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_252 + " view: " + var_37.window.name);
               if(var_252 != true || var_37.window.name != const_124)
               {
                  return;
               }
               (var_37 as MeMenuMainView).setIconAssets("clothes_icon",const_124,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_103:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_1682;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1683 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1685;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_564 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_564 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1147;
         var_1147 = param1.daysLeft;
         var_1685 = param1.periodsLeft;
         var_1686 = param1.pastPeriods;
         var_1687 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1415);
         var_1415 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_37 != null)
            {
               changeView(var_37.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1682 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_37 != null && var_37.window.name != const_328)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1196,HabboWindowStyle.const_905,HabboWindowParam.const_43,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_564 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_564 = true;
            }
         }
         if(var_37 != null && var_37.window.name == const_657)
         {
            (var_37 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1686;
      }
      
      public function get habboClubDays() : int
      {
         return var_1147;
      }
      
      public function updateSize() : void
      {
         if(var_37 != null)
         {
            var_980.x = var_37.window.width + 10;
            var_980.y = var_37.window.height;
            var_37.window.x = 5;
            var_37.window.y = 0;
            _mainContainer.width = var_980.x;
            _mainContainer.height = var_980.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_252 = !var_252;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_252 = false;
               break;
            default:
               return;
         }
         if(var_252)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_634);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_37 != null)
         {
            _mainContainer.removeChild(var_37.window);
            var_37.dispose();
            var_37 = null;
         }
         var_252 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_37 != null && var_37.window.name == const_328)
         {
            changeView(const_124);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1684;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_124:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_657:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_924:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_328:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1157:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_673:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_37 != null)
            {
               _mainContainer.removeChild(var_37.window);
               var_37.dispose();
               var_37 = null;
            }
            var_37 = _loc2_;
            var_37.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1415;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_124);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_650);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_252 = true;
      }
   }
}
