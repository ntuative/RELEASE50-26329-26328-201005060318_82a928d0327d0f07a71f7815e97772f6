package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_690:IAssetLoader;
      
      private var var_1206:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1206 = param1;
         var_690 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_690;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_690 != null)
            {
               if(true)
               {
                  var_690.dispose();
                  var_690 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1206;
      }
   }
}
