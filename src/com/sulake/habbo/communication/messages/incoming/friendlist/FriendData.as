package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_312:String;
      
      private var var_1347:String;
      
      private var var_1348:String;
      
      private var var_1311:int;
      
      private var var_603:int;
      
      private var var_1349:String;
      
      private var _name:String;
      
      private var var_1318:Boolean;
      
      private var var_651:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_603 = param1.readInteger();
         this.var_651 = param1.readBoolean();
         this.var_1318 = param1.readBoolean();
         this.var_312 = param1.readString();
         this.var_1311 = param1.readInteger();
         this.var_1348 = param1.readString();
         this.var_1347 = param1.readString();
         this.var_1349 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_603;
      }
      
      public function get realName() : String
      {
         return var_1349;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1348;
      }
      
      public function get categoryId() : int
      {
         return var_1311;
      }
      
      public function get online() : Boolean
      {
         return var_651;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1318;
      }
      
      public function get lastAccess() : String
      {
         return var_1347;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
   }
}
