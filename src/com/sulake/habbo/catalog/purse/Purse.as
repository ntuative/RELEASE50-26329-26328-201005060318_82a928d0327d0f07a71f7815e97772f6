package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1712:int = 0;
      
      private var var_1420:int = 0;
      
      private var var_1715:Boolean = false;
      
      private var var_1716:int = 0;
      
      private var var_1713:int = 0;
      
      private var var_1421:int = 0;
      
      private var var_1714:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1420;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1420 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1715 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1714 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1420 > 0 || var_1421 > 0;
      }
      
      public function get credits() : int
      {
         return var_1716;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1713 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1421;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1715;
      }
      
      public function get pastClubDays() : int
      {
         return var_1714;
      }
      
      public function get pastVipDays() : int
      {
         return var_1713;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1712 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1712;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1421 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1716 = param1;
      }
   }
}
