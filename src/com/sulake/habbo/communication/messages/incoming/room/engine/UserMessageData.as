package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1401:String = "F";
      
      public static const const_887:String = "M";
       
      
      private var var_83:Number = 0;
      
      private var var_312:String = "";
      
      private var var_1737:int = 0;
      
      private var var_1736:String = "";
      
      private var var_1740:int = 0;
      
      private var var_1741:int = 0;
      
      private var var_1738:String = "";
      
      private var var_624:String = "";
      
      private var _id:int = 0;
      
      private var var_190:Boolean = false;
      
      private var var_228:int = 0;
      
      private var var_1739:String = "";
      
      private var _name:String = "";
      
      private var var_1742:int = 0;
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_190)
         {
            var_228 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_190)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1737;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_190)
         {
            var_1740 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1739;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_190)
         {
            var_1738 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_190)
         {
            var_1739 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_190)
         {
            var_1741 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_190)
         {
            var_312 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_190)
         {
            var_1737 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_190)
         {
            var_624 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1740;
      }
      
      public function get groupID() : String
      {
         return var_1738;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_190)
         {
            var_1742 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_190)
         {
            var_1736 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_190 = true;
      }
      
      public function get sex() : String
      {
         return var_624;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get webID() : int
      {
         return var_1742;
      }
      
      public function get custom() : String
      {
         return var_1736;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_190)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_190)
         {
            var_82 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_190)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1741;
      }
   }
}
