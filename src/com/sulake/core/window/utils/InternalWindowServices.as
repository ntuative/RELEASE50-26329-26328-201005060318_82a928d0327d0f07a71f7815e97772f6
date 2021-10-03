package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2328:uint;
      
      private var var_868:IWindowToolTipAgentService;
      
      private var var_869:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_872:IWindowFocusManagerService;
      
      private var var_870:IWindowMouseListenerService;
      
      private var var_871:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2328 = 0;
         var_121 = param2;
         _windowContext = param1;
         var_871 = new WindowMouseDragger(param2);
         var_869 = new WindowMouseScaler(param2);
         var_870 = new WindowMouseListener(param2);
         var_872 = new FocusManager(param2);
         var_868 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_869;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_872;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_868;
      }
      
      public function dispose() : void
      {
         if(var_871 != null)
         {
            var_871.dispose();
            var_871 = null;
         }
         if(var_869 != null)
         {
            var_869.dispose();
            var_869 = null;
         }
         if(var_870 != null)
         {
            var_870.dispose();
            var_870 = null;
         }
         if(var_872 != null)
         {
            var_872.dispose();
            var_872 = null;
         }
         if(var_868 != null)
         {
            var_868.dispose();
            var_868 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_870;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_871;
      }
   }
}
