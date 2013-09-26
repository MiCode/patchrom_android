.class Landroid/webkit/WebViewCore$TouchEventData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchEventData"
.end annotation


# instance fields
.field mAction:I

.field mActionIndex:I

.field mIds:[I

.field mMetaState:I

.field mMotionEvent:Landroid/view/MotionEvent;

.field mNativeLayer:I

.field mNativeLayerRect:Landroid/graphics/Rect;

.field mNativeResult:Z

.field mPoints:[Landroid/graphics/Point;

.field mPointsInView:[Landroid/graphics/Point;

.field mReprocess:Z

.field mSequence:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    return-void
.end method
