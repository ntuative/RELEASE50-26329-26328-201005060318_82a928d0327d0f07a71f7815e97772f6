package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1184:int = 4;
      
      public static const const_723:int = 3;
      
      public static const const_591:int = 2;
      
      public static const const_885:int = 1;
       
      
      private var var_1914:String;
      
      private var _disposed:Boolean;
      
      private var var_1777:int;
      
      private var var_1915:Boolean;
      
      private var var_783:String;
      
      private var var_836:PublicRoomData;
      
      private var var_1916:int;
      
      private var _index:int;
      
      private var var_1913:String;
      
      private var _type:int;
      
      private var var_1706:String;
      
      private var var_835:GuestRoomData;
      
      private var var_1912:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1914 = param1.readString();
         var_1912 = param1.readString();
         var_1915 = param1.readInteger() == 1;
         var_1913 = param1.readString();
         var_783 = param1.readString();
         var_1916 = param1.readInteger();
         var_1777 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_885)
         {
            var_1706 = param1.readString();
         }
         else if(_type == const_723)
         {
            var_836 = new PublicRoomData(param1);
         }
         else if(_type == const_591)
         {
            var_835 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1916;
      }
      
      public function get popupCaption() : String
      {
         return var_1914;
      }
      
      public function get userCount() : int
      {
         return var_1777;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1915;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_885)
         {
            return 0;
         }
         if(this.type == const_591)
         {
            return this.var_835.maxUserCount;
         }
         if(this.type == const_723)
         {
            return this.var_836.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1912;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_835 != null)
         {
            this.var_835.dispose();
            this.var_835 = null;
         }
         if(this.var_836 != null)
         {
            this.var_836.dispose();
            this.var_836 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_835;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1913;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_836;
      }
      
      public function get picRef() : String
      {
         return var_783;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1706;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
