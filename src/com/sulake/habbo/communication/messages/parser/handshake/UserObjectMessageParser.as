package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_312:String;
      
      private var var_2356:String;
      
      private var var_2358:int;
      
      private var var_2355:int;
      
      private var var_624:String;
      
      private var var_1349:String;
      
      private var _name:String;
      
      private var var_510:int;
      
      private var var_874:int;
      
      private var var_2357:int;
      
      private var var_1990:int;
      
      private var var_2354:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2355;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1349;
      }
      
      public function get customData() : String
      {
         return this.var_2356;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_510;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2358;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2354;
      }
      
      public function get figure() : String
      {
         return this.var_312;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1990;
      }
      
      public function get sex() : String
      {
         return this.var_624;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_312 = param1.readString();
         this.var_624 = param1.readString();
         this.var_2356 = param1.readString();
         this.var_1349 = param1.readString();
         this.var_2357 = param1.readInteger();
         this.var_2354 = param1.readString();
         this.var_2358 = param1.readInteger();
         this.var_2355 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this.var_874 = param1.readInteger();
         this.var_510 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2357;
      }
      
      public function get respectLeft() : int
      {
         return this.var_874;
      }
   }
}
