package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_715:int = 6;
      
      public static const const_220:int = 5;
      
      public static const const_701:int = 2;
      
      public static const const_321:int = 9;
      
      public static const const_299:int = 4;
      
      public static const const_267:int = 2;
      
      public static const const_707:int = 4;
      
      public static const const_224:int = 8;
      
      public static const const_702:int = 7;
      
      public static const const_247:int = 3;
      
      public static const const_290:int = 1;
      
      public static const const_198:int = 5;
      
      public static const const_415:int = 12;
      
      public static const const_339:int = 1;
      
      public static const const_676:int = 11;
      
      public static const const_718:int = 3;
      
      public static const const_1621:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_394:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_394 = new Array();
         var_394.push(new Tab(_navigator,const_290,const_415,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_384));
         var_394.push(new Tab(_navigator,const_267,const_339,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_384));
         var_394.push(new Tab(_navigator,const_299,const_676,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_874));
         var_394.push(new Tab(_navigator,const_247,const_220,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_384));
         var_394.push(new Tab(_navigator,const_198,const_224,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_736));
         setSelectedTab(const_290);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_394)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_299;
      }
      
      public function get tabs() : Array
      {
         return var_394;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
