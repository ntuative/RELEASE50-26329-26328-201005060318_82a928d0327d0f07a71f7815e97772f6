package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1290:String = "";
      
      private var var_1289:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1289 = "";
         var_1290 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1290;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1289 = param1.readString();
         var_1290 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1289;
      }
   }
}
