package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1368:int = 2;
      
      public static const const_1616:int = 1;
       
      
      private var var_2125:int;
      
      private var var_2121:int;
      
      private var var_1715:Boolean;
      
      private var var_2122:int;
      
      private var var_1290:String;
      
      private var var_2123:Boolean;
      
      private var var_1713:int;
      
      private var var_2124:int;
      
      private var var_1714:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2121;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1715;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2124;
      }
      
      public function get memberPeriods() : int
      {
         return var_2122;
      }
      
      public function get productName() : String
      {
         return var_1290;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2123;
      }
      
      public function get responseType() : int
      {
         return var_2125;
      }
      
      public function get pastClubDays() : int
      {
         return var_1714;
      }
      
      public function get pastVipDays() : int
      {
         return var_1713;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1290 = param1.readString();
         var_2121 = param1.readInteger();
         var_2122 = param1.readInteger();
         var_2124 = param1.readInteger();
         var_2125 = param1.readInteger();
         var_2123 = param1.readBoolean();
         var_1715 = param1.readBoolean();
         var_1714 = param1.readInteger();
         var_1713 = param1.readInteger();
         return true;
      }
   }
}
