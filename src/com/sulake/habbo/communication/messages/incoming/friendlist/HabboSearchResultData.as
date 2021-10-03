package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2346:Boolean;
      
      private var var_2344:int;
      
      private var var_2345:Boolean;
      
      private var var_1407:String;
      
      private var var_1349:String;
      
      private var var_2202:int;
      
      private var var_1640:String;
      
      private var var_2343:String;
      
      private var var_1639:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2202 = param1.readInteger();
         this.var_1407 = param1.readString();
         this.var_1640 = param1.readString();
         this.var_2346 = param1.readBoolean();
         this.var_2345 = param1.readBoolean();
         param1.readString();
         this.var_2344 = param1.readInteger();
         this.var_1639 = param1.readString();
         this.var_2343 = param1.readString();
         this.var_1349 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1349;
      }
      
      public function get avatarName() : String
      {
         return this.var_1407;
      }
      
      public function get avatarId() : int
      {
         return this.var_2202;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2346;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2343;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1639;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2345;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1640;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2344;
      }
   }
}
