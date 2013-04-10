.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$PolicyThread;,
        Lcom/android/server/wm/WindowManagerService$WMThread;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;,
        Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;,
        Lcom/android/server/wm/WindowManagerService$AnimationRunnable;,
        Lcom/android/server/wm/WindowManagerService$LayoutFields;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_LAYOUT_REPEATS:Z = true

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_SURFACE_TRACE:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEBUG_WINDOW_TRACE:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_HEADLESS:Ljava/lang/String; = "ro.config.headless"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_ANIMATION_DECELERATE_FACTOR:F = 1.5f

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field final mAllowBootMessages:Z

.field private mAllowDisableKeyguard:I

.field mAltOrientation:Z

.field mAnimatingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimationRunnable:Lcom/android/server/wm/WindowManagerService$AnimationRunnable;

.field mAnimationScheduled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAnimatorDurationScale:F

.field mAppDisplayHeight:I

.field mAppDisplayWidth:I

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mChoreographer:Landroid/view/Choreographer;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurDisplayHeight:I

.field mCurDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mDeferredRotationPauseCount:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mDragState:Lcom/android/server/wm/DragState;

.field private mEventDispatchingEnabled:Z

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFakeWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/FakeWindowImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mForceDisplayEnabled:Z

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field final mFxSession:Landroid/view/SurfaceSession;

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field private final mHeadless:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field mIsTouchDevice:Z

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLargestDisplayHeight:I

.field mLargestDisplayWidth:I

.field mLastANRState:Ljava/lang/String;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field mLayoutNeeded:Z

.field private mLayoutRepeatCount:I

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field mNextAppTransitionDelayed:Z

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field mNextAppTransitionStartHeight:I

.field mNextAppTransitionStartWidth:I

.field mNextAppTransitionStartX:I

.field mNextAppTransitionStartY:I

.field mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field mNextAppTransitionType:I

.field final mOnlyCore:Z

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLayoutChanges:I

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field final mRelayoutWhileAnimating:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mSmallestDisplayHeight:I

.field mSmallestDisplayWidth:I

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field mSystemDecorLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTraversalScheduled:Z

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/os/IRemoteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"
    .parameter "onlyCore"

    .prologue
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    new-instance v3, Lcom/android/server/wm/WindowManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v5, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$LayoutFields;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$LayoutFields;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$AnimationRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/WindowManagerService$AnimationRunnable;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationRunnable:Lcom/android/server/wm/WindowManagerService$AnimationRunnable;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    new-instance v3, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    const-string v3, "1"

    const-string v4, "ro.config.headless"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mHeadless:Z

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, pmc:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "SCREEN_FROZEN"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "window_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "transition_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "animator_duration_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v3, 0x2000000a

    const-string v4, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v3, Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService$Callbacks;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v3, Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .local v2, thr:Lcom/android/server/wm/WindowManagerService$PolicyThread;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;->start()V

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-boolean v3, v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    new-instance v3, Landroid/view/SurfaceSession;

    invoke-direct {v3}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermark()V

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZLcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method private addAppTokenToAnimating(ILcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .parameter "addPos"
    .parameter "wtoken"

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .local v0, aboveAnchor:Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 28
    .parameter "win"
    .parameter "addToToken"

    .prologue
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v20, v0

    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .local v8, attached:Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_15

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    add-int/lit8 v12, v21, -0x1

    .local v12, index:I
    if-ltz v12, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    const/16 v21, 0x0

    .end local v12           #index:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v21           #tokenWindowsPos:I
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    if-eqz p2, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v7, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v7, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v16

    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    add-int/lit8 v26, v16, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .end local v7           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v16           #newIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, NA:I
    const/16 v17, 0x0

    .local v17, pos:Lcom/android/server/wm/WindowState;
    add-int/lit8 v11, v4, -0x1

    .local v11, i:I
    :goto_2
    if-ltz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .local v19, t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    add-int/lit8 v11, v11, -0x1

    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_6
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .local v7, atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_7

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, NC:I
    if-lez v5, :cond_7

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .local v9, bottom:Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_7

    move-object/from16 v17, v9

    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/wm/WindowState;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_0

    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .local v6, NW:I
    :cond_a
    add-int/lit8 v11, v11, -0x1

    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_b
    if-ltz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6       #NW:I
    if-lez v6, :cond_a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v6, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_c
    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .restart local v7       #atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_d

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5       #NC:I
    if-lez v5, :cond_d

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .local v22, top:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_d

    move-object/from16 v17, v22

    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/wm/WindowState;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_0

    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    :cond_e
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_f

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .local v23, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v15, :cond_10

    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_11
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .restart local v15       #myLayer:I
    add-int/lit8 v11, v3, -0x1

    .restart local v11       #i:I
    :goto_4
    if-ltz v11, :cond_12

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v0, v15, :cond_14

    add-int/lit8 v11, v11, 0x1

    :cond_12
    if-gez v11, :cond_13

    const/4 v11, 0x0

    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    :cond_15
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v18, v0

    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .local v25, windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v4, :cond_19

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v24, v0

    .local v24, wSublayer:I
    move/from16 v0, v24

    if-lt v0, v13, :cond_16

    move/from16 v13, v24

    move-object/from16 v25, v23

    :cond_16
    if-gez v18, :cond_1b

    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1d

    if-eqz p2, :cond_17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_17
    if-ltz v24, :cond_18

    move-object/from16 v23, v8

    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .end local v24           #wSublayer:I
    :cond_19
    :goto_6
    if-lt v11, v4, :cond_1

    if-eqz p2, :cond_1a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-gez v18, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    .restart local v24       #wSublayer:I
    :cond_1b
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_1d

    if-eqz p2, :cond_1c

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_6

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .end local v23           #w:Lcom/android/server/wm/WindowState;
    .end local v24           #wSublayer:I
    :cond_1e
    if-ltz v13, :cond_1f

    .end local v25           #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    .restart local v25       #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :cond_1f
    move-object/from16 v25, v8

    goto :goto_7
.end method

.method private adjustDisplaySizeRanges(III)V
    .locals 3
    .parameter "rotation"
    .parameter "dw"
    .parameter "dh"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p2, p3, p1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    .local v1, width:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    if-ge v1, v2, :cond_0

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    :cond_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayWidth:I

    if-le v1, v2, :cond_1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayWidth:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p2, p3, p1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v0

    .local v0, height:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayHeight:I

    if-ge v0, v2, :cond_2

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayHeight:I

    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayHeight:I

    if-le v0, v2, :cond_3

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayHeight:I

    :cond_3
    return-void
.end method

.method private animateAwayWallpaperLocked()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, changes:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .local v1, oldWallpaper:Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    or-int/lit8 v0, v0, 0x8

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v3, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    return v0
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .locals 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v3, 0x0

    .local v3, initialized:Z
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    if-ne v7, v5, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_0
    invoke-direct {p0, v7, v4}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, a:Landroid/view/animation/Animation;
    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;Z)V

    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v3           #initialized:Z
    :cond_0
    :goto_2
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_13

    :goto_3
    return v5

    .restart local v3       #initialized:Z
    :cond_1
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/WindowManagerService;->createScaleUpAnimationLocked(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    const/4 v3, 0x1

    goto :goto_1

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    if-ne v7, v4, :cond_6

    :cond_4
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    if-ne v7, v4, :cond_5

    move v2, v5

    .local v2, delayed:Z
    :goto_4
    invoke-direct {p0, p3, p4, v6, v2}, Lcom/android/server/wm/WindowManagerService;->createThumbnailAnimationLocked(IZZZ)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    const/4 v3, 0x1

    goto :goto_1

    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v2           #delayed:Z
    :cond_5
    move v2, v6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_0

    :goto_5
    if-eqz v1, :cond_11

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_6
    goto :goto_1

    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p4, :cond_7

    move v1, v4

    :goto_7
    goto :goto_5

    :cond_7
    const/4 v1, 0x5

    goto :goto_7

    :sswitch_1
    if-eqz p4, :cond_8

    const/4 v1, 0x6

    :goto_8
    goto :goto_5

    :cond_8
    const/4 v1, 0x7

    goto :goto_8

    :sswitch_2
    if-eqz p4, :cond_9

    const/16 v1, 0x8

    :goto_9
    goto :goto_5

    :cond_9
    const/16 v1, 0x9

    goto :goto_9

    :sswitch_3
    if-eqz p4, :cond_a

    const/16 v1, 0xa

    :goto_a
    goto :goto_5

    :cond_a
    const/16 v1, 0xb

    goto :goto_a

    :sswitch_4
    if-eqz p4, :cond_b

    const/16 v1, 0xc

    :goto_b
    goto :goto_5

    :cond_b
    const/16 v1, 0xd

    goto :goto_b

    :sswitch_5
    if-eqz p4, :cond_c

    const/16 v1, 0xe

    :goto_c
    goto :goto_5

    :cond_c
    const/16 v1, 0xf

    goto :goto_c

    :sswitch_6
    if-eqz p4, :cond_d

    const/16 v1, 0x10

    :goto_d
    goto :goto_5

    :cond_d
    const/16 v1, 0x11

    goto :goto_d

    :sswitch_7
    if-eqz p4, :cond_e

    const/16 v1, 0x12

    :goto_e
    goto :goto_5

    :cond_e
    const/16 v1, 0x13

    goto :goto_e

    :sswitch_8
    if-eqz p4, :cond_f

    const/16 v1, 0x14

    :goto_f
    goto :goto_5

    :cond_f
    const/16 v1, 0x15

    goto :goto_f

    :sswitch_9
    if-eqz p4, :cond_10

    const/16 v1, 0x16

    :goto_10
    goto :goto_5

    :cond_10
    const/16 v1, 0x17

    goto :goto_10

    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    .end local v1           #animAttr:I
    .end local v3           #initialized:Z
    :cond_12
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    goto/16 :goto_2

    :cond_13
    move v5, v6

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method private final assignLayersLocked()V
    .locals 10

    .prologue
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_9

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v7, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    const/4 v4, 0x0

    .local v4, layerChanged:Z
    iget v5, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    .local v5, oldLayer:I
    iget v8, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v8, v1, :cond_0

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_0

    if-lez v3, :cond_5

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_5

    :cond_0
    add-int/lit8 v2, v2, 0x5

    iput v2, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    :goto_1
    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-eq v8, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    iget v5, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_6

    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v9, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v9, v9, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :goto_2
    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_8

    iget v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_2
    :goto_3
    iget v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v8, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowAnimator;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v2, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    iput v2, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1

    :cond_6
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_7

    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v9, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v9, v9, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_2

    :cond_7
    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_2

    :cond_8
    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_3

    .end local v4           #layerChanged:Z
    .end local v5           #oldLayer:I
    .end local v6           #w:Lcom/android/server/wm/WindowState;
    .end local v7           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_9
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .parameter "w"

    .prologue
    const v2, 0x20008

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .local v0, fl:I
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .locals 12
    .parameter "rotated"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_0

    move/from16 v4, p4

    .local v4, unrotDw:I
    move v5, p3

    .local v5, unrotDh:I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .local v7, sw:I
    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    return v7

    .end local v4           #unrotDw:I
    .end local v5           #unrotDh:I
    .end local v7           #sw:I
    :cond_0
    move v4, p3

    .restart local v4       #unrotDw:I
    move/from16 v5, p4

    .restart local v5       #unrotDh:I
    goto :goto_0
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .local v4, result:Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, nextAppIndex:I
    if-ltz v2, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    move-object v1, v7

    .local v1, nextApp:Lcom/android/server/wm/WindowToken;
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v5, thisApp:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_2

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    move-object v1, v8

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    if-eq v5, v1, :cond_6

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    move v3, v2

    .local v3, origAppIndex:I
    :cond_3
    if-lez v2, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v7, :cond_4

    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :goto_2
    return-object v8

    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    if-ne v1, v5, :cond_3

    :cond_5
    if-eq v5, v1, :cond_6

    move v2, v3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_7
    move-object v8, v4

    goto :goto_2
.end method

.method private static computePivot(IF)F
    .locals 3
    .parameter "startPos"
    .parameter "finalScale"

    .prologue
    const/high16 v1, 0x3f80

    sub-float v0, p1, v1

    .local v0, denom:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    int-to-float v1, p0

    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private computeSizeRangesAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V
    .locals 13
    .parameter "rotated"
    .parameter "dw"
    .parameter "dh"
    .parameter "density"
    .parameter "outConfig"

    .prologue
    if-eqz p1, :cond_0

    move/from16 v5, p3

    .local v5, unrotDw:I
    move v6, p2

    .local v6, unrotDh:I
    :goto_0
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    const/high16 v1, 0x4000

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayHeight:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(III)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v6, v5}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(III)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(III)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v6, v5}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(III)V

    const/16 v2, 0x24

    .local v2, sl:I
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    const/4 v9, 0x1

    move-object v7, p0

    move v8, v2

    move/from16 v10, p4

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    const/4 v3, 0x2

    move-object v1, p0

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    const/4 v9, 0x3

    move-object v7, p0

    move v8, v2

    move/from16 v10, p4

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    int-to-float v1, v1

    div-float v1, v1, p4

    float-to-int v1, v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    return-void

    .end local v2           #sl:I
    .end local v5           #unrotDw:I
    .end local v6           #unrotDh:I
    :cond_0
    move v5, p2

    .restart local v5       #unrotDw:I
    move/from16 v6, p3

    .restart local v6       #unrotDh:I
    goto :goto_0
.end method

.method private createExitAnimationLocked(II)Landroid/view/animation/Animation;
    .locals 4
    .parameter "transit"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v2, 0x100e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x200f

    if-ne p1, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, a:Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v1, v0

    .end local v0           #a:Landroid/view/animation/Animation;
    .local v1, a:Ljava/lang/Object;
    :goto_0
    return-object v1

    .end local v1           #a:Ljava/lang/Object;
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v0       #a:Landroid/view/animation/Animation;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v1, v0

    .restart local v1       #a:Ljava/lang/Object;
    goto :goto_0
.end method

.method private createScaleUpAnimationLocked(IZ)Landroid/view/animation/Animation;
    .locals 13
    .parameter "transit"
    .parameter "enter"

    .prologue
    const/4 v12, 0x1

    const/high16 v2, 0x3f80

    sparse-switch p1, :sswitch_data_0

    const/16 v9, 0x12c

    .local v9, duration:I
    :goto_0
    if-eqz p2, :cond_0

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .local v1, scaleW:F
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .local v3, scaleH:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    invoke-static {v4, v1}, Lcom/android/server/wm/WindowManagerService;->computePivot(IF)F

    move-result v5

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->computePivot(IF)F

    move-result v6

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v0, scale:Landroid/view/animation/Animation;
    int-to-long v4, v9

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v11, set:Landroid/view/animation/AnimationSet;
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v8, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v8, alpha:Landroid/view/animation/Animation;
    int-to-long v4, v9

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    int-to-long v4, v9

    invoke-virtual {v8, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    move-object v7, v11

    .end local v0           #scale:Landroid/view/animation/Animation;
    .end local v1           #scaleW:F
    .end local v3           #scaleH:F
    .end local v8           #alpha:Landroid/view/animation/Animation;
    .end local v11           #set:Landroid/view/animation/AnimationSet;
    .local v7, a:Landroid/view/animation/Animation;
    :goto_1
    invoke-virtual {v7, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10c0003

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    .local v10, interpolator:Landroid/view/animation/Interpolator;
    invoke-virtual {v7, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v7

    .end local v7           #a:Landroid/view/animation/Animation;
    .end local v9           #duration:I
    .end local v10           #interpolator:Landroid/view/animation/Interpolator;
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .restart local v9       #duration:I
    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v9}, Lcom/android/server/wm/WindowManagerService;->createExitAnimationLocked(II)Landroid/view/animation/Animation;

    move-result-object v7

    .restart local v7       #a:Landroid/view/animation/Animation;
    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method private createThumbnailAnimationLocked(IZZZ)Landroid/view/animation/Animation;
    .locals 20
    .parameter "transit"
    .parameter "enter"
    .parameter "thumb"
    .parameter "delayed"

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .local v19, thumbWidthI:I
    if-lez v19, :cond_1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .local v18, thumbWidth:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .local v17, thumbHeightI:I
    if-lez v17, :cond_2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .local v16, thumbHeight:F
    :goto_1
    if-eqz p4, :cond_3

    const/16 v12, 0x10e

    .local v12, delayDuration:I
    :goto_2
    sparse-switch p1, :sswitch_data_0

    if-eqz p4, :cond_4

    const/16 v13, 0xfa

    .local v13, duration:I
    :goto_3
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    int-to-float v3, v3

    div-float v4, v3, v18

    .local v4, scaleW:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    int-to-float v3, v3

    div-float v6, v3, v16

    .local v6, scaleH:F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    const/high16 v8, 0x3f80

    div-float/2addr v8, v4

    invoke-static {v7, v8}, Lcom/android/server/wm/WindowManagerService;->computePivot(IF)F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    const/high16 v9, 0x3f80

    div-float/2addr v9, v6

    invoke-static {v8, v9}, Lcom/android/server/wm/WindowManagerService;->computePivot(IF)F

    move-result v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v2, scale:Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v15, set:Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v11, alpha:Landroid/view/animation/Animation;
    int-to-long v7, v13

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc0

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    int-to-long v7, v13

    invoke-virtual {v11, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    if-lez v12, :cond_0

    int-to-long v7, v12

    invoke-virtual {v15, v7, v8}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :cond_0
    move-object v10, v15

    .end local v2           #scale:Landroid/view/animation/Animation;
    .end local v4           #scaleW:F
    .end local v6           #scaleH:F
    .end local v11           #alpha:Landroid/view/animation/Animation;
    .end local v15           #set:Landroid/view/animation/AnimationSet;
    .local v10, a:Landroid/view/animation/Animation;
    :goto_4
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10c0001

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    .local v14, interpolator:Landroid/view/animation/Interpolator;
    invoke-virtual {v10, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v10, v3, v5, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v10

    .end local v10           #a:Landroid/view/animation/Animation;
    .end local v12           #delayDuration:I
    .end local v13           #duration:I
    .end local v14           #interpolator:Landroid/view/animation/Interpolator;
    .end local v16           #thumbHeight:F
    .end local v17           #thumbHeightI:I
    .end local v18           #thumbWidth:F
    :cond_1
    const/high16 v18, 0x3f80

    goto/16 :goto_0

    .restart local v17       #thumbHeightI:I
    .restart local v18       #thumbWidth:F
    :cond_2
    const/high16 v16, 0x3f80

    goto/16 :goto_1

    .restart local v16       #thumbHeight:F
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_2

    .restart local v12       #delayDuration:I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x10e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .restart local v13       #duration:I
    goto/16 :goto_3

    .end local v13           #duration:I
    :cond_4
    const/16 v13, 0x12c

    goto/16 :goto_3

    .restart local v13       #duration:I
    :cond_5
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    int-to-float v3, v3

    div-float v4, v18, v3

    .restart local v4       #scaleW:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    int-to-float v3, v3

    div-float v6, v16, v3

    .restart local v6       #scaleH:F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->computePivot(IF)F

    move-result v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    invoke-static {v3, v6}, Lcom/android/server/wm/WindowManagerService;->computePivot(IF)F

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2       #scale:Landroid/view/animation/Animation;
    int-to-long v7, v13

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc0

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    if-lez v12, :cond_6

    int-to-long v7, v12

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :cond_6
    move-object v10, v2

    .restart local v10       #a:Landroid/view/animation/Animation;
    goto/16 :goto_4

    .end local v2           #scale:Landroid/view/animation/Animation;
    .end local v4           #scaleW:F
    .end local v6           #scaleH:F
    .end local v10           #a:Landroid/view/animation/Animation;
    :cond_7
    if-eqz p4, :cond_8

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v10, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v10       #a:Landroid/view/animation/Animation;
    const-wide/16 v7, 0x0

    invoke-virtual {v10, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    add-int/lit8 v3, v12, -0x78

    int-to-long v7, v3

    invoke-virtual {v10, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    const/high16 v3, -0x100

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    goto/16 :goto_4

    .end local v10           #a:Landroid/view/animation/Animation;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/wm/WindowManagerService;->createExitAnimationLocked(II)Landroid/view/animation/Animation;

    move-result-object v10

    .restart local v10       #a:Landroid/view/animation/Animation;
    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .locals 7
    .parameter "win"

    .prologue
    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, jmax:I
    if-nez v1, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, wentry:Lcom/android/server/wm/WindowState;
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v3           #wentry:Lcom/android/server/wm/WindowState;
    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .locals 6
    .parameter "hashCode"

    .prologue
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, w:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_1

    monitor-exit v5

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    .restart local v3       #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findWindowOffsetLocked(I)I
    .locals 9
    .parameter "tokenPos"

    .prologue
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    move v2, v0

    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .local v5, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v2, 0x1

    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :goto_0
    return v7

    :cond_1
    :goto_1
    if-lez p1, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2       #i:I
    :cond_3
    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, j:I
    :cond_4
    if-lez v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v7, :cond_4

    add-int/lit8 v4, v0, -0x1

    .local v4, pos:I
    :goto_2
    if-ltz v4, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    .end local v4           #pos:I
    :cond_6
    add-int/lit8 v4, v0, -0x1

    .restart local v4       #pos:I
    :goto_3
    if-ltz v4, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .locals 2
    .parameter "updateInputWindows"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method static fixScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 p0, 0x41a0

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4
    .parameter "lp"

    .prologue
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .local v0, packageName:Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_0

    const-string v0, "android"

    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_1
    return-object v2

    :cond_1
    const-string v0, "android"

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 2
    .parameter "packageName"
    .parameter "resId"

    .prologue
    if-eqz p1, :cond_1

    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const-string p1, "android"

    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-object v0, p0, p1

    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0       #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .end local v0           #str:Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .local v1, val:I
    goto :goto_0
.end method

.method private handleAnimatingStoppedAndTransitionLocked()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, changes:I
    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    or-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v3, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    return v0
.end method

.method private handleNotObscuredLocked(Lcom/android/server/wm/WindowState;JII)V
    .locals 9
    .parameter "w"
    .parameter "currentTime"
    .parameter "innerDw"
    .parameter "innerDh"

    .prologue
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v0, attrFlags:I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    .local v2, canBeSeen:Z
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_4

    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v7, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v7}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v7}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v7, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v7}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v7}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v7, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    :cond_2
    if-eqz v2, :cond_4

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d8

    if-eq v7, v8, :cond_3

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-eq v7, v8, :cond_3

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7da

    if-ne v7, v8, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v7, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    .local v4, opaqueDrawn:Z
    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v7, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    :cond_5
    :goto_1
    return-void

    .end local v4           #opaqueDrawn:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4       #opaqueDrawn:Z
    :cond_7
    if-eqz v2, :cond_5

    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_5

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_8

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v7, :cond_5

    :cond_8
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v6, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowAnimator;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e5

    if-ne v7, v8, :cond_9

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .local v5, width:I
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .local v3, height:I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v8, v6, v7, v5, v3}, Lcom/android/server/wm/WindowAnimator;->startDimming(Lcom/android/server/wm/WindowStateAnimator;FII)V

    goto :goto_1

    .end local v3           #height:I
    .end local v5           #width:I
    :cond_9
    move v5, p4

    .restart local v5       #width:I
    move v3, p5

    .restart local v3       #height:I
    goto :goto_2

    :cond_a
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_3
.end method

.method private isSystemSecure()Z
    .locals 3

    .prologue
    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    move v0, p2

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static logSurface(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 3
    .parameter "s"
    .parameter "title"
    .parameter "msg"
    .parameter "where"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 3
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "allowBootMsgs"
    .parameter "onlyCore"

    .prologue
    new-instance v0, Lcom/android/server/wm/WindowManagerService$WMThread;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V

    .local v0, thr:Lcom/android/server/wm/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$WMThread;->start()V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .locals 3
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_2
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .local v3, token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .local v2, pos:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .restart local v3       #token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_3
    invoke-static {p0, p2}, Lcom/android/server/wm/WindowManagerService$Injector;->updateFocusAndLayout(Lcom/android/server/wm/WindowManagerService;I)Z

    move-result v4

    if-nez v4, :cond_miui_0

    return-void

    :cond_miui_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method private notifyFocusChanged()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v2

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyWindowsChanged()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v2

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const-wide/16 v11, 0x20

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v7, :cond_1

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_0

    const-string v7, "wmLayout"

    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const/4 v3, 0x0

    .local v3, recoveringMemory:Z
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, ws:Lcom/android/server/wm/WindowState;
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6           #ws:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    const-string v7, "WindowManager"

    const-string v8, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .local v4, tmp:Ljava/lang/Object;
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0xfa

    :try_start_1
    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :cond_3
    :goto_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    if-lez v0, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v7, v7

    if-ge v7, v0, :cond_4

    add-int/lit8 v7, v0, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v0, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v7, v2

    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0           #N:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v4       #tmp:Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while force removing for memory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_5
    const/4 v7, 0x0

    :try_start_6
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    const-wide/16 v7, 0x20

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    const-wide/16 v7, 0x20

    const-string v9, "wmLayout"

    invoke-static {v7, v8, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .end local v2           #i:I
    :goto_5
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    const/4 v8, 0x6

    if-ge v7, v8, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :goto_6
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v0           #N:I
    :cond_6
    :goto_7
    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService$Injector;->hideFloatingWindow(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .restart local v0       #N:I
    :cond_7
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .end local v0           #N:I
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while laying out windows"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    :cond_8
    :try_start_8
    const-string v7, "WindowManager"

    const-string v8, "Performed 6 layouts in a row. Skipping"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .end local v0           #N:I
    .restart local v2       #i:I
    .restart local v4       #tmp:Ljava/lang/Object;
    :catch_2
    move-exception v7

    goto/16 :goto_2
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .locals 35
    .parameter "recoveringMemory"

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    const-string v2, "WindowManager"

    const-string v8, "skipping performLayoutAndPlaceSurfacesLockedInner with no mDisplay"

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v21, v0

    .local v21, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v19, v0

    .local v19, dh:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .local v6, innerDw:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .local v7, innerDh:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .local v24, i:I
    :goto_1
    if-ltz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    add-int/lit8 v24, v24, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_2
    if-ltz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    add-int/lit8 v24, v24, -0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/high16 v8, -0x4080

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/high16 v8, -0x4080

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    :cond_5
    const/16 v28, 0x0

    .local v28, repeats:I
    :cond_6
    add-int/lit8 v28, v28, 0x1

    const/4 v2, 0x6

    move/from16 v0, v28

    if-le v0, v2, :cond_11

    :try_start_0
    const-string v2, "WindowManager"

    const-string v8, "Animation repeat aborted after too many iterations"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    const/16 v29, 0x1

    .local v29, someoneLosingFocus:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    const/16 v23, 0x0

    .local v23, focusDisplayed:Z
    const/16 v31, 0x0

    .local v31, updateAllDrawn:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, N:I
    add-int/lit8 v24, v15, -0x1

    :goto_5
    if-ltz v24, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v8

    if-eq v2, v8, :cond_22

    const/16 v27, 0x1

    .local v27, obscuredChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;JII)V

    :cond_7
    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    :cond_8
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v34, v0

    .local v34, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10a0068

    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v16

    .local v16, a:Landroid/view/animation/Animation;
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    move-object/from16 v0, v34

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    move-object/from16 v0, v34

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    .end local v16           #a:Landroid/view/animation/Animation;
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked(J)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v2, v8

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const-string v2, "updateWindowsAndWallpaperLocked 1"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_a
    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundaries(Z)V

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    .local v17, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_f

    :cond_b
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v8, v2

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_f

    :cond_d
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_f

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_f

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, v2, :cond_23

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_f

    :cond_e
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    const/16 v31, 0x1

    .end local v17           #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_f
    :goto_7
    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v3, v2, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v23, 0x1

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateResizingWindows(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_5

    .end local v3           #w:Lcom/android/server/wm/WindowState;
    .end local v15           #N:I
    .end local v23           #focusDisplayed:Z
    .end local v27           #obscuredChanged:Z
    .end local v29           #someoneLosingFocus:Z
    .end local v31           #updateAllDrawn:Z
    .end local v34           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_11
    const-string v2, "On entry to LockedInner"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_14
    const/4 v2, 0x4

    move/from16 v0, v28

    if-ge v0, v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_16

    const/4 v2, 0x1

    :goto_8
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)V

    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loop number "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_a
    if-ltz v24, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v8}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_15
    add-int/lit8 v24, v24, -0x1

    goto :goto_a

    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_16
    const/4 v2, 0x0

    goto :goto_8

    :cond_17
    const-string v2, "WindowManager"

    const-string v8, "Layout repeat skipped after too many iterations"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v22

    .local v22, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "WindowManager"

    const-string v8, "Unhandled exception in Window Manager"

    move-object/from16 v0, v22

    invoke-static {v2, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .end local v22           #e:Ljava/lang/RuntimeException;
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->handleAppTransitionReadyLocked()I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const-string v2, "after handleAppTransitionReadyLocked"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    iput v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const-string v2, "after handleAnimStopAndXitionLock"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->animateAwayWallpaperLocked()I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const-string v2, "after animateAwayWallpaperLocked"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_1c
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    iput v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const-string v2, "mLayoutNeeded"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_d
    if-ltz v24, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/wm/WindowState;

    .local v33, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v34, v0

    .restart local v34       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    const/16 v20, 0x0

    .local v20, diff:I
    :try_start_2
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v2, v8, :cond_29

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v20

    if-eqz v20, :cond_29

    :cond_1f
    const/16 v18, 0x1

    .local v18, configChanged:Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v33

    iput-object v2, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    float-to-int v9, v2

    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    float-to-int v10, v2

    move-object/from16 v0, v33

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_2a

    const/4 v13, 0x1

    :goto_f
    if-eqz v18, :cond_2b

    move-object/from16 v0, v33

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    :goto_10
    invoke-interface/range {v8 .. v14}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, v34

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18           #configChanged:Z
    :goto_11
    add-int/lit8 v24, v24, -0x1

    goto :goto_d

    .end local v20           #diff:I
    .end local v33           #win:Lcom/android/server/wm/WindowState;
    .end local v34           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_20
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    const-string v2, "after finishAnimationLw"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_21
    const/16 v29, 0x0

    goto/16 :goto_4

    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    .restart local v15       #N:I
    .restart local v23       #focusDisplayed:Z
    .restart local v29       #someoneLosingFocus:Z
    .restart local v31       #updateAllDrawn:Z
    :cond_22
    const/16 v27, 0x0

    goto/16 :goto_6

    .restart local v17       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v27       #obscuredChanged:Z
    .restart local v34       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_23
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7

    .end local v3           #w:Lcom/android/server/wm/WindowState;
    .end local v15           #N:I
    .end local v17           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v23           #focusDisplayed:Z
    .end local v27           #obscuredChanged:Z
    .end local v29           #someoneLosingFocus:Z
    .end local v31           #updateAllDrawn:Z
    .end local v34           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v2

    .restart local v15       #N:I
    .restart local v23       #focusDisplayed:Z
    .restart local v29       #someoneLosingFocus:Z
    .restart local v31       #updateAllDrawn:Z
    :cond_24
    if-eqz v31, :cond_25

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateAllDrawnLocked()V

    :cond_25
    if-eqz v23, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->stopDimming()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_27
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto/16 :goto_b

    .end local v15           #N:I
    .end local v23           #focusDisplayed:Z
    .end local v29           #someoneLosingFocus:Z
    .end local v31           #updateAllDrawn:Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    goto/16 :goto_c

    .restart local v20       #diff:I
    .restart local v33       #win:Lcom/android/server/wm/WindowState;
    .restart local v34       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_29
    const/16 v18, 0x0

    goto/16 :goto_e

    .restart local v18       #configChanged:Z
    :cond_2a
    const/4 v13, 0x0

    goto/16 :goto_f

    :cond_2b
    const/4 v14, 0x0

    goto/16 :goto_10

    .end local v18           #configChanged:Z
    :catch_1
    move-exception v22

    .local v22, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_11

    .end local v20           #diff:I
    .end local v22           #e:Landroid/os/RemoteException;
    .end local v33           #win:Lcom/android/server/wm/WindowState;
    .end local v34           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_2f
    const/16 v32, 0x0

    .local v32, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_33

    :cond_30
    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/wm/WindowState;

    .restart local v33       #win:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v33

    if-ne v2, v0, :cond_31

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v33

    if-ne v0, v2, :cond_32

    const/16 v32, 0x1

    :cond_32
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    if-gtz v24, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v33           #win:Lcom/android/server/wm/WindowState;
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_12
    if-ltz v24, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowToken;

    .local v30, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-ne v2, v8, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v24, v24, -0x1

    goto :goto_12

    .end local v30           #token:Lcom/android/server/wm/WindowToken;
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_13
    if-ltz v24, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .local v30, token:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_36
    add-int/lit8 v24, v24, -0x1

    goto :goto_13

    .end local v30           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .local v25, j:I
    :goto_14
    if-ltz v25, :cond_38

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->doneAnimating()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_15
    add-int/lit8 v25, v25, -0x1

    goto :goto_14

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v25           #j:I
    :cond_39
    if-eqz v32, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    :goto_16
    or-int/2addr v2, v8

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;

    move-result-object v2

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/high16 v8, 0x3f80

    cmpl-float v2, v2, v8

    if-lez v2, :cond_45

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/high16 v8, 0x3f80

    cmpl-float v2, v2, v8

    if-lez v2, :cond_46

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    :cond_3e
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v2, v8, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xc

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .local v26, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v26           #m:Landroid/os/Message;
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_41
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto/16 :goto_0

    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_44
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v8

    const/high16 v9, 0x437f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_18

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    #getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v8

    const/high16 v9, 0x437f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_19

    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$902(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    goto :goto_1a

    .restart local v25       #j:I
    :catch_2
    move-exception v2

    goto/16 :goto_15
.end method

.method private final performLayoutLockedInner(ZZ)V
    .locals 13
    .parameter "initial"
    .parameter "updateInputWindows"

    .prologue
    const/4 v12, 0x0

    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v12, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, NFW:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/FakeWindowImpl;

    invoke-virtual {v9, v3, v2}, Lcom/android/server/wm/FakeWindowImpl;->layout(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v10, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v9, v3, v2, v10}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(III)V

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-interface {v9, v10}, Landroid/view/WindowManagerPolicy;->getSystemDecorRectLw(Landroid/graphics/Rect;)I

    move-result v9

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .local v6, seq:I
    if-gez v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    const/4 v7, -0x1

    .local v7, topAttached:I
    add-int/lit8 v5, v0, -0x1

    :goto_2
    if-ltz v5, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .local v8, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    .local v4, gone:Z
    if-eqz v4, :cond_3

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v9, :cond_5

    :cond_3
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_6

    if-eqz p1, :cond_4

    iput-boolean v12, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_4
    iput-boolean v12, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_6
    if-gez v7, :cond_5

    move v7, v5

    goto :goto_3

    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_7
    move v5, v7

    :goto_4
    if-ltz v5, :cond_c

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .restart local v8       #win:Lcom/android/server/wm/WindowState;
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_b

    iget v9, v8, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_9

    :cond_8
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v9, :cond_b

    :cond_9
    if-eqz p1, :cond_a

    iput-boolean v12, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_a
    iput-boolean v12, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_c
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_d

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9, v12}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_d
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    goto/16 :goto_0
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .parameter "pos"
    .parameter "window"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "pos"
    .parameter "window"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .locals 6
    .parameter "index"
    .parameter "win"

    .prologue
    const/4 v5, 0x0

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NCW:I
    const/4 v1, 0x0

    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, cwin:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v4, :cond_0

    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x1

    :cond_0
    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #cwin:Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v1, :cond_2

    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, wpos:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    :cond_0
    return-void
.end method

.method private readForcedDisplaySizeLocked()V
    .locals 8

    .prologue
    const/16 v7, 0x2c

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, pos:I
    if-lez v2, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, height:I
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    goto :goto_0

    .end local v1           #height:I
    .end local v4           #width:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private rebuildBlackFrame()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v8}, Lcom/android/server/wm/BlackFrame;->kill()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    :cond_0
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-lt v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v8, v9, :cond_3

    :cond_1
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v8, v6, :cond_2

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .local v6, rotated:Z
    :cond_2
    :goto_0
    if-eqz v6, :cond_5

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .local v3, initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .local v2, initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .local v1, baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .local v0, baseH:I
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v5, outer:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, inner:Landroid/graphics/Rect;
    :try_start_0
    new-instance v7, Lcom/android/server/wm/BlackFrame;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const v9, 0x1e8480

    invoke-direct {v7, v8, v5, v4, v9}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v4           #inner:Landroid/graphics/Rect;
    .end local v5           #outer:Landroid/graphics/Rect;
    .end local v6           #rotated:Z
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v6, v7

    goto :goto_0

    .restart local v6       #rotated:Z
    :cond_5
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .restart local v3       #initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .restart local v2       #initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .restart local v1       #baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .restart local v0       #baseH:I
    goto :goto_1

    .restart local v4       #inner:Landroid/graphics/Rect;
    .restart local v5       #outer:Landroid/graphics/Rect;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .locals 4
    .parameter "curSize"
    .parameter "rotation"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .local v0, scale:F
    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .local v1, size:I
    if-eqz p1, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFII)I
    .locals 13
    .parameter "curLayout"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    .local v10, w:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v3

    .local v3, h:I
    move v4, v10

    .local v4, longSize:I
    move v8, v3

    .local v8, shortSize:I
    if-ge v4, v8, :cond_0

    move v9, v4

    .local v9, tmp:I
    move v4, v8

    move v8, v9

    .end local v9           #tmp:I
    :cond_0
    int-to-float v11, v4

    div-float v11, v11, p3

    float-to-int v4, v11

    int-to-float v11, v8

    div-float v11, v11, p3

    float-to-int v8, v11

    const/16 v11, 0x1d6

    if-ge v4, v11, :cond_4

    const/4 v7, 0x1

    .local v7, screenLayoutSize:I
    const/4 v6, 0x0

    .local v6, screenLayoutLong:Z
    const/4 v5, 0x0

    .local v5, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v6, :cond_1

    and-int/lit8 v11, p1, -0x31

    or-int/lit8 p1, v11, 0x10

    :cond_1
    if-eqz v5, :cond_2

    const/high16 v11, 0x1000

    or-int/2addr p1, v11

    :cond_2
    and-int/lit8 v2, p1, 0xf

    .local v2, curSize:I
    if-ge v7, v2, :cond_3

    and-int/lit8 v11, p1, -0x10

    or-int p1, v11, v7

    :cond_3
    return p1

    .end local v2           #curSize:I
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_4
    const/16 v11, 0x3c0

    if-lt v4, v11, :cond_6

    const/16 v11, 0x2d0

    if-lt v8, v11, :cond_6

    const/4 v7, 0x4

    .restart local v7       #screenLayoutSize:I
    :goto_1
    const/16 v11, 0x141

    if-gt v8, v11, :cond_5

    const/16 v11, 0x23a

    if-le v4, v11, :cond_8

    :cond_5
    const/4 v5, 0x1

    .restart local v5       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v11, v4, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v12, v8, -0x1

    if-lt v11, v12, :cond_9

    const/4 v6, 0x1

    .restart local v6       #screenLayoutLong:Z
    goto :goto_0

    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_6
    const/16 v11, 0x280

    if-lt v4, v11, :cond_7

    const/16 v11, 0x1e0

    if-lt v8, v11, :cond_7

    const/4 v7, 0x3

    .restart local v7       #screenLayoutSize:I
    goto :goto_1

    .end local v7           #screenLayoutSize:I
    :cond_7
    const/4 v7, 0x2

    .restart local v7       #screenLayoutSize:I
    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    .restart local v5       #screenLayoutCompatNeeded:Z
    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    .restart local v6       #screenLayoutLong:Z
    goto :goto_0
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .local v1, cwin:Lcom/android/server/wm/WindowState;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_1
    iput-boolean v8, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_9

    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_3
    :goto_2
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_b

    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    :cond_6
    :goto_4
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_d

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    :cond_7
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_0

    .end local v0           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_9
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .restart local v0       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    :cond_a
    if-eqz v0, :cond_5

    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_3

    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_c

    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_4

    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .end local v3           #m:Landroid/os/Message;
    :cond_d
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_5
.end method

.method private scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendScreenStatusToClientsLocked()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v4, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    .local v2, on:Z
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, win:Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5, v2}, Landroid/view/IWindow;->dispatchScreenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3           #win:Lcom/android/server/wm/WindowState;
    :cond_0
    return-void

    .restart local v3       #win:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setForcedDisplaySizeLocked(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-interface {v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(Landroid/view/Display;II)V

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void

    .end local v0           #configChanged:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private shouldAllowDisableKeyguard()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    move v1, v3

    goto :goto_0

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private showStrictModeViolation(I)V
    .locals 9
    .parameter "arg"

    .prologue
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .local v2, on:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .local v3, pid:I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .local v1, isVisible:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, ws:Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    if-ne v5, v3, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .end local v4           #ws:Lcom/android/server/wm/WindowState;
    :cond_0
    if-nez v1, :cond_3

    monitor-exit v6

    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :goto_2
    return-void

    .end local v2           #on:Z
    .end local v3           #pid:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #on:Z
    .restart local v3       #pid:I
    .restart local v4       #ws:Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v4           #ws:Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v5, :cond_4

    new-instance v5, Lcom/android/server/wm/StrictModeFlash;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v7, v8}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private startFreezingDisplayLocked(Z)V
    .locals 9
    .parameter "inTransaction"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v2, :cond_2

    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v6

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V

    iput-object v0, v7, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0
.end method

.method private stopFreezingDisplayLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xf

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    const/4 v8, 0x0

    .local v8, updateRotation:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v2, 0x2710

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFII)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :goto_1
    invoke-static {v9}, Landroid/view/Surface;->unfreezeDisplay(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .local v7, configChanged:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v8, :cond_2

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    or-int/2addr v7, v0

    :cond_2
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v7           #configChanged:Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v11, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v11, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_5
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NW:I
    if-lez v0, :cond_0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, win:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, j:I
    :goto_1
    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    if-lez v0, :cond_3

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .locals 5
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, wpos:I
    if-ltz v3, :cond_3

    if-ge v3, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NC:I
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, cw:Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, cpos:I
    if-ltz v1, :cond_1

    if-ge v1, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/wm/WindowState;
    :cond_3
    return p1
.end method

.method private updateAllDrawnLocked()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .local v1, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NT:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_0

    iget v3, v4, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .local v3, numInteresting:I
    if-lez v3, :cond_0

    iget v5, v4, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-lt v5, v3, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .end local v3           #numInteresting:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .locals 11
    .parameter "mode"
    .parameter "updateInputWindows"

    .prologue
    const-wide/16 v9, 0x20

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, newFocus:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v6, v2, :cond_6

    const-string v6, "wmUpdateFocus"

    invoke-static {v9, v10, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .local v3, oldFocus:Lcom/android/server/wm/WindowState;
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowAnimator;->setCurrentFocus(Lcom/android/server/wm/WindowState;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .local v0, focusChanged:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .local v1, imWindow:Lcom/android/server/wm/WindowState;
    if-eq v2, v1, :cond_2

    if-eq v3, v1, :cond_2

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_1
    if-ne p1, v7, :cond_5

    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)V

    and-int/lit8 v0, v0, -0x2

    :cond_2
    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-ne p1, v7, :cond_3

    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)V

    :cond_3
    if-eq p1, v5, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    :cond_4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :goto_1
    return v5

    .restart local v0       #focusChanged:I
    .restart local v1       #imWindow:Lcom/android/server/wm/WindowState;
    .restart local v3       #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_5
    if-ne p1, v8, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    goto :goto_0

    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_6
    move v5, v4

    goto :goto_1
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 6
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    new-instance v0, Landroid/content/res/Configuration;

    .end local v0           #config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_0
.end method

.method private updateResizingWindows(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .parameter "w"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v1, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_3

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    if-ne v2, v5, :cond_3

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    or-int/2addr v2, v5

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    or-int/2addr v2, v5

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v2, v5, :cond_6

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move v0, v3

    .local v0, configChanged:Z
    :goto_2
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_2

    iput v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0           #configChanged:Z
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2

    .restart local v0       #configChanged:Z
    :cond_7
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_3
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .locals 8
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .local v1, inputDispatchingTimeoutNanos:J
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_1

    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Could not get dispatching timeout."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/wm/AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput p3, v3, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iput-boolean p5, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    iput p4, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService;->addAppTokenToAnimating(ILcom/android/server/wm/AppWindowToken;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    monitor-exit v5

    goto :goto_1

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
    .locals 12
    .parameter "looper"
    .parameter "inputEventReceiverFactory"
    .parameter "name"
    .parameter "windowType"
    .parameter "layoutParamsFlags"
    .parameter "canReceiveKeys"
    .parameter "hasFocus"
    .parameter "touchFullscreen"

    .prologue
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    new-instance v0, Lcom/android/server/wm/FakeWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/FakeWindowImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)V

    .local v0, fw:Lcom/android/server/wm/FakeWindowImpl;
    const/4 v10, 0x0

    .local v10, i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FakeWindowImpl;

    iget v1, v1, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget v2, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    if-gt v1, v2, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v11

    return-object v0

    .end local v0           #fw:Lcom/android/server/wm/FakeWindowImpl;
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .local v0, pos:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_0
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 23
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .local v20, res:I
    if-eqz v20, :cond_0

    move/from16 v3, v20

    :goto_0
    return v3

    :cond_0
    const/16 v19, 0x0

    .local v19, reportNewConfig:Z
    const/4 v7, 0x0

    .local v7, attachedWindow:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .local v21, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Display has not been initialialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v2, v21

    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .local v2, win:Lcom/android/server/wm/WindowState;
    :goto_1
    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x5

    monitor-exit v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is not a window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_0

    :cond_3
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    .local v11, addToken:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .local v6, token:Lcom/android/server/wm/WindowToken;
    if-nez v6, :cond_a

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_5

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_5

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add application window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_7

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_8

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add Dream window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_8
    new-instance v6, Lcom/android/server/wm/WindowToken;

    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    const/4 v11, 0x1

    :cond_9
    new-instance v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v3, :cond_10

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is dead, aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #addToken:Z
    :catchall_1
    move-exception v3

    goto/16 :goto_1

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #addToken:Z
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_a
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_d

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_d

    iget-object v12, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .local v12, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v12, :cond_b

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with non-application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    monitor-exit v22

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_c

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with exiting application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    monitor-exit v22

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_9

    const/4 v3, -0x6

    monitor-exit v22

    goto/16 :goto_0

    .end local v12           #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_d
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_e

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_9

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_f

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7dd

    if-eq v3, v4, :cond_9

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_9

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7e7

    if-eq v3, v4, :cond_9

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add Dream window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    if-eqz v20, :cond_11

    monitor-exit v22

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_11
    if-eqz p7, :cond_12

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_12

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v16

    .local v16, name:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v15

    .local v15, inputChannels:[Landroid/view/InputChannel;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setInputChannel(Landroid/view/InputChannel;)V

    const/4 v3, 0x1

    aget-object v3, v15, v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .end local v15           #inputChannels:[Landroid/view/InputChannel;
    .end local v16           #name:Ljava/lang/String;
    :cond_12
    const/16 v20, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .local v17, origId:J
    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->attach()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_14

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    :cond_14
    const/4 v14, 0x1

    .local v14, imMayMove:Z
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v14, 0x0

    :cond_15
    :goto_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_16

    or-int/lit8 v20, v20, 0x1

    :cond_16
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_17

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_18

    :cond_17
    or-int/lit8 v20, v20, 0x2

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v13, 0x0

    .local v13, focusChanged:Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    if-eqz v13, :cond_19

    const/4 v14, 0x0

    :cond_19
    if-eqz v14, :cond_1a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    if-eqz v13, :cond_1b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v19, 0x1

    :cond_1c
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v19, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_1d
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v20

    goto/16 :goto_0

    .end local v13           #focusChanged:Z
    :cond_1e
    :try_start_6
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustInputMethodDialogsLocked()V

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_1f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_20

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "type"

    .prologue
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/server/wm/WindowToken;

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .restart local v0       #wtoken:Lcom/android/server/wm/WindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7dd

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method adjustInputMethodDialogsLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .locals 32

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/4 v4, 0x0

    .local v4, changed:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .local v8, dw:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .local v7, dh:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v13, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    const/16 v25, 0x0

    .local v25, w:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .local v11, foundW:Lcom/android/server/wm/WindowState;
    const/4 v10, 0x0

    .local v10, foundI:I
    const/16 v22, 0x0

    .local v22, topCurW:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .local v21, topCurI:I
    const/16 v28, -0x1

    .local v28, windowDetachedI:I
    move v12, v3

    .local v12, i:I
    :cond_0
    :goto_0
    if-lez v12, :cond_4

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #w:Lcom/android/server/wm/WindowState;
    check-cast v25, Lcom/android/server/wm/WindowState;

    .restart local v25       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x7dd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    if-nez v22, :cond_0

    move-object/from16 v22, v25

    move/from16 v21, v12

    goto :goto_0

    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    :cond_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v30, 0x10

    and-int v29, v29, v30

    if-eqz v29, :cond_6

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v29

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v29

    if-eqz v29, :cond_6

    :cond_3
    move-object/from16 v11, v25

    move v10, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v29

    if-nez v29, :cond_0

    :cond_4
    if-nez v11, :cond_5

    if-ltz v28, :cond_5

    move-object/from16 v11, v25

    move/from16 v10, v28

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    const/16 v29, 0x0

    :goto_1
    return v29

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    move/from16 v28, v12

    goto/16 :goto_0

    :cond_7
    if-eqz v11, :cond_8

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    const/16 v29, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_17

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .local v19, oldW:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_b

    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    :cond_9
    const/16 v16, 0x1

    .local v16, oldAnim:Z
    :goto_2
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_a

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    :cond_a
    const/4 v9, 0x1

    .local v9, foundAnim:Z
    :goto_3
    if-eqz v9, :cond_b

    if-eqz v16, :cond_b

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .local v17, oldI:I
    if-ltz v17, :cond_b

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v29, v0

    if-eqz v29, :cond_15

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v19

    move/from16 v10, v17

    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_b
    :goto_4
    if-eqz v11, :cond_1d

    const/16 v24, 0x1

    .local v24, visible:Z
    :goto_5
    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_1e

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1e

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    move/from16 v29, v0

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v29

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v15, v0, 0x3e8

    .local v15, maxLayer:I
    :goto_7
    if-lez v10, :cond_d

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    .local v27, wb:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v15, :cond_1f

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_1f

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1f

    :cond_c
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1f

    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_d
    if-nez v11, :cond_20

    if-eqz v22, :cond_20

    move-object/from16 v11, v22

    add-int/lit8 v10, v21, 0x1

    :goto_8
    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, curTokenIndex:I
    :cond_10
    if-lez v5, :cond_26

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowToken;

    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    or-int/lit8 v4, v4, 0x4

    if-nez v24, :cond_22

    const/16 v29, 0x1

    :goto_9
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_11
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, curWallpaperIndex:I
    :goto_a
    if-lez v6, :cond_10

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .local v26, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_12

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v8, v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, v26

    if-ne v0, v11, :cond_24

    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_23

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    :goto_b
    goto :goto_a

    .end local v5           #curTokenIndex:I
    .end local v6           #curWallpaperIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v24           #visible:Z
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    .restart local v19       #oldW:Lcom/android/server/wm/WindowState;
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_2

    .restart local v16       #oldAnim:Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .restart local v9       #foundAnim:Z
    .restart local v17       #oldI:I
    :cond_15
    move/from16 v0, v17

    if-le v10, v0, :cond_16

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v19

    move/from16 v10, v17

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_4

    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b

    :cond_18
    const/4 v14, 0x1

    .local v14, lowerAnimating:Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    :cond_19
    const/16 v23, 0x1

    .local v23, upperAnimating:Z
    :goto_d
    if-eqz v14, :cond_1a

    if-nez v23, :cond_b

    :cond_1a
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_4

    .end local v14           #lowerAnimating:Z
    .end local v23           #upperAnimating:Z
    :cond_1b
    const/4 v14, 0x0

    goto :goto_c

    .restart local v14       #lowerAnimating:Z
    :cond_1c
    const/16 v23, 0x0

    goto :goto_d

    .end local v14           #lowerAnimating:Z
    :cond_1d
    const/16 v24, 0x0

    goto/16 :goto_5

    .restart local v24       #visible:Z
    :cond_1e
    const/16 v29, 0x0

    goto/16 :goto_6

    .restart local v15       #maxLayer:I
    .restart local v27       #wb:Lcom/android/server/wm/WindowState;
    :cond_1f
    move-object/from16 v11, v27

    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_7

    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_20
    if-lez v10, :cond_21

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    :goto_e
    goto/16 :goto_8

    :cond_21
    const/4 v11, 0x0

    goto :goto_e

    .restart local v5       #curTokenIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    :cond_22
    const/16 v29, 0x0

    goto/16 :goto_9

    .restart local v6       #curWallpaperIndex:I
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_23
    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_24
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .local v18, oldIndex:I
    if-ltz v18, :cond_25

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    move/from16 v0, v18

    if-ge v0, v10, :cond_25

    add-int/lit8 v10, v10, -0x1

    :cond_25
    move-object/from16 v0, v26

    invoke-virtual {v13, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    or-int/lit8 v4, v4, 0x2

    goto/16 :goto_a

    .end local v6           #curWallpaperIndex:I
    .end local v18           #oldIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_26
    move/from16 v29, v4

    goto/16 :goto_1
.end method

.method bulkSetParameters(II)V
    .locals 3
    .parameter "bulkUpdateParams"
    .parameter "pendingLayoutChanges"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkDrawnWindowsLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x18

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, j:I
    :goto_0
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, win:Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    .end local v0           #j:I
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void

    .restart local v0       #j:I
    .restart local v1       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public clearForcedDisplaySize()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_size_forced"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .local v1, w:Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_2
    monitor-exit v3

    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method computeForcedAppOrientationLocked()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    :cond_0
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_0
    monitor-exit v2

    return-object v0

    .end local v0           #config:Landroid/content/res/Configuration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .local v0, config:Landroid/content/res/Configuration;
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    return-object v0
.end method

.method computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z
    .locals 29
    .parameter "config"

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    :cond_1
    const/4 v4, 0x1

    .local v4, rotated:Z
    :goto_1
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    move/from16 v24, v0

    .local v24, realdw:I
    :goto_2
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    move/from16 v23, v0

    .local v23, realdh:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eqz v3, :cond_c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    move/from16 v0, v23

    int-to-float v3, v0

    const v8, 0x3fa66666

    div-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v19, v0

    .local v19, maxw:I
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .end local v19           #maxw:I
    :cond_2
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .local v5, dw:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .local v6, dh:I
    if-eqz p1, :cond_4

    const/16 v21, 0x3

    .local v21, orientation:I
    if-ge v5, v6, :cond_d

    const/16 v21, 0x1

    :cond_3
    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .end local v21           #orientation:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v3, v7, v8, v0}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .local v13, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    .local v10, appWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v9

    .local v9, appHeight:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v3, v8, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setDisplayDimensions(IIII)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v3, v13, v7, v8}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v13, v3}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v3

    int-to-float v3, v3

    iget v7, v13, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v3

    int-to-float v3, v3

    iget v7, v13, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v13, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->computeSizeRangesAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v5, v6}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/16 v16, 0x0

    .local v16, keyboardPresence:I
    const/16 v20, 0x0

    .local v20, navigationPresence:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v12

    .local v12, devices:[Landroid/view/InputDevice;
    array-length v0, v12

    move/from16 v17, v0

    .local v17, len:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    aget-object v11, v12, v15

    .local v11, device:Landroid/view/InputDevice;
    invoke-virtual {v11}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v11}, Landroid/view/InputDevice;->getSources()I

    move-result v25

    .local v25, sources:I
    invoke-virtual {v11}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v22, 0x2

    .local v22, presenceFlag:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v3, :cond_f

    move/from16 v0, v25

    and-int/lit16 v3, v0, 0x1002

    const/16 v7, 0x1002

    if-ne v3, v7, :cond_5

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_5
    :goto_8
    const v3, 0x10004

    and-int v3, v3, v25

    const v7, 0x10004

    if-ne v3, v7, :cond_10

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int v20, v20, v22

    :cond_6
    :goto_9
    invoke-virtual {v11}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    or-int v16, v16, v22

    .end local v22           #presenceFlag:I
    .end local v25           #sources:I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .end local v4           #rotated:Z
    .end local v5           #dw:I
    .end local v6           #dh:I
    .end local v9           #appHeight:I
    .end local v10           #appWidth:I
    .end local v11           #device:Landroid/view/InputDevice;
    .end local v12           #devices:[Landroid/view/InputDevice;
    .end local v13           #dm:Landroid/util/DisplayMetrics;
    .end local v15           #i:I
    .end local v16           #keyboardPresence:I
    .end local v17           #len:I
    .end local v20           #navigationPresence:I
    .end local v23           #realdh:I
    .end local v24           #realdw:I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .restart local v4       #rotated:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    move/from16 v24, v0

    goto/16 :goto_2

    .restart local v24       #realdw:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    move/from16 v23, v0

    goto/16 :goto_3

    .restart local v23       #realdh:I
    :cond_b
    move/from16 v0, v24

    int-to-float v3, v0

    const v8, 0x3fa66666

    div-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v18, v0

    .local v18, maxh:I
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    :try_start_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_4

    .end local v18           #maxh:I
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_c
    :try_start_3
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .restart local v5       #dw:I
    .restart local v6       #dh:I
    .restart local v21       #orientation:I
    :cond_d
    if-le v5, v6, :cond_3

    const/16 v21, 0x2

    goto/16 :goto_5

    .end local v21           #orientation:I
    .restart local v9       #appHeight:I
    .restart local v10       #appWidth:I
    .restart local v13       #dm:Landroid/util/DisplayMetrics;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .restart local v11       #device:Landroid/view/InputDevice;
    .restart local v12       #devices:[Landroid/view/InputDevice;
    .restart local v15       #i:I
    .restart local v16       #keyboardPresence:I
    .restart local v17       #len:I
    .restart local v20       #navigationPresence:I
    .restart local v25       #sources:I
    :cond_e
    const/16 v22, 0x1

    goto :goto_7

    .restart local v22       #presenceFlag:I
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_8

    :cond_10
    move/from16 v0, v25

    and-int/lit16 v3, v0, 0x201

    const/16 v7, 0x201

    if-ne v3, v7, :cond_6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_6

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int v20, v20, v22

    goto :goto_9

    .end local v11           #device:Landroid/view/InputDevice;
    .end local v22           #presenceFlag:I
    .end local v25           #sources:I
    :cond_11
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_15

    const/4 v14, 0x1

    .local v14, hardKeyboardAvailable:Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v14, v3, :cond_12

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x16

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x16

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-nez v3, :cond_13

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigationHidden:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .end local v12           #devices:[Landroid/view/InputDevice;
    .end local v14           #hardKeyboardAvailable:Z
    .end local v15           #i:I
    .end local v16           #keyboardPresence:I
    .end local v17           #len:I
    .end local v20           #navigationPresence:I
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_0

    .restart local v12       #devices:[Landroid/view/InputDevice;
    .restart local v15       #i:I
    .restart local v16       #keyboardPresence:I
    .restart local v17       #len:I
    .restart local v20       #navigationPresence:I
    :cond_15
    const/4 v14, 0x0

    goto :goto_a
.end method

.method createWatermark()V
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/server/wm/Watermark;-><init>(Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v5           #toks:[Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v6

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_4
    throw v6

    :catch_5
    move-exception v7

    goto :goto_4

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "pendingLayoutChanges"

    .prologue
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public detectSafeMode()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v11, -0x100

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "WindowManager"

    const-string v8, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x52

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v1

    .local v1, menuState:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x2f

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v2

    .local v2, sState:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x201

    const/16 v9, 0x17

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v0

    .local v0, dpadState:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v8, 0x10004

    const/16 v9, 0x110

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v3

    .local v3, trackballState:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x19

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v4

    .local v4, volumeDownState:I
    if-gtz v1, :cond_1

    if-gtz v2, :cond_1

    if-gtz v0, :cond_1

    if-gtz v3, :cond_1

    if-lez v4, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    :try_start_0
    const-string v5, "persist.sys.safemode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    const-string v5, "persist.sys.safemode"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v5, :cond_4

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trackball="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->setSafeMode(Z)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v5

    :cond_4
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "tag"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismissKeyguard()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .parameter "wallpaper"
    .parameter "visible"

    .prologue
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public displayReady()V
    .locals 10

    .prologue
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .local v6, rot:I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_1

    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    :cond_1
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .local v7, tmp:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .end local v7           #tmp:I
    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wm/WindowAnimator;->setDisplayDimensions(IIII)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->setDisplaySize(IIIII)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getExternalRotation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->setDisplayOrientation(III)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(Landroid/view/Display;II)V

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeLocked()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    .end local v6           #rot:I
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v6       #rot:I
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    .local v5, dumpAll:Z
    const/4 v4, 0x0

    .local v4, opti:I
    :goto_1
    array-length v0, p3

    if-ge v4, v0, :cond_2

    aget-object v6, p3, v4

    .local v6, opt:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    .end local v6           #opt:Ljava/lang/String;
    :cond_2
    array-length v0, p3

    if-ge v4, v0, :cond_12

    aget-object v2, p3, v4

    .local v2, cmd:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    const-string v0, "lastanr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .end local v2           #cmd:Ljava/lang/String;
    .restart local v6       #opt:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    const-string v0, "-a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "-h"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #opt:Ljava/lang/String;
    .restart local v2       #cmd:Ljava/lang/String;
    :cond_7
    const-string v0, "policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_9
    const-string v0, "sessions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_b
    const-string v0, "tokens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_d
    const-string v0, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "w"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :cond_f
    const-string v0, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :cond_11
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #cmd:Ljava/lang/String;
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_13

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_14

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_15

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_16

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_17

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0
.end method

.method dumpAnimatingAppTokensLocked()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpAppTokensLocked()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2
    .parameter "pw"
    .parameter "args"
    .parameter "dumpAll"

    .prologue
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .locals 3
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    const-string v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .local v1, s:Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    .end local v1           #s:Lcom/android/server/wm/Session;
    :cond_0
    return-void
.end method

.method dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .locals 7
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x3a

    const-string v3, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "  All tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .local v2, token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Token "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Wallpaper tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Wallpaper #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Application tokens in Z order:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_3
    if-ltz v0, :cond_4

    const-string v3, "  App #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Finishing start of application tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_4
    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Finished Starting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_5

    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Exiting tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_6
    if-ltz v0, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_8
    if-ltz v0, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_9

    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Application tokens during animation:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_a
    if-ltz v0, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  App moving to bottom #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_b

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_b

    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    :cond_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "  mOpeningApps="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    const-string v3, "  mClosingApps="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 6
    .parameter "pw"
    .parameter "name"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v4, "visible"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    return v4

    .end local v0           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    const/4 v1, 0x0

    .local v1, objectId:I
    const/16 v4, 0x10

    :try_start_2
    invoke-static {p2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    const/4 p2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0       #i:I
    :goto_4
    if-ltz v0, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p2, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v1, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v0           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v0       #i:I
    :cond_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .end local v1           #objectId:I
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_5
    invoke-virtual {p0, p1, p5, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v5

    const/4 v4, 0x1

    goto :goto_2

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .end local v0           #i:I
    .restart local v1       #objectId:I
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method dumpWindowsLocked()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 1
    .parameter "pw"
    .parameter "dumpAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    return-void
.end method

.method dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 9
    .parameter "pw"
    .parameter "dumpAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v6, 0x1

    const/16 v8, 0x20

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "  Window #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    "

    if-nez p2, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    move v5, v6

    :goto_1
    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Input method dialogs:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_2
    if-ltz v0, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_5

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v5, "  IM Dialog #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Remove pending for:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_3
    if-ltz v0, :cond_b

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_8

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string v5, "  Remove #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    "

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Windows force removing:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_5
    if-ltz v0, :cond_d

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #w:Lcom/android/server/wm/WindowState;
    const-string v5, "  Removing #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_c

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    "

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_6

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_d
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_11

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_7
    if-ltz v0, :cond_11

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_e

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    const-string v5, "  Destroy #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_10

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    "

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_11
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_15

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Windows losing focus:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_9
    if-ltz v0, :cond_15

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_12

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    const-string v5, "  Losing #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_14

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    "

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_13
    :goto_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_15
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Windows waiting to resize:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_b
    if-ltz v0, :cond_19

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_16

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    const-string v5, "  Resizing #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_18

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    "

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_17
    :goto_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_18
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_c

    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_19
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1a

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_d
    if-ltz v0, :cond_1a

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v5, "  Waiting #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_1a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_2a

    const-string v5, "  Display: init="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_1b

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-eq v5, v6, :cond_1c

    :cond_1b
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    :cond_1c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    .local v3, rawWidth:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    .local v2, rawHeight:I
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    if-ne v3, v5, :cond_1d

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    if-eq v2, v5, :cond_1e

    :cond_1d
    const-string v5, " raw="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_1e
    const-string v5, " cur="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " app="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " rng="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .end local v2           #rawHeight:I
    .end local v3           #rawWidth:I
    :goto_e
    const-string v5, "  mCurConfiguration="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "  mCurrentFocus="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v5, v6, :cond_1f

    const-string v5, "  mLastFocus="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1f
    const-string v5, "  mFocusedApp="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_20

    const-string v5, "  mInputMethodTarget="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_20
    const-string v5, "  mInTouchMode="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mLayoutSeq="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    if-eqz p2, :cond_29

    const-string v5, "  mSystemDecorRect="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mSystemDecorLayer="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v5, :cond_21

    const-string v5, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_22

    const-string v5, "  mInputMethodWindow="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_22
    const-string v5, "  mWallpaperTarget="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_23

    const-string v5, "  mLowerWallpaperTarget="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "  mUpperWallpaperTarget="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_23
    const-string v5, "  mLastWallpaperX="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string v5, " mLastWallpaperY="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(F)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    if-nez v5, :cond_24

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    if-eqz v5, :cond_25

    :cond_24
    const-string v5, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_25
    const-string v5, "  mSystemBooted="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mDisplayEnabled="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "  mLayoutNeeded="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, "mTransactionSequence="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  mDisplayFrozen="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mWindowsFreezingScreen="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mAppsFreezingScreen="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mWaitingForConfig="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "  mRotation="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mAltOrientation="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mForcedAppOrientation="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  mDeferredRotationPauseCount="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_26

    const-string v5, "  mScreenRotationAnimation:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    const-string v6, "    "

    invoke-virtual {v5, v6, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_26
    const-string v5, "  mWindowAnimationScale="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string v5, " mTransitionWindowAnimationScale="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string v5, " mAnimatorDurationScale="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(F)V

    const-string v5, "  mTraversalScheduled="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mNextAppTransition=0x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mAppTransitionReady="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "  mAppTransitionRunning="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mAppTransitionTimeout="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    if-eqz v5, :cond_27

    const-string v5, "  mNextAppTransitionType="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_27
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    packed-switch v5, :pswitch_data_0

    :goto_f
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v5, :cond_28

    const-string v5, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_28
    const-string v5, "  mStartingIconInTransition="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mSkipAppTransitionAnimation="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "  Window Animator:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/wm/WindowAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_29
    return-void

    :cond_2a
    const-string v5, "  NO DISPLAY"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_0
    const-string v5, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_1
    const-string v5, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mNextAppTransitionStartY="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_f

    :pswitch_2
    const-string v5, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " mNextAppTransitionStartX="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mNextAppTransitionStartY="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  mNextAppTransitionDelayed="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionDelayed:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public enableScreenAfterBoot()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public executeAppTransition()V
    .locals 5

    .prologue
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #origId:J
    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 2
    .parameter "token"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .locals 13
    .parameter "willMove"

    .prologue
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v8, 0x0

    .local v8, w:Lcom/android/server/wm/WindowState;
    move v4, v0

    .local v4, i:I
    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/wm/WindowState;
    check-cast v8, Lcom/android/server/wm/WindowState;

    .restart local v8       #w:Lcom/android/server/wm/WindowState;
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_1

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    if-lez v4, :cond_1

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .local v9, wb:Lcom/android/server/wm/WindowState;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_1

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v4, v4, -0x1

    move-object v8, v9

    .end local v9           #wb:Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_2

    if-eqz v8, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v11, v12, :cond_2

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    :cond_2
    if-eqz p1, :cond_9

    if-eqz v8, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .local v1, curTarget:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_9

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_9

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v7, token:Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x0

    .local v3, highestTarget:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .local v2, highestPos:I
    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v11, :cond_3

    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, pos:I
    :goto_0
    if-ltz v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .local v10, win:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v7, :cond_5

    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_4
    if-eqz v3, :cond_9

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v2, 0x1

    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :goto_1
    return v11

    .restart local v1       #curTarget:Lcom/android/server/wm/WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/wm/WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    :cond_5
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_7

    if-eqz v3, :cond_6

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v11, v12, :cond_7

    :cond_6
    move-object v3, v10

    move v2, v6

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_8
    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v11, v12, :cond_9

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v2, 0x1

    goto :goto_1

    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_9
    if-eqz v8, :cond_c

    if-eqz p1, :cond_a

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_b

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    :cond_a
    :goto_2
    add-int/lit8 v11, v4, 0x1

    goto :goto_1

    :cond_b
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_2

    :cond_c
    if-eqz p1, :cond_d

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    :cond_d
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 6
    .parameter "session"
    .parameter "client"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public freezeRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p1, v2, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .end local p1
    :cond_3
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    invoke-virtual {p0, v3, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void
.end method

.method public getAnimationScale(I)F
    .locals 1
    .parameter "which"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 3
    .parameter "token"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "smallestSize"
    .parameter "largestSize"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSmallestDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayWidth:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLargestDisplayHeight:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .locals 2
    .parameter "size"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFocusedWindowClientToken()Landroid/os/IBinder;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInitialDisplaySize(Landroid/graphics/Point;)V
    .locals 2
    .parameter "size"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputManagerService()Lcom/android/server/input/InputManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method

.method public getLidState()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v4, -0x100

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .local v0, sw:I
    if-lez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getMaximumSizeDimension()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x3

    const/4 v0, 0x0

    .local v0, curGroup:I
    const/4 v4, -0x1

    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .local v3, lastFullscreen:Z
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, pos:I
    :goto_0
    if-ltz v6, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .local v7, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_1

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    if-ne v2, v9, :cond_3

    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_3

    if-eq v4, v11, :cond_3

    if-eqz v3, :cond_3

    move v5, v4

    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    :goto_2
    return v5

    .restart local v7       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_0

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iget v4, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    :cond_4
    iget v5, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v3, :cond_5

    if-ne v5, v11, :cond_2

    :cond_5
    if-eq v5, v10, :cond_6

    if-ne v5, v11, :cond_2

    :cond_6
    if-ne v5, v11, :cond_7

    move v8, v9

    :goto_3
    or-int/2addr v1, v8

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move v5, v10

    goto :goto_2
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    :goto_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, pos:I
    :cond_2
    if-ltz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, wtoken:Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .local v1, req:I
    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    goto :goto_0

    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/wm/WindowState;
    :cond_4
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_0
.end method

.method public getPendingAppTransition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 7

    .prologue
    const/16 v2, 0x55

    const/16 v3, 0x53

    const/16 v1, 0x51

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    .local v0, rotation:I
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_0

    packed-switch v0, :pswitch_data_0

    monitor-exit v4

    :goto_0
    return v1

    :pswitch_0
    monitor-exit v4

    move v1, v2

    goto :goto_0

    :pswitch_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #rotation:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #rotation:I
    :pswitch_2
    :try_start_1
    monitor-exit v4

    move v1, v3

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_1

    monitor-exit v4

    move v1, v2

    goto :goto_0

    :pswitch_3
    monitor-exit v4

    goto :goto_0

    :pswitch_4
    monitor-exit v4

    move v1, v3

    goto :goto_0

    :pswitch_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getRealDisplaySize(Landroid/graphics/Point;)V
    .locals 2
    .parameter "size"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getWindowCompatibilityScale(Landroid/os/IBinder;)F
    .locals 3
    .parameter "windowToken"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v2

    goto :goto_0

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "token"
    .parameter "outBounds"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleAppTransitionReadyLocked()I
    .locals 37

    .prologue
    const/16 v21, 0x0

    .local v21, changes:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, NN:I
    const/16 v27, 0x1

    .local v27, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    if-nez v2, :cond_1

    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_0

    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v2, :cond_0

    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v2, :cond_0

    const/16 v27, 0x0

    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v28           #i:I
    :cond_1
    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .local v6, transit:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v2, :cond_2

    const/4 v6, -0x1

    :cond_2
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v32, 0x0

    .local v32, oldWallpaper:Lcom/android/server/wm/WindowState;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/4 v4, 0x0

    .local v4, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v19, -0x1

    .local v19, bestAnimLayer:I
    const/16 v26, 0x0

    .local v26, fullscreenAnim:Z
    const/16 v25, 0x0

    .local v25, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, NC:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v17, v16, v2

    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v31, 0x1

    .local v31, mode:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, v3, :cond_4

    :cond_3
    or-int v25, v25, v31

    :cond_4
    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v36

    .local v36, ws:Lcom/android/server/wm/WindowState;
    if-eqz v36, :cond_5

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    const/16 v26, 0x1

    .end local v36           #ws:Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_4
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v16           #NC:I
    .end local v19           #bestAnimLayer:I
    .end local v25           #foundWallpapers:I
    .end local v26           #fullscreenAnim:Z
    .end local v28           #i:I
    .end local v31           #mode:I
    .end local v32           #oldWallpaper:Lcom/android/server/wm/WindowState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    goto :goto_1

    .restart local v4       #animLp:Landroid/view/WindowManager$LayoutParams;
    .restart local v16       #NC:I
    .restart local v19       #bestAnimLayer:I
    .restart local v25       #foundWallpapers:I
    .restart local v26       #fullscreenAnim:Z
    .restart local v28       #i:I
    .restart local v32       #oldWallpaper:Lcom/android/server/wm/WindowState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    sub-int v5, v28, v16

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v31, 0x2

    .restart local v31       #mode:I
    goto :goto_3

    :cond_8
    if-nez v26, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v36

    .restart local v36       #ws:Lcom/android/server/wm/WindowState;
    if-eqz v36, :cond_5

    move-object/from16 v0, v36

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v19

    if-le v2, v0, :cond_5

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    goto :goto_4

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v31           #mode:I
    .end local v36           #ws:Lcom/android/server/wm/WindowState;
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_d

    sparse-switch v6, :sswitch_data_0

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v4, 0x0

    :cond_b
    const/16 v33, 0x0

    .local v33, topOpeningApp:Lcom/android/server/wm/AppWindowToken;
    const/16 v34, 0x0

    .local v34, topOpeningLayer:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v5, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v8, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v8

    or-int/2addr v5, v8

    iput-boolean v5, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v4, :cond_11

    const/16 v30, -0x1

    .local v30, layer:I
    const/16 v29, 0x0

    .local v29, j:I
    :goto_7
    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_f

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowState;

    .local v35, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v0, v30

    if-le v2, v0, :cond_c

    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v30, v0

    :cond_c
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v29           #j:I
    .end local v30           #layer:I
    .end local v33           #topOpeningApp:Lcom/android/server/wm/AppWindowToken;
    .end local v34           #topOpeningLayer:I
    .end local v35           #win:Lcom/android/server/wm/WindowState;
    :sswitch_0
    const/16 v6, 0x100e

    goto/16 :goto_5

    :sswitch_1
    const/16 v6, 0x200f

    goto/16 :goto_5

    :cond_d
    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v6, 0x200c

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_a

    const/16 v6, 0x100d

    goto/16 :goto_5

    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v29       #j:I
    .restart local v30       #layer:I
    .restart local v33       #topOpeningApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v34       #topOpeningLayer:I
    :cond_f
    if-eqz v33, :cond_10

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_11

    :cond_10
    move-object/from16 v33, v3

    move/from16 v34, v30

    .end local v29           #j:I
    .end local v30           #layer:I
    :cond_11
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v28, 0x0

    :goto_8
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_14

    if-eqz v33, :cond_14

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_14

    new-instance v22, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v22, dirty:Landroid/graphics/Rect;
    :try_start_0
    new-instance v7, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "thumbnail anim"

    const/4 v11, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v14, -0x3

    const/4 v15, 0x4

    invoke-direct/range {v7 .. v15}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .local v7, surface:Landroid/view/Surface;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-object v7, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    new-instance v23, Landroid/view/Surface;

    invoke-direct/range {v23 .. v23}, Landroid/view/Surface;-><init>()V

    .local v23, drawSurface:Landroid/view/Surface;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v20

    .local v20, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/Surface;->release()V

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move/from16 v0, v34

    iput v0, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionDelayed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v5, v8}, Lcom/android/server/wm/WindowManagerService;->createThumbnailAnimationLocked(IZZZ)Landroid/view/animation/Animation;

    move-result-object v18

    .local v18, anim:Landroid/view/animation/Animation;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->restrictDuration(J)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    iput v5, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    iput v5, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #surface:Landroid/view/Surface;
    .end local v18           #anim:Landroid/view/animation/Animation;
    .end local v20           #c:Landroid/graphics/Canvas;
    .end local v22           #dirty:Landroid/graphics/Rect;
    .end local v23           #drawSurface:Landroid/view/Surface;
    :cond_14
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    or-int/lit8 v21, v21, 0x3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_15
    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .end local v4           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #transit:I
    .end local v16           #NC:I
    .end local v19           #bestAnimLayer:I
    .end local v25           #foundWallpapers:I
    .end local v26           #fullscreenAnim:Z
    .end local v28           #i:I
    .end local v32           #oldWallpaper:Lcom/android/server/wm/WindowState;
    .end local v33           #topOpeningApp:Lcom/android/server/wm/AppWindowToken;
    .end local v34           #topOpeningLayer:I
    :cond_16
    return v21

    .restart local v4       #animLp:Landroid/view/WindowManager$LayoutParams;
    .restart local v6       #transit:I
    .restart local v16       #NC:I
    .restart local v19       #bestAnimLayer:I
    .restart local v22       #dirty:Landroid/graphics/Rect;
    .restart local v25       #foundWallpapers:I
    .restart local v26       #fullscreenAnim:Z
    .restart local v28       #i:I
    .restart local v32       #oldWallpaper:Lcom/android/server/wm/WindowState;
    .restart local v33       #topOpeningApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v34       #topOpeningLayer:I
    :catch_0
    move-exception v24

    .local v24, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t allocate thumbnail surface w="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " h="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_9

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hasSystemNavBar()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasSystemNavBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessagesLocked()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    :cond_0
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 10
    .parameter "client"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    .local v1, idx:I
    if-lez v1, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, w:Lcom/android/server/wm/WindowState;
    if-eq v3, v2, :cond_1

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switching to real app window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_2

    monitor-exit v6

    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :goto_1
    return v4

    .restart local v0       #i:I
    .restart local v2       #imFocus:Lcom/android/server/wm/WindowState;
    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_3

    monitor-exit v6

    goto :goto_1

    .end local v1           #idx:I
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #idx:I
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_1
.end method

.method public isHardKeyboardAvailable()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHardKeyboardEnabled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .parameter "wallpaperTarget"

    .prologue
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    const/4 v0, 0x0

    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public lockNow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->lockNow()V

    return-void
.end method

.method logWindowList(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .parameter "w"

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 1
    .parameter "inputChannelName"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .locals 8
    .parameter "index"
    .parameter "token"

    .prologue
    const/4 v7, -0x1

    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "moveAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, oldIndex:I
    if-le v0, p1, :cond_1

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v4, v7, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v4, v7, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, origId:J
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1           #origId:J
    :cond_5
    monitor-exit v5

    goto :goto_0

    .end local v0           #oldIndex:I
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    if-lez v0, :cond_1

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    const/4 v4, 0x0

    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .local v5, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    :cond_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .local v4, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .locals 7
    .parameter "pos"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v3, targetAppToken:Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .local v5, wp:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_1

    add-int/lit8 p1, p1, 0x1

    .end local v5           #wp:Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, win:Lcom/android/server/wm/WindowState;
    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #targetAppToken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .restart local v4       #win:Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .locals 12
    .parameter "needAssignLayers"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .local v6, imWin:Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, DN:I
    if-nez v6, :cond_0

    if-nez v0, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .local v5, imPos:I
    if-ltz v5, :cond_c

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, N:I
    if-ge v5, v1, :cond_1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v4, v8

    .local v4, firstImWin:Lcom/android/server/wm/WindowState;
    :cond_1
    if-eqz v6, :cond_5

    move-object v2, v6

    .local v2, baseImWin:Lcom/android/server/wm/WindowState;
    :goto_1
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, cw:Lcom/android/server/wm/WindowState;
    iget v8, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v8, :cond_2

    move-object v2, v3

    .end local v3           #cw:Lcom/android/server/wm/WindowState;
    :cond_2
    if-ne v4, v2, :cond_8

    add-int/lit8 v7, v5, 0x1

    .local v7, pos:I
    :goto_2
    if-ge v7, v1, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_3
    if-ge v7, v1, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_7

    :cond_4
    if-lt v7, v1, :cond_8

    move v8, v9

    goto :goto_0

    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v7           #pos:I
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v2, v8

    goto :goto_1

    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v7       #pos:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v7           #pos:I
    :cond_8
    if-eqz v6, :cond_b

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    if-lez v0, :cond_9

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_9
    :goto_4
    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_a
    move v8, v10

    goto/16 :goto_0

    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4

    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_c
    if-eqz v6, :cond_d

    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    iput-object v4, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    if-lez v0, :cond_9

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4
.end method

.method notifyHardKeyboardStatusChange()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .local v2, listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .local v0, available:Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .local v1, enabled:Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    :cond_0
    return-void

    .end local v0           #available:Z
    .end local v1           #enabled:Z
    .end local v2           #listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method okToDisplay()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 3
    .parameter "client"
    .parameter "inputContext"

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .local v0, session:Lcom/android/server/wm/Session;
    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .locals 7
    .parameter "session"
    .parameter "client"

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v3

    :cond_0
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v5, "from-client"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"
    .parameter "startedCallback"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "startWidth"
    .parameter "startHeight"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartWidth:I

    iput p4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartHeight:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 3
    .parameter "srcThumb"
    .parameter "startX"
    .parameter "startY"
    .parameter "startedCallback"
    .parameter "delayed"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz p5, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionDelayed:Z

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartX:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionStartY:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationCallback(Landroid/os/IRemoteCallback;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_1
    monitor-exit v2

    return-void

    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pauseRotationLocked()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public performBootTimeout()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHeadless:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const-string v0, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 5
    .parameter "session"
    .parameter "client"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public performEnableScreen()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v13, :cond_0

    monitor-exit v14

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v13, :cond_1

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v13, :cond_f

    const/4 v5, 0x0

    .local v5, haveBootMsg:Z
    const/4 v4, 0x0

    .local v4, haveApp:Z
    const/4 v7, 0x0

    .local v7, haveWallpaper:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x1110024

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v13, :cond_3

    const/4 v12, 0x1

    .local v12, wallpaperEnabled:Z
    :goto_1
    const/4 v6, 0x1

    .local v6, haveKeyguard:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .local v11, w:Lcom/android/server/wm/WindowState;
    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7d4

    if-ne v13, v15, :cond_2

    iget v13, v11, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v13, :cond_4

    iget-boolean v13, v11, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v13, :cond_4

    const/4 v10, 0x1

    .local v10, vis:Z
    :goto_3
    if-nez v10, :cond_5

    const/4 v6, 0x1

    .end local v10           #vis:Z
    :cond_2
    :goto_4
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-eqz v13, :cond_6

    iget-boolean v13, v11, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v13, :cond_6

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-nez v13, :cond_6

    monitor-exit v14

    goto :goto_0

    .end local v1           #N:I
    .end local v6           #haveKeyguard:Z
    .end local v8           #i:I
    .end local v11           #w:Lcom/android/server/wm/WindowState;
    .end local v12           #wallpaperEnabled:Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .restart local v1       #N:I
    .restart local v6       #haveKeyguard:Z
    .restart local v8       #i:I
    .restart local v11       #w:Lcom/android/server/wm/WindowState;
    .restart local v12       #wallpaperEnabled:Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .restart local v10       #vis:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .end local v10           #vis:Z
    :cond_6
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7e5

    if-ne v13, v15, :cond_8

    const/4 v5, 0x1

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7dd

    if-ne v13, v15, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7d4

    if-ne v13, v15, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    .end local v11           #w:Lcom/android/server/wm/WindowState;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v13, :cond_c

    if-nez v5, :cond_c

    monitor-exit v14

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v13, :cond_f

    if-nez v4, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    if-eqz v12, :cond_f

    if-nez v7, :cond_f

    :cond_e
    monitor-exit v14

    goto/16 :goto_0

    .end local v1           #N:I
    .end local v4           #haveApp:Z
    .end local v5           #haveBootMsg:Z
    .end local v6           #haveKeyguard:Z
    .end local v7           #haveWallpaper:Z
    .end local v8           #i:I
    .end local v12           #wallpaperEnabled:Z
    :cond_f
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v13, "SurfaceFlinger"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .local v9, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v9, :cond_10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, data:Landroid/os/Parcel;
    const-string v13, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v13}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v13, v2, v15, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #data:Landroid/os/Parcel;
    .end local v9           #surfaceFlinger:Landroid/os/IBinder;
    :cond_10
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v13, v15}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v13, "WindowManager"

    const-string v15, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6
.end method

.method public prepareAppTransition(IZ)V
    .locals 5
    .parameter "transit"
    .parameter "alwaysKeepCurrent"

    .prologue
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v0, :cond_4

    :cond_1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    monitor-exit v1

    return-void

    :cond_4
    if-nez p2, :cond_2

    const/16 v0, 0x1008

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v0, v2, :cond_5

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_2

    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .locals 16
    .parameter "window"
    .parameter "session"
    .parameter "flags"
    .parameter "width"
    .parameter "height"
    .parameter "outSurface"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .local v3, callerPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, origId:J
    const/4 v14, 0x0

    .local v14, token:Landroid/os/IBinder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    new-instance v1, Landroid/view/Surface;

    const-string v4, "drag surface"

    const/4 v5, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x4

    move-object/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .local v1, surface:Landroid/view/Surface;
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, winBinder:Landroid/os/IBinder;
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v14           #token:Landroid/os/IBinder;
    .local v6, token:Landroid/os/IBinder;
    :try_start_2
    new-instance v4, Lcom/android/server/wm/DragState;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v14, Landroid/os/Binder;

    invoke-direct {v14}, Landroid/os/Binder;-><init>()V

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v11, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v14

    .end local v1           #surface:Landroid/view/Surface;
    .end local v9           #winBinder:Landroid/os/IBinder;
    .end local v11           #msg:Landroid/os/Message;
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :cond_1
    :try_start_5
    const-string v2, "WindowManager"

    const-string v4, "Drag already in progress"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_0

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catch_0
    move-exception v10

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :goto_1
    :try_start_6
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_0

    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_2
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_3

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_3
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_2

    .restart local v1       #surface:Landroid/view/Surface;
    .restart local v9       #winBinder:Landroid/os/IBinder;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public rebootSafeMode()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    return-void
.end method

.method final rebuildAppWindowListLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, NW:I
    const/4 v4, -0x1

    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .local v5, numRemoved:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    array-length v11, v11

    if-ge v11, v1, :cond_0

    add-int/lit8 v11, v1, 0xa

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .local v8, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .local v9, win:Lcom/android/server/wm/WindowState;
    iput-boolean v14, v9, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aput-object v9, v11, v5

    iput-boolean v14, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_2

    add-int/lit8 v11, v2, -0x1

    if-ne v4, v11, :cond_2

    move v4, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v8           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sub-int/2addr v2, v4

    if-eq v2, v5, :cond_8

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebuild removed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windows but added "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aget-object v10, v11, v2

    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    if-eqz v11, :cond_6

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .local v7, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v6, pw:Ljava/io/PrintWriter;
    const-string v11, ""

    invoke-virtual {v10, v6, v11, v14}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This window was lost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "WindowManager"

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .end local v6           #pw:Ljava/io/PrintWriter;
    .end local v7           #sw:Ljava/io/StringWriter;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_7
    const-string v11, "WindowManager"

    const-string v12, "Current app token list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatingAppTokensLocked()V

    const-string v11, "WindowManager"

    const-string v12, "Final window list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    :cond_8
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 16
    .parameter "winAnimator"
    .parameter "operation"
    .parameter "secure"

    .prologue
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    .local v9, surface:Landroid/view/Surface;
    const/4 v6, 0x0

    .local v6, leakedSurface:Z
    const/4 v5, 0x0

    .local v5, killedApps:Z
    const/16 v12, 0x7918

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v15, v15, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object p2, v13, v14

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v12, :cond_0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, callingIdentity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, N:I
    const-string v12, "WindowManager"

    const-string v13, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v11, wsa:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " surface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12}, Landroid/view/Surface;->destroy()V

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v6, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_1

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v12, :cond_1

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " surface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12}, Landroid/view/Surface;->destroy()V

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v6, 0x1

    goto :goto_1

    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    .end local v11           #wsa:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    if-nez v6, :cond_7

    const-string v12, "WindowManager"

    const-string v13, "No leaked surfaces; killing applicatons!"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .local v7, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    iget-object v11, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .restart local v11       #wsa:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v12, :cond_4

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    iget-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v7, v12, v13}, Landroid/util/SparseIntArray;->append(II)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v11           #wsa:Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-lez v12, :cond_7

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    new-array v8, v12, [I

    .local v8, pids:[I
    const/4 v4, 0x0

    :goto_3
    array-length v12, v8

    if-ge v4, v12, :cond_6

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    aput v12, v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v13, "Free memory"

    move/from16 v0, p3

    invoke-interface {v12, v8, v13, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-eqz v12, :cond_7

    const/4 v5, 0x1

    .end local v7           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v8           #pids:[I
    :cond_7
    :goto_4
    if-nez v6, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    :try_start_2
    const-string v12, "WindowManager"

    const-string v13, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/server/wm/WindowState;->mHasSurface:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_a
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    const/4 v12, 0x1

    :goto_6
    return v12

    .end local v1           #N:I
    .end local v4           #i:I
    :catchall_0
    move-exception v12

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .restart local v1       #N:I
    .restart local v4       #i:I
    :cond_c
    const/4 v12, 0x0

    goto :goto_6

    :catch_0
    move-exception v12

    goto :goto_5

    .restart local v7       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v8       #pids:[I
    :catch_1
    move-exception v12

    goto :goto_4
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .local v0, visibility:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v2

    return-void

    .end local v0           #visibility:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 33
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "flags"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    const/16 v24, 0x0

    .local v24, toBeDisplayed:Z
    const/16 v22, 0x0

    .local v22, surfaceChanged:Z
    const/16 v23, 0x0

    .local v23, systemUiVisibility:I
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v30, v0

    or-int v23, v29, v30

    const/high16 v29, 0x1ff

    and-int v29, v29, v23

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "android.permission.STATUS_BAR"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_0

    const v29, -0x1ff0001

    and-int v23, v23, v29

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    monitor-enter v30

    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v27

    .local v27, win:Lcom/android/server/wm/WindowState;
    if-nez v27, :cond_1

    const/16 v29, 0x0

    monitor-exit v30

    :goto_0
    return v29

    :cond_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v28, v0

    .local v28, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p6

    if-eq v0, v1, :cond_3

    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    move/from16 v0, p5

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v0, p6

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_3
    if-eqz p4, :cond_4

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v29, v0

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_4
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    and-int/lit8 v29, p8, 0x2

    if-eqz v29, :cond_6

    const/16 v29, 0x1

    :goto_1
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    const/4 v7, 0x0

    .local v7, attrChanges:I
    const/4 v11, 0x0

    .local v11, flagChanges:I
    if-eqz p4, :cond_8

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v31, "Window type can not be changed after the window is added."

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .end local v7           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v27           #win:Lcom/android/server/wm/WindowState;
    .end local v28           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    .restart local v27       #win:Lcom/android/server/wm/WindowState;
    .restart local v28       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    const/16 v29, 0x0

    goto :goto_1

    .restart local v7       #attrChanges:I
    .restart local v11       #flagChanges:I
    :cond_7
    :try_start_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v32, v0

    xor-int v11, v31, v32

    move-object/from16 v0, v29

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    and-int/lit16 v0, v7, 0x2001

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    :cond_8
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v31, 0x2000

    and-int v29, v29, v31

    if-eqz v29, :cond_21

    const/16 v29, 0x1

    :goto_2
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    and-int/lit16 v0, v7, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    :cond_9
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x4000

    move/from16 v29, v0

    if-eqz v29, :cond_22

    const/16 v20, 0x1

    .local v20, scaledWindow:Z
    :goto_3
    if-eqz v20, :cond_25

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p5

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v29, v29, v31

    :goto_4
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p6

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v29, v29, v31

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    :goto_6
    const v29, 0x20008

    and-int v29, v29, v11

    if-eqz v29, :cond_26

    const/4 v13, 0x1

    .local v13, imMayMove:Z
    :goto_7
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p7

    if-ne v0, v1, :cond_a

    and-int/lit8 v29, v11, 0x8

    if-nez v29, :cond_a

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    :cond_a
    const/4 v12, 0x1

    .local v12, focusMayChange:Z
    :goto_8
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p7

    if-eq v0, v1, :cond_28

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v31, 0x10

    and-int v29, v29, v31

    if-eqz v29, :cond_28

    const/16 v26, 0x1

    .local v26, wallpaperMayMove:Z
    :goto_9
    const/high16 v29, 0x10

    and-int v29, v29, v11

    if-eqz v29, :cond_29

    const/16 v29, 0x1

    :goto_a
    or-int v26, v26, v29

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .local v16, oldVisibility:I
    move/from16 v0, p7

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez p7, :cond_2c

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v29, v0

    if-nez v29, :cond_2c

    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v29

    if-nez v29, :cond_2a

    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->cancelExitAnimationForNextAnimationLocked()V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    :cond_c
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    const/16 v29, 0x8

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    :cond_e
    if-eqz v24, :cond_12

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v29

    if-eqz v29, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v29

    if-eqz v29, :cond_f

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    :cond_f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v31, 0x20

    and-int v29, v29, v31

    if-eqz v29, :cond_10

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :cond_10
    const/4 v9, 0x0

    .local v9, diff:I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_12

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .end local v9           #diff:I
    :cond_12
    and-int/lit8 v29, v7, 0x8

    if-eqz v29, :cond_13

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v24, 0x1

    const/16 v22, 0x1

    :cond_13
    :try_start_2
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v29, v0

    if-nez v29, :cond_14

    const/16 v22, 0x1

    :cond_14
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_2b

    move-object/from16 v0, p13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_c
    if-eqz v24, :cond_15

    const/4 v12, 0x1

    :cond_15
    :try_start_3
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x7db

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_16

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v13, 0x1

    :cond_16
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    const v15, 0x480001

    .local v15, mask:I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const v31, -0x480002

    and-int v29, v29, v31

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    const v32, 0x480001

    and-int v31, v31, v32

    or-int v29, v29, v31

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_17
    :goto_d
    if-eqz v12, :cond_18

    const/16 v29, 0x3

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v29

    if-eqz v29, :cond_18

    const/4 v13, 0x0

    :cond_18
    const/4 v6, 0x0

    .local v6, assignLayers:Z
    if-eqz v13, :cond_1a

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v29

    if-nez v29, :cond_19

    if-eqz v24, :cond_1a

    :cond_19
    const/4 v6, 0x1

    :cond_1a
    if-eqz v26, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v29

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_1b

    const/4 v6, 0x1

    :cond_1b
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    and-int/lit8 v29, p8, 0x1

    if-eqz v29, :cond_33

    const/16 v29, 0x1

    :goto_e
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v6, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_1c
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v8

    .local v8, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    if-eqz v24, :cond_1d

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_1d
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1e

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_1e
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v5, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .local v5, animating:Z
    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService$Injector;->updateFloatingWindow(Lcom/android/server/wm/WindowState;)V

    monitor-exit v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_20
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v14, :cond_34

    const/16 v29, 0x1

    move/from16 v30, v29

    :goto_f
    if-eqz v24, :cond_35

    const/16 v29, 0x2

    :goto_10
    or-int v30, v30, v29

    if-eqz v22, :cond_36

    const/16 v29, 0x4

    :goto_11
    or-int v30, v30, v29

    if-eqz v5, :cond_37

    const/16 v29, 0x8

    :goto_12
    or-int v29, v29, v30

    goto/16 :goto_0

    .end local v5           #animating:Z
    .end local v6           #assignLayers:Z
    .end local v8           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v26           #wallpaperMayMove:Z
    :cond_21
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_22
    const/16 v20, 0x0

    goto/16 :goto_3

    .restart local v20       #scaledWindow:Z
    :cond_23
    const/high16 v29, 0x3f80

    goto/16 :goto_4

    :cond_24
    const/high16 v29, 0x3f80

    goto/16 :goto_5

    :cond_25
    const/high16 v29, 0x3f80

    :try_start_4
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :cond_26
    const/4 v13, 0x0

    goto/16 :goto_7

    .restart local v13       #imMayMove:Z
    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_8

    .restart local v12       #focusMayChange:Z
    :cond_28
    const/16 v26, 0x0

    goto/16 :goto_9

    .restart local v26       #wallpaperMayMove:Z
    :cond_29
    const/16 v29, 0x0

    goto/16 :goto_a

    .restart local v16       #oldVisibility:I
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_b

    .restart local v21       #surface:Landroid/view/Surface;
    :cond_2b
    :try_start_5
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_c

    .end local v21           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const-string v29, "WindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception thrown when creating surface for client "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v29, 0x0

    monitor-exit v30

    goto/16 :goto_0

    .end local v10           #e:Ljava/lang/Exception;
    :cond_2c
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2e

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v29, v0

    if-nez v29, :cond_2e

    const/16 v22, 0x1

    const/16 v25, 0x2002

    .local v25, transit:I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_2d

    const/16 v25, 0x5

    :cond_2d
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v29

    if-eqz v29, :cond_2f

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v29

    if-eqz v29, :cond_2f

    const/4 v12, 0x1

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .end local v25           #transit:I
    :cond_2e
    :goto_13
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V

    goto/16 :goto_d

    .restart local v25       #transit:I
    :cond_2f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v29

    if-eqz v29, :cond_30

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_13

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_31

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_13

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_32

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_32
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_13

    .end local v25           #transit:I
    .restart local v6       #assignLayers:Z
    :cond_33
    const/16 v29, 0x0

    goto/16 :goto_e

    .restart local v5       #animating:Z
    .restart local v8       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_34
    const/16 v29, 0x0

    move/from16 v30, v29

    goto/16 :goto_f

    :cond_35
    const/16 v29, 0x0

    goto/16 :goto_10

    :cond_36
    const/16 v29, 0x0

    goto/16 :goto_11

    :cond_37
    const/16 v29, 0x0

    goto/16 :goto_12
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v11, 0x0

    .local v11, startingToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .local v6, basewtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v6, :cond_8

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    :cond_1
    :goto_0
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    move-object v11, v1

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_3
    :goto_2
    if-nez v7, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v11, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v8           #m:Landroid/os/Message;
    :cond_5
    return-void

    :cond_6
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    const/4 v7, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    goto :goto_1

    .end local v6           #basewtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v6       #basewtoken:Lcom/android/server/wm/WindowToken;
    :cond_8
    :try_start_2
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z
    .locals 4
    .parameter "window"

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 3
    .parameter "session"
    .parameter "client"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    monitor-exit v2

    goto :goto_0

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    const/4 v3, 0x0

    .local v3, wasVisible:Z
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2002

    .local v2, transit:I
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_0

    const/4 v2, 0x5

    :cond_0
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v2, v6}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .end local v2           #transit:I
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_2

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_5
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 12
    .parameter "token"

    .prologue
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, origId:J
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .local v7, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_7

    const/4 v2, 0x0

    .local v2, delayed:Z
    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v10, 0x2002

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    if-eqz v1, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_4
    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .end local v2           #delayed:Z
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_6
    :try_start_1
    iget v8, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v8, v10, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v7       #wtoken:Lcom/android/server/wm/WindowToken;
    :cond_7
    :try_start_2
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method requestTraversalLocked()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_1
    monitor-exit v2

    return-void

    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resumeRotationLocked()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .local v0, changed:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .end local v0           #changed:Z
    :cond_0
    return-void
.end method

.method public saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;)V
    .locals 5
    .parameter "appWindowToken"
    .parameter "windowState"

    .prologue
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v0, pw:Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    return-void
.end method

.method public saveLastInputMethodWindowForTransition()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManagerPolicy;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method scheduleAnimationLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationRunnable:Lcom/android/server/wm/WindowManagerService$AnimationRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    :cond_0
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .locals 34
    .parameter "appToken"
    .parameter "width"
    .parameter "height"

    .prologue
    const-string v31, "android.permission.READ_FRAME_BUFFER"

    const-string v32, "screenshotApplications()"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_0

    new-instance v31, Ljava/lang/SecurityException;

    const-string v32, "Requires READ_FRAME_BUFFER permission"

    invoke-direct/range {v31 .. v32}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_0
    const/16 v20, 0x0

    .local v20, maxLayer:I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .local v11, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, ident:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .local v9, dw:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .local v8, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v3, v0, 0x3e8

    .local v3, aboveAppLayer:I
    add-int/lit16 v3, v3, 0x2710

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    .local v17, isImeTarget:Z
    :goto_0
    const/16 v16, 0x0

    .local v16, including:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    .local v30, ws:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v31, v0

    if-nez v31, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .end local v13           #i:I
    .end local v16           #including:Z
    .end local v17           #isImeTarget:Z
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .restart local v13       #i:I
    .restart local v16       #including:Z
    .restart local v17       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v3, :cond_1

    if-nez v16, :cond_5

    if-eqz p1, :cond_5

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    if-nez v17, :cond_5

    :cond_4
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_5
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v31

    if-nez v31, :cond_7

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v20, v0

    :cond_6
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    .local v29, wf:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .local v7, cr:Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v18, v31, v33

    .local v18, left:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v28, v31, v33

    .local v28, top:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v22, v31, v33

    .local v22, right:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v5, v31, v33

    .local v5, bottom:I
    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_2

    .end local v3           #aboveAppLayer:I
    .end local v5           #bottom:I
    .end local v7           #cr:Landroid/graphics/Rect;
    .end local v8           #dh:I
    .end local v9           #dw:I
    .end local v13           #i:I
    .end local v14           #ident:J
    .end local v16           #including:Z
    .end local v17           #isImeTarget:Z
    .end local v18           #left:I
    .end local v22           #right:I
    .end local v28           #top:I
    .end local v29           #wf:Landroid/graphics/Rect;
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v31

    monitor-exit v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v31

    .restart local v3       #aboveAppLayer:I
    .restart local v8       #dh:I
    .restart local v9       #dw:I
    .restart local v13       #i:I
    .restart local v14       #ident:J
    .restart local v16       #including:Z
    .restart local v17       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_8
    :try_start_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1, v9, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_9

    if-nez v20, :cond_a

    :cond_9
    const/4 v4, 0x0

    monitor-exit v32

    :goto_4
    return-object v4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getRotation()I

    move-result v23

    .local v23, rot:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .local v12, fw:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v10

    .local v10, fh:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v33, v0

    div-float v26, v31, v33

    .local v26, targetWidthScale:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v33, v0

    div-float v25, v31, v33

    .local v25, targetHeightScale:F
    if-gt v9, v8, :cond_e

    move/from16 v24, v26

    .local v24, scale:F
    cmpl-float v31, v25, v24

    if-lez v31, :cond_b

    int-to-float v0, v12

    move/from16 v31, v0

    mul-float v31, v31, v25

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    move/from16 v24, v25

    :cond_b
    :goto_5
    int-to-float v0, v9

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v9, v0

    int-to-float v0, v8

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v8, v0

    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    :cond_c
    move/from16 v27, v9

    .local v27, tmp:I
    move v9, v8

    move/from16 v8, v27

    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v23, 0x3

    .end local v27           #tmp:I
    :cond_d
    :goto_6
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v9, v8, v0, v1}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v21

    .local v21, rawss:Landroid/graphics/Bitmap;
    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v21, :cond_10

    const-string v31, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Failure taking screenshot for ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") to layer "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_4

    .end local v21           #rawss:Landroid/graphics/Bitmap;
    .end local v24           #scale:F
    :cond_e
    move/from16 v24, v25

    .restart local v24       #scale:F
    cmpl-float v31, v26, v24

    if-lez v31, :cond_b

    int-to-float v0, v10

    move/from16 v31, v0

    mul-float v31, v31, v26

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p3

    if-ne v0, v1, :cond_b

    move/from16 v24, v26

    goto/16 :goto_5

    .restart local v27       #tmp:I
    :cond_f
    const/16 v23, 0x1

    goto :goto_6

    .end local v27           #tmp:I
    .restart local v21       #rawss:Landroid/graphics/Bitmap;
    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v31

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .local v19, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v9, v8, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v24

    invoke-static/range {v31 .. v31}, Landroid/util/FloatMath;->ceil(F)F

    move-result v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v24

    invoke-static/range {v32 .. v32}, Landroid/util/FloatMath;->ceil(F)F

    move-result v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v6, canvas:Landroid/graphics/Canvas;
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4
.end method

.method sendNewConfiguration()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_3

    :cond_0
    move/from16 v9, p7

    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, curTokenIndex:I
    :cond_1
    if-lez v7, :cond_2

    add-int/lit8 v7, v7, -0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .local v10, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, curWallpaperIndex:I
    :goto_0
    if-lez v8, :cond_1

    add-int/lit8 v8, v8, -0x1

    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .local v11, wallpaper:Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p7, 0x0

    goto :goto_0

    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v9, :cond_3

    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimationScale(IF)V
    .locals 2
    .parameter "which"
    .parameter "scale"

    .prologue
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 p2, 0x41a0

    goto :goto_0

    :pswitch_0
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 4
    .parameter "scales"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    :cond_1
    array-length v0, p1

    if-lt v0, v3, :cond_2

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    :cond_2
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    aget v0, p1, v3

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "groupId"

    .prologue
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppGroupId()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .locals 20
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingWindow()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v18

    .local v18, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v18, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v19

    goto :goto_0

    .end local v18           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v18       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    :try_start_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_3

    monitor-exit v19

    goto :goto_0

    :cond_3
    if-eqz p9, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v16

    .local v16, ttoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .local v14, startingWindow:Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, origId:J
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    move-object/from16 v0, v18

    iput-object v14, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    :cond_5
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    :cond_6
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    :cond_7
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_8

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_8
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v15, tAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v17, v0

    .local v17, wAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_9

    iget-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iget v2, v15, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iput v2, v15, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    invoke-virtual {v15}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    :cond_9
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    goto/16 :goto_0

    .end local v12           #origId:J
    .end local v15           #tAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v17           #wAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_a
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_b

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    monitor-exit v19

    goto/16 :goto_0

    .end local v11           #m:Landroid/os/Message;
    :cond_b
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .restart local v15       #tAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v17, v0

    .restart local v17       #wAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v2, :cond_d

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v2, :cond_c

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    :cond_c
    iget-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    iget v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    iget v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    iget v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    iget-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    .end local v14           #startingWindow:Lcom/android/server/wm/WindowState;
    .end local v15           #tAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v16           #ttoken:Lcom/android/server/wm/AppWindowToken;
    .end local v17           #wAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_d
    if-nez p10, :cond_e

    monitor-exit v19

    goto/16 :goto_0

    :cond_e
    if-eqz p3, :cond_12

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    if-nez v10, :cond_f

    monitor-exit v19

    goto/16 :goto_0

    :cond_f
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_10

    monitor-exit v19

    goto/16 :goto_0

    :cond_10
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    monitor-exit v19

    goto/16 :goto_0

    :cond_11
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_13

    const/high16 v2, 0x10

    or-int p8, p8, v2

    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    new-instance v2, Lcom/android/server/wm/StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    monitor-exit v19

    goto/16 :goto_0

    .end local v11           #m:Landroid/os/Message;
    .restart local v10       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_13
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppVisibility()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_1

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v3, v5, :cond_7

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v3, p2, :cond_2

    monitor-exit v8

    goto :goto_0

    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v1       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    if-nez p2, :cond_5

    :goto_1
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_4
    :goto_2
    monitor-exit v8

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"

    .prologue
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEventDispatching(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->sendScreenStatusToClientsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v0, 0x0

    .local v0, changed:Z
    if-nez p1, :cond_4

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3

    move v0, v4

    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, origId:J
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2           #origId:J
    :cond_2
    monitor-exit v6

    :goto_2
    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .local v1, newFocus:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_5

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_2

    .end local v1           #newFocus:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #newFocus:Lcom/android/server/wm/AppWindowToken;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v7, v1, :cond_6

    move v0, v4

    :goto_3
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_3
.end method

.method public setForcedDisplaySize(II)V
    .locals 7
    .parameter "longDimen"
    .parameter "shortDimen"

    .prologue
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v2, v4, :cond_2

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p2, v2, :cond_0

    move v1, p2

    .local v1, width:I
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p1, v2, :cond_1

    move v0, p1

    .local v0, height:I
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_size_forced"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v3

    return-void

    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_0

    .restart local v1       #width:I
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_1

    .end local v1           #width:I
    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p1, v2, :cond_3

    move v1, p1

    .restart local v1       #width:I
    :goto_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p2, v2, :cond_4

    move v0, p2

    .restart local v0       #height:I
    :goto_3
    goto :goto_1

    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_2

    .restart local v1       #width:I
    :cond_4
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_3

    .end local v1           #width:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setHardKeyboardEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHoldScreenLocked(Z)V
    .locals 2
    .parameter "holding"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .local v0, state:Z
    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStartedLw()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputFilter(Lcom/android/server/input/InputFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Lcom/android/server/input/InputFilter;)V

    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 6
    .parameter "adj"

    .prologue
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .local v2, imw:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, wi:I
    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .local v0, cw:Lcom/android/server/wm/WindowState;
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_0

    .end local v0           #cw:Lcom/android/server/wm/WindowState;
    .end local v3           #wi:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, di:I
    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2       #imw:Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 6
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "touchableRegion"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .locals 10
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    const/4 v2, 0x0

    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_0

    if-nez p3, :cond_5

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-ne v7, p3, :cond_d

    const/4 v1, 0x0

    .local v1, changed:Z
    const/4 v4, 0x0

    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_3

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_1

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :cond_1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    move v2, v4

    .end local v2           #delayed:Z
    :cond_2
    const/4 v1, 0x1

    :cond_3
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_a

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_6

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #delayed:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .end local v2           #delayed:Z
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v4, :cond_7

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v8, 0x1001

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_9

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v8, 0x2002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_a
    if-nez p3, :cond_10

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez p3, :cond_11

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p5, :cond_c

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_c
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_d
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_e

    const/4 v2, 0x1

    :cond_e
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .restart local v3       #i:I
    :goto_5
    if-ltz v3, :cond_12

    if-nez v2, :cond_12

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v2, 0x1

    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v4       #runningAppAnimation:Z
    :cond_10
    const/4 v7, 0x0

    goto :goto_3

    :cond_11
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .local v5, swin:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_4

    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v4           #runningAppAnimation:Z
    .end local v5           #swin:Lcom/android/server/wm/WindowState;
    :cond_12
    return v2
.end method

.method setTransparentRegionHint(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Region;)V
    .locals 4
    .parameter "winAnimator"
    .parameter "region"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v2, 0x186a1

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, v3, p3}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionHint(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Region;)V

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .locals 6
    .parameter "adj"

    .prologue
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, curWallpaperIndex:I
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_0

    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method setWallpaperOffset(Lcom/android/server/wm/WindowStateAnimator;II)V
    .locals 3
    .parameter "winAnimator"
    .parameter "left"
    .parameter "top"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v2, 0x186a2

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter "msg"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    .local v0, first:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_1

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_4

    monitor-exit v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0
.end method

.method public showStrictModeViolation(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHeadless:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1a

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 7
    .parameter "token"
    .parameter "configChanges"

    .prologue
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .locals 8
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v7, v3, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, w:Lcom/android/server/wm/WindowState;
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method public startViewServer(I)Z
    .locals 4
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "android.permission.DUMP"

    const-string v3, "startViewServer"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/server/wm/ViewServer;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public statusBarVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "force"

    .prologue
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v4

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, origId:J
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopViewServer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_0
.end method

.method public switchKeyboardLayout(II)V
    .locals 1
    .parameter "deviceId"
    .parameter "direction"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    return-void
.end method

.method public thawRotation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x309

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .locals 7
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_0

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    :cond_0
    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    :cond_4
    if-eqz p2, :cond_6

    if-eqz v2, :cond_5

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_6
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 5
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v0, 0x0

    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .locals 4
    .parameter "inTransaction"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v2

    .local v2, req:I
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v2, v3, :cond_0

    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #req:I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public updateRotation(ZZ)V
    .locals 0
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void
.end method

.method public updateRotationUnchecked(ZZ)V
    .locals 5
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .local v0, changed:Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #changed:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateRotationUncheckedLocked(Z)Z
    .locals 13
    .parameter "inTransaction"

    .prologue
    const/16 v4, 0xb

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v1

    .local v1, rotation:I
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v0

    if-nez v0, :cond_8

    move v8, v11

    .local v8, altOrientation:Z
    :goto_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eq v0, v8, :cond_0

    :cond_3
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getExternalRotation()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v12, v1, v0}, Lcom/android/server/input/InputManagerService;->setDisplayOrientation(III)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    if-nez p1, :cond_4

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v3, 0x2710

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(ILandroid/view/SurfaceSession;JFII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, v1}, Landroid/view/Surface;->setOrientation(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_6

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, i:I
    :goto_3
    if-ltz v9, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .local v10, w:Lcom/android/server/wm/WindowState;
    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_7

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v12, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .end local v8           #altOrientation:Z
    .end local v9           #i:I
    .end local v10           #w:Lcom/android/server/wm/WindowState;
    :cond_8
    move v8, v12

    goto/16 :goto_1

    .restart local v8       #altOrientation:Z
    :cond_9
    move v0, v12

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez p1, :cond_a

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_a
    throw v0

    .restart local v9       #i:I
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    :goto_4
    if-ltz v9, :cond_c

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IRotationWatcher;

    invoke-interface {v0, v1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_c
    move v12, v11

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method updateStatusBarVisibilityLocked(I)V
    .locals 8
    .parameter "visibility"

    .prologue
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .local v5, ws:Lcom/android/server/wm/WindowState;
    :try_start_0
    iget v1, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .local v1, curValue:I
    xor-int v2, v1, p1

    .local v2, diff:I
    and-int/lit8 v2, v2, 0x7

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    and-int v7, p1, v2

    or-int v4, v6, v7

    .local v4, newValue:I
    if-eq v4, v1, :cond_0

    iget v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    iput v4, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_0
    if-ne v4, v1, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v6, v7, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #curValue:I
    .end local v2           #diff:I
    .end local v4           #newValue:I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5           #ws:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void

    .restart local v5       #ws:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 12
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v10, 0x0

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .local v2, dh:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .local v5, target:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1

    iget v9, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    iget v9, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    :cond_0
    :goto_0
    iget v9, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_7

    iget v9, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, curTokenIndex:I
    :cond_2
    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .local v6, token:Lcom/android/server/wm/WindowToken;
    iget-object v9, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, curWallpaperIndex:I
    :cond_3
    :goto_2
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iget-object v9, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .local v7, wallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v7, v3, v2, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .local v8, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    iget v9, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    iget v9, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    :cond_4
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :try_start_0
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->setWallpaperOffset(Lcom/android/server/wm/WindowStateAnimator;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    .end local v0           #curTokenIndex:I
    .end local v1           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v8           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget v9, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_0

    iget v9, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_0

    :cond_7
    iget v9, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_1

    iget v9, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1

    .restart local v0       #curTokenIndex:I
    .restart local v1       #curWallpaperIndex:I
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v7       #wallpaper:Lcom/android/server/wm/WindowState;
    .restart local v8       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/RuntimeException;
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error positioning surface of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pos=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v1           #curWallpaperIndex:I
    .end local v4           #e:Ljava/lang/RuntimeException;
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v8           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_8
    return-void
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 19
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    const/4 v10, 0x0

    .local v10, changed:Z
    const/4 v12, 0x0

    .local v12, rawChanged:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .local v15, wpx:F
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move/from16 v16, v0

    .local v16, wpxs:F
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v9, v2, p2

    .local v9, availw:I
    if-lez v9, :cond_b

    int-to-float v2, v9

    mul-float/2addr v2, v15

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .local v11, offset:I
    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v2, v11, :cond_c

    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_0

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/4 v12, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move/from16 v17, v0

    .local v17, wpy:F
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move/from16 v18, v0

    .local v18, wpys:F
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v8, v2, p3

    .local v8, availh:I
    if-lez v8, :cond_f

    int-to-float v2, v8

    mul-float v2, v2, v17

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v2, v11, :cond_3

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v17

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_5

    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v12, 0x1

    :cond_5
    if-eqz v12, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    if-eqz p4, :cond_6

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .local v13, start:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    const-wide/16 v2, 0x96

    add-long/2addr v2, v13

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v13           #start:J
    :cond_8
    :goto_8
    return v10

    .end local v8           #availh:I
    .end local v9           #availw:I
    .end local v11           #offset:I
    .end local v15           #wpx:F
    .end local v16           #wpxs:F
    .end local v17           #wpy:F
    .end local v18           #wpys:F
    :cond_9
    const/high16 v15, 0x3f00

    goto/16 :goto_0

    .restart local v15       #wpx:F
    :cond_a
    const/high16 v16, -0x4080

    goto/16 :goto_1

    .restart local v9       #availw:I
    .restart local v16       #wpxs:F
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .restart local v11       #offset:I
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_d
    const/high16 v17, 0x3f00

    goto/16 :goto_4

    .restart local v17       #wpy:F
    :cond_e
    const/high16 v18, -0x4080

    goto/16 :goto_5

    .restart local v8       #availh:I
    .restart local v18       #wpys:F
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto :goto_8

    .restart local v13       #start:J
    :catch_1
    move-exception v2

    goto :goto_7
.end method

.method updateWallpaperVisibilityLocked()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .local v5, visible:Z
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, v5, :cond_1

    if-nez v5, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_1
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, curWallpaperIndex:I
    :goto_1
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_2

    invoke-virtual {p0, v6, v3, v2, v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_2
    invoke-virtual {p0, v6, v5}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_1

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_3
    move v7, v9

    goto :goto_0

    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, m:I
    :goto_0
    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens out of sync: external is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External token not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid internal token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_5
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .locals 8
    .parameter "client"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, focusedWindow:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_2
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v6

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_4
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 12
    .parameter "client"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x1

    .local v6, result:Z
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wm/WindowState;

    .local v8, windows:[Lcom/android/server/wm/WindowState;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2
    array-length v1, v8

    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v7, v8, v3

    .local v7, w:Lcom/android/server/wm/WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/wm/WindowState;
    .end local v8           #windows:[Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_4
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const/4 v6, 0x0

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_3
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_4
    throw v9

    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_4
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return v10

    :cond_1
    const/4 v10, 0x1

    .local v10, success:Z
    const/4 v3, 0x0

    .local v3, data:Landroid/os/Parcel;
    const/4 v9, 0x0

    .local v9, reply:Landroid/os/Parcel;
    const/4 v7, 0x0

    .local v7, out:Ljava/io/BufferedWriter;
    const/16 v12, 0x20

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .local v6, index:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, code:Ljava/lang/String;
    const/16 v12, 0x10

    invoke-static {v2, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    .local v5, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_5

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .local v11, window:Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_6

    const/4 v10, 0x0

    .end local v10           #success:Z
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    goto :goto_0

    .end local v11           #window:Lcom/android/server/wm/WindowState;
    .restart local v10       #success:Z
    :cond_5
    :try_start_2
    const-string p3, ""

    goto :goto_1

    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v12, "android.view.IWindow"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, binder:Landroid/os/IBinder;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v3, v9, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v7           #out:Ljava/io/BufferedWriter;
    .local v8, out:Ljava/io/BufferedWriter;
    :try_start_3
    const-string v12, "DONE\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_9
    if-eqz v7, :cond_0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v12

    goto/16 :goto_0

    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #hashCode:I
    .end local v6           #index:I
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    :catch_2
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not send command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with parameters "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_b
    if-eqz v7, :cond_0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v12

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_d
    if-eqz v7, :cond_e

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_e
    :goto_4
    throw v12

    :catch_4
    move-exception v13

    goto :goto_4

    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v2       #code:Ljava/lang/String;
    .restart local v5       #hashCode:I
    .restart local v6       #index:I
    .restart local v8       #out:Ljava/io/BufferedWriter;
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v8       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V
    .locals 7
    .parameter "token"
    .parameter "callback"

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v3, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .end local v0           #m:Landroid/os/Message;
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_0
    monitor-exit v4

    return-void

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .parameter "window"
    .parameter "result"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .parameter "window"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 5
    .parameter "watcher"

    .prologue
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .local v1, win:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_0

    throw v0

    :cond_0
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1       #win:Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz p1, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_3

    throw v0

    :cond_3
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .locals 1
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
