package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1644:int;
      
      private var var_1292:int;
      
      private var var_1641:int;
      
      private var _offerId:int;
      
      private var var_1643:int;
      
      private var var_1642:int;
      
      private var var_1647:Boolean;
      
      private var var_1645:int;
      
      private var var_1646:Boolean;
      
      private var var_1149:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1149 = param1.readString();
         var_1292 = param1.readInteger();
         var_1646 = param1.readBoolean();
         var_1647 = param1.readBoolean();
         var_1641 = param1.readInteger();
         var_1645 = param1.readInteger();
         var_1643 = param1.readInteger();
         var_1644 = param1.readInteger();
         var_1642 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1643;
      }
      
      public function get month() : int
      {
         return var_1644;
      }
      
      public function get price() : int
      {
         return var_1292;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1641;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1645;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1646;
      }
      
      public function get day() : int
      {
         return var_1642;
      }
      
      public function get vip() : Boolean
      {
         return var_1647;
      }
      
      public function get productCode() : String
      {
         return var_1149;
      }
   }
}
