package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.avatar.actions.ActionDefinition;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.IAvatarDataContainer;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.cache.AvatarImageBodyPartCache;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.enum.AvatarType;
   import com.sulake.habbo.avatar.pets.IPetData;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.figure.FigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarImage implements IAvatarImage, IDisposable
   {
      
      private static const CHANNELS_UNIQUE:String = "CHANNELS_UNIQUE";
      
      private static const CHANNELS_EQUAL:String = "CHANNELS_EQUAL";
      
      private static const CHANNELS_SATURATED:String = "CHANNELS_SATURATED";
      
      private static const CHANNELS_BLUE:String = "CHANNELS_BLUE";
      
      private static const CHANNELS_RED:String = "CHANNELS_RED";
      
      private static const CHANNELS_GREEN:String = "CHANNELS_GREEN";
      
      private static const const_1083:int = 2;
      
      private static const const_1081:String = AvatarSetType.const_40;
      
      private static const const_1082:String = "Default";
      
      private static const const_1084:int = 125;
       
      
      private var var_1271:int = 0;
      
      private var var_312:AvatarFigureContainer;
      
      private var _isDisposed:Boolean;
      
      private var var_170:Array;
      
      private var var_867:Boolean = false;
      
      private var var_202:String;
      
      private var var_2393:int;
      
      private var _image:BitmapData;
      
      private var var_1272:int;
      
      private var var_132:AvatarImageCache;
      
      private var var_311:Boolean;
      
      private var var_429:Boolean;
      
      private var _assets:AssetAliasCollection;
      
      private var var_508:IAvatarDataContainer;
      
      private var var_507:int = 0;
      
      private var var_2394:int;
      
      private var var_1270:int = 0;
      
      private var var_1053:int;
      
      private var var_203:Array;
      
      private var var_92:int;
      
      private var var_601:Array;
      
      private var var_699:String;
      
      private var var_174:IActiveActionData;
      
      private var var_54:AvatarStructure;
      
      public function AvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:String, param4:String, param5:String, param6:String = null)
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var_203 = [];
         var_601 = new Array();
         super();
         var_311 = true;
         var_54 = param1;
         _assets = param2;
         var_202 = param4;
         var_699 = param5;
         if(var_202 == null)
         {
            var_202 = AvatarScaleType.const_56;
         }
         if(param3 == null || param3 == "")
         {
            if(param5 == "user")
            {
               param3 = "hr-893-45.hd-180-2.ch-210-66.lg-270-82.sh-300-91.wa-2007-.ri-1-";
               Logger.log("Using default avatar figure");
            }
            else
            {
               param3 = "phd-1-5.pbd-1-5.ptl-1-5";
               Logger.log("Using default pet figure");
            }
         }
         var_312 = new AvatarFigureContainer(param3);
         if(param6)
         {
            _loc7_ = var_54.getMandatorySetTypeIds();
            if(_loc7_)
            {
               _loc8_ = var_54.figureData;
               for each(_loc9_ in _loc7_)
               {
                  if(!var_312.hasPartType(_loc9_))
                  {
                     _loc10_ = var_54.getDefaultPartSet(_loc9_,param6);
                     if(_loc10_)
                     {
                        var_312.updatePart(_loc9_,_loc10_.id,[0]);
                     }
                  }
                  else
                  {
                     _loc11_ = _loc8_.getSetType(_loc9_);
                     _loc12_ = _loc11_.getPartSet(var_312.getPartSetId(_loc9_));
                     if(!_loc12_)
                     {
                        _loc13_ = var_54.getDefaultPartSet(_loc9_,param6);
                        var_312.updatePart(_loc9_,_loc13_.id,[0]);
                     }
                  }
               }
            }
         }
         if(param5 == AvatarType.PET)
         {
            _loc14_ = var_312.getPartSetId("pbd");
            solvePetAvatarTypeAndBreed(_loc14_);
            var_1271 = var_1053;
         }
         var_132 = new AvatarImageCache(var_54,this,_assets,var_202);
         setDirection(const_1081,const_1083);
         var_203 = new Array();
         resetActions();
      }
      
      private function logThis(param1:String) : void
      {
      }
      
      public function getCanvasOffsets() : Array
      {
         return var_601;
      }
      
      public function getSprites() : Array
      {
         return var_170;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            var_54 = null;
            _assets = null;
            var_132 = null;
            var_174 = null;
            var_312 = null;
            var_508 = null;
            var_203 = null;
            if(_image)
            {
               _image.dispose();
            }
            _image = null;
            var_601 = null;
            _isDisposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function setDirection(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         param2 += var_1270;
         if(param2 < AvatarDirectionAngle.const_1359)
         {
            param2 = AvatarDirectionAngle.const_652 + (param2 + 1);
         }
         if(param2 > AvatarDirectionAngle.const_652)
         {
            param2 -= NaN;
         }
         if(var_699 == AvatarType.PET && param1 == AvatarSetType.const_49)
         {
            if((var_92 == 6 || var_92 == 0) && param2 == 7)
            {
               param2 = var_92;
            }
            _loc3_ = var_54.renderManager.petDataManager.getPetData(var_1271);
            if(_loc3_ != null)
            {
               if(_loc3_.disableHeadTurn)
               {
                  param2 = var_92;
               }
            }
         }
         if(var_54.isMainAvatarSet(param1))
         {
            var_92 = param2;
         }
         getCache().setDirection(param1,param2);
         var_311 = true;
      }
      
      public function getAsset(param1:String) : BitmapDataAsset
      {
         return _assets.getAssetByName(param1) as BitmapDataAsset;
      }
      
      public function getMainAction() : IActiveActionData
      {
         return var_174;
      }
      
      public function get avatarSpriteData() : IAvatarDataContainer
      {
         return var_508;
      }
      
      public function initActionAppends() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_203)
         {
            _loc1_.dispose();
         }
         var_203 = new Array();
         var_867 = false;
      }
      
      public function isAnimating() : Boolean
      {
         return var_429;
      }
      
      public function endActionAppends() : void
      {
         sortActions();
         var_867 = true;
      }
      
      public function getSubType() : int
      {
         return var_1271;
      }
      
      private function sortActions() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         resetActions();
         var_429 = false;
         var _loc1_:Array = var_54.sortActions(var_203);
         if(_loc1_ == null)
         {
            var_601 = new Array(0,0,0);
         }
         else
         {
            var_601 = var_54.getCanvasOffsets(_loc1_,var_202,var_92);
         }
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.definition.isAnimation && _loc2_.actionParameter == "")
            {
               _loc2_.actionParameter = "1";
            }
            setActionToParts(_loc2_);
            if(_loc2_.definition.isAnimation)
            {
               var_429 = true;
               _loc3_ = var_54.getAnimation(_loc2_.definition.state + "." + _loc2_.actionParameter);
               if(_loc3_ != null)
               {
                  var_170 = var_170.concat(_loc3_.spriteData);
                  if(_loc3_.hasDirectionData())
                  {
                     var_1270 = _loc3_.directionData.offset;
                  }
                  if(_loc3_.hasAvatarData())
                  {
                     var_508 = _loc3_.avatarData;
                  }
               }
            }
            if(_loc2_.actionType == AvatarAction.const_686)
            {
               var_429 = true;
            }
            if(_loc2_.actionType == AvatarAction.const_435)
            {
               var_429 = true;
            }
            if(_loc2_.actionType == AvatarAction.const_372)
            {
               var_429 = true;
            }
         }
      }
      
      private function addActionData(param1:String, param2:String = "") : void
      {
         var _loc3_:* = null;
         if(var_203 == null)
         {
            var_203 = new Array();
         }
         var _loc4_:int = 0;
         while(_loc4_ < var_203.length)
         {
            _loc3_ = var_203[_loc4_];
            if(_loc3_.actionType == param1 && _loc3_.actionParameter == param2)
            {
               return;
            }
            _loc4_++;
         }
         var_203.push(new ActiveActionData(param1,param2));
      }
      
      public function getPartColor(param1:String) : IPartColor
      {
         return var_54.getPartColor(var_312,param1);
      }
      
      public function getScale() : String
      {
         return var_202;
      }
      
      public function get petBreed() : int
      {
         return var_1272;
      }
      
      public function getCroppedImage(param1:String) : BitmapData
      {
         var _loc6_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:* = null;
         if(var_174 == null)
         {
            return null;
         }
         var _loc2_:AvatarImageCache = getCache();
         var _loc3_:AvatarCanvas = var_54.getCanvas(var_202,var_174.definition.geometryType);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         var _loc5_:Array = var_54.getBodyParts(param1,var_174.definition,var_92);
         var _loc7_:int = _loc5_.length - 1;
         while(_loc7_ >= 0)
         {
            _loc9_ = _loc5_[_loc7_];
            _loc10_ = _loc2_.getImageContainer(_loc9_,var_507);
            if(_loc10_ != null)
            {
               _loc11_ = _loc10_.image;
               if(_loc11_ == null)
               {
                  _loc4_.dispose();
                  return null;
               }
               _loc12_ = _loc10_.regPoint.clone();
               if(var_699 == AvatarType.PET)
               {
                  _loc14_ = getCache().getBodyPartCache(_loc9_);
                  _loc15_ = _loc14_.getAction();
                  _loc16_ = _loc15_.definition.assetPartDefinition;
                  _loc17_ = var_54.getParts(_loc9_,var_312,_loc15_,"pet",_loc14_.getDirection(),[]);
                  _loc18_ = 32;
                  if(var_202 == AvatarScaleType.SMALL)
                  {
                     _loc18_ = 6;
                  }
                  if(_loc17_.length > 0)
                  {
                     _loc19_ = _loc17_[0];
                     _loc20_ = _loc19_.getFrameIndex(var_507);
                     _loc21_ = var_92;
                     _loc22_ = 1;
                     switch(var_92)
                     {
                        case 4:
                           _loc21_ = 2;
                           _loc22_ = -1;
                           break;
                        case 5:
                           _loc21_ = 1;
                           _loc22_ = -1;
                           break;
                        case 6:
                           _loc21_ = 0;
                           _loc22_ = -1;
                     }
                     _loc23_ = var_54.getPartActionOffset(getSubType(),var_202,_loc9_,_loc16_,_loc20_,_loc21_);
                     if(_loc23_ != null)
                     {
                        _loc12_.x += _loc23_.x * _loc22_;
                        _loc12_.y += _loc23_.y;
                        if(var_92 == 7 && _loc14_.getDirection() == 6)
                        {
                           _loc12_.offset(-1 * _loc18_,0);
                        }
                        else if(var_92 == 4 && _loc14_.getDirection() == 3)
                        {
                           _loc12_.offset(_loc18_,0);
                        }
                        else if(var_92 == 3 && _loc14_.getDirection() == 4)
                        {
                           _loc12_.offset(-1 * _loc18_,0);
                        }
                        else if(var_92 == 6 && _loc14_.getDirection() == 7)
                        {
                           _loc12_.offset(_loc18_,0);
                        }
                     }
                  }
               }
               _loc4_.copyPixels(_loc11_,_loc11_.rect,_loc12_,null,null,true);
               _loc13_ = new Rectangle(_loc12_.x,_loc12_.y,_loc11_.width,_loc11_.height);
               if(_loc6_ == null)
               {
                  _loc6_ = _loc13_;
               }
               else
               {
                  _loc6_ = _loc6_.union(_loc13_);
               }
            }
            _loc7_--;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new Rectangle(0,0,10,10);
         }
         var _loc8_:BitmapData = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
         _loc8_.copyPixels(_loc4_,_loc6_,new Point(0,0),null,null,true);
         _loc4_.dispose();
         return _loc8_;
      }
      
      public function getImage(param1:String, param2:Boolean) : BitmapData
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:int = 0;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(!var_311)
         {
            return null;
         }
         if(var_174 == null)
         {
            return null;
         }
         if(!var_867)
         {
            endActionAppends();
         }
         var _loc3_:AvatarImageCache = getCache();
         var _loc4_:AvatarCanvas = var_54.getCanvas(var_202,var_174.definition.geometryType);
         if(_image == null || _loc4_ != null && (_image.width != _loc4_.width || _image.height != _loc4_.height))
         {
            _loc4_ = var_54.getCanvas(var_202,var_174.definition.geometryType);
            if(_loc4_ == null)
            {
               return null;
            }
            _image = new BitmapData(_loc4_.width,_loc4_.height,true,16777215);
         }
         var _loc5_:Array = var_54.getBodyParts(param1,var_174.definition,var_92);
         _image.lock();
         _image.fillRect(_image.rect,16777215);
         var _loc6_:Point = _loc4_.offset;
         if(_loc6_ == null)
         {
            _loc6_ = new Point(0,0);
         }
         var _loc7_:int = _loc5_.length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc5_[_loc7_];
            _loc9_ = _loc3_.getImageContainer(_loc8_,var_507);
            if(_loc9_ && _loc9_.image && _loc9_.regPoint)
            {
               _loc10_ = _loc9_.image;
               _loc11_ = _loc9_.regPoint.clone();
               if(var_699 == AvatarType.PET)
               {
                  _loc12_ = getCache().getBodyPartCache(_loc8_);
                  _loc13_ = _loc12_.getAction();
                  _loc14_ = _loc13_.definition.assetPartDefinition;
                  _loc15_ = var_54.getParts(_loc8_,var_312,_loc13_,"pet",_loc12_.getDirection(),[]);
                  _loc16_ = var_1271 < 3;
                  _loc17_ = !!_loc16_ ? 32 : 67;
                  if(var_202 == AvatarScaleType.SMALL)
                  {
                     _loc17_ = !!_loc16_ ? 6 : 31;
                  }
                  if(_loc15_.length > 0)
                  {
                     _loc18_ = _loc15_[0];
                     _loc19_ = _loc18_.getFrameIndex(var_507);
                     _loc20_ = var_92;
                     _loc21_ = 1;
                     switch(var_92)
                     {
                        case 4:
                           _loc20_ = 2;
                           _loc21_ = -1;
                           break;
                        case 5:
                           _loc20_ = 1;
                           _loc21_ = -1;
                           break;
                        case 6:
                           _loc20_ = 0;
                           _loc21_ = -1;
                     }
                     _loc22_ = var_54.getPartActionOffset(getSubType(),var_202,_loc8_,_loc14_,_loc19_,_loc20_);
                     if(_loc22_ != null)
                     {
                        _loc11_.x += _loc22_.x * _loc21_;
                        _loc11_.y += _loc22_.y;
                        if(var_92 == 7 && _loc12_.getDirection() == 6)
                        {
                           _loc11_.offset(-1 * _loc17_,0);
                        }
                        else if(var_92 == 4 && _loc12_.getDirection() == 3)
                        {
                           _loc11_.offset(_loc17_,0);
                        }
                        else if(var_92 == 3 && _loc12_.getDirection() == 4)
                        {
                           _loc11_.offset(-1 * _loc17_,0);
                        }
                        else if(var_92 == 6 && _loc12_.getDirection() == 7)
                        {
                           _loc11_.offset(_loc17_,0);
                        }
                     }
                  }
               }
               _image.copyPixels(_loc10_,_loc10_.rect,_loc11_.add(_loc6_),null,null,true);
            }
            _loc7_--;
         }
         _image.unlock();
         var_311 = false;
         if(var_508 != null)
         {
            if(false)
            {
               _loc23_ = convertToGrayscale(_image);
               if(_image)
               {
                  _image.dispose();
               }
               _image = _loc23_;
               _image.paletteMap(_image,_image.rect,new Point(0,0),var_508.reds,[],[]);
            }
            else
            {
               _image.copyChannel(_image,_image.rect,new Point(0,0),2,8);
            }
         }
         if(_image && param2)
         {
            return _image.clone();
         }
         if(_image)
         {
            return _image;
         }
         return null;
      }
      
      private function solvePetAvatarTypeAndBreed(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_1053 = 0;
         var_1272 = 0;
         var _loc2_:ISetType = var_54.figureData.getSetType("pbd");
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getPartSet(param1);
            if(_loc3_ != null)
            {
               for each(_loc4_ in _loc3_.parts)
               {
                  if(_loc4_.type == "pbd")
                  {
                     var_1053 = _loc4_.id;
                     var_1272 = _loc4_.breed;
                     break;
                  }
               }
            }
         }
      }
      
      private function resetActions() : Boolean
      {
         var_170 = [];
         var_508 = null;
         var_1270 = 0;
         var_54.removeDynamicItems();
         var_174 = new ActiveActionData(AvatarAction.const_929);
         var_174.definition = var_54.getActionDefinition(const_1082);
         setActionToParts(var_174);
         getCache().resetBodyPartCache(var_174);
         return true;
      }
      
      public function updateAnimation(param1:Number) : void
      {
         var_507 = int(param1 % const_1084);
         var_311 = true;
      }
      
      public function updateAnimationByFrames(param1:int = 1) : void
      {
         var_507 += param1;
         var_311 = true;
      }
      
      public function setDirectionAngle(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param2 / 45;
         setDirection(param1,_loc3_);
      }
      
      private function errorThis(param1:String) : void
      {
         Logger.log("[AvatarImageError] " + param1);
      }
      
      private function getCache() : AvatarImageCache
      {
         if(var_132 == null)
         {
            var_132 = new AvatarImageCache(var_54,this,_assets,var_202);
         }
         return var_132;
      }
      
      private function setActionToParts(param1:IActiveActionData) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.definition.assetPartDefinition == "")
         {
            return;
         }
         if(param1.definition.isMain)
         {
            var_174 = param1;
            getCache().setGeometryType(param1.definition.geometryType);
         }
         getCache().setAction(param1);
         var_311 = true;
      }
      
      public function getDirection() : int
      {
         return var_92;
      }
      
      private function convertToGrayscale(param1:BitmapData, param2:String = "CHANNELS_EQUAL") : BitmapData
      {
         var _loc3_:* = 0.33;
         var _loc4_:* = 0.33;
         var _loc5_:* = 0.33;
         switch(param2)
         {
            case "CHANNELS_UNIQUE":
               _loc3_ = 0.3;
               _loc4_ = 0.59;
               _loc5_ = 0.11;
               break;
            case "CHANNELS_RED":
               _loc3_ = 1;
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case "CHANNELS_GREEN":
               _loc3_ = 0;
               _loc4_ = 1;
               _loc5_ = 0;
               break;
            case "CHANNELS_BLUE":
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 1;
               break;
            case "CHANNELS_DESATURATED":
               _loc3_ = 0.3086;
               _loc4_ = 0.6094;
               _loc5_ = 0.082;
         }
         var _loc7_:Array = [_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0];
         var _loc8_:ColorMatrixFilter = new ColorMatrixFilter(_loc7_);
         var _loc9_:BitmapData = new BitmapData(param1.width,param1.height,param1.transparent,4294967295);
         _loc9_.copyPixels(param1,param1.rect,new Point(0,0),null,null,false);
         _loc9_.applyFilter(_loc9_,_loc9_.rect,new Point(0,0),_loc8_);
         return _loc9_;
      }
      
      public function getFigure() : AvatarFigureContainer
      {
         return var_312;
      }
      
      public function getLayerData(param1:ISpriteDataContainer) : IAnimationLayerData
      {
         return var_54.getBodyPartData(param1.animation.id,var_507,param1.id);
      }
      
      public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_867 = false;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_587:
               switch(_loc3_)
               {
                  case "wav":
                     addActionData("wave");
                     break;
                  case AvatarAction.const_1388:
                     if(var_699 == AvatarType.const_80)
                     {
                        if(var_92 == 0)
                        {
                           setDirection(AvatarSetType.const_40,4);
                        }
                        else
                        {
                           setDirection(AvatarSetType.const_40,2);
                        }
                     }
                  case AvatarAction.const_819:
                  case AvatarAction.const_686:
                  case AvatarAction.const_965:
                  case AvatarAction.const_1353:
                  case AvatarAction.const_929:
                  case AvatarAction.const_953:
                  case AvatarAction.const_970:
                  case AvatarAction.const_1356:
                  case AvatarAction.const_1251:
                  case AvatarAction.const_1210:
                  case AvatarAction.const_1027:
                  case AvatarAction.const_930:
                  case AvatarAction.const_1321:
                  case AvatarAction.const_1300:
                  case AvatarAction.const_932:
                  case AvatarAction.const_972:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN POSTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_313:
               switch(_loc3_)
               {
                  case AvatarAction.const_825:
                  case AvatarAction.const_949:
                  case AvatarAction.const_638:
                  case AvatarAction.const_879:
                  case AvatarAction.const_541:
                  case AvatarAction.const_894:
                  case AvatarAction.const_856:
                  case AvatarAction.const_831:
                  case AvatarAction.const_988:
                  case AvatarAction.const_1004:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN GESTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_372:
            case AvatarAction.const_435:
            case AvatarAction.const_940:
            case AvatarAction.const_594:
            case AvatarAction.const_678:
            case AvatarAction.const_925:
               addActionData(param1,_loc3_);
               break;
            case AvatarAction.const_907:
            case AvatarAction.const_846:
               _loc4_ = var_54.getActionDefinitionWithState(param1);
               if(_loc4_ != null)
               {
                  logThis("appendAction:" + [_loc3_,"->",_loc4_.getParameterValue(_loc3_)]);
                  _loc3_ = _loc4_.getParameterValue(_loc3_);
               }
               addActionData(param1,_loc3_);
               break;
            default:
               errorThis("appendAction() >> UNKNOWN ACTION TYPE: " + param1);
         }
         return true;
      }
      
      public function get petType() : int
      {
         return var_1053;
      }
   }
}
