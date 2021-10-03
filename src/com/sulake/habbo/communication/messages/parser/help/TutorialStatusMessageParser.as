package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_972:Boolean;
      
      private var var_971:Boolean;
      
      private var var_970:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_972;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_971;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_970 = param1.readBoolean();
         var_971 = param1.readBoolean();
         var_972 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_970;
      }
      
      public function flush() : Boolean
      {
         var_970 = false;
         var_971 = false;
         var_972 = false;
         return true;
      }
   }
}
