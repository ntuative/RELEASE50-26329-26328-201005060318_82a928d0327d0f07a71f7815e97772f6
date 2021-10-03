package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1250:int;
      
      private var var_1067:String;
      
      private var var_674:Array;
      
      private var var_960:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_674.slice();
      }
      
      public function flush() : Boolean
      {
         var_1067 = "";
         var_960 = [];
         var_674 = [];
         var_1250 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1250;
      }
      
      public function get question() : String
      {
         return var_1067;
      }
      
      public function get choices() : Array
      {
         return var_960.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1067 = param1.readString();
         var_960 = [];
         var_674 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_960.push(param1.readString());
            var_674.push(param1.readInteger());
            _loc3_++;
         }
         var_1250 = param1.readInteger();
         return true;
      }
   }
}
