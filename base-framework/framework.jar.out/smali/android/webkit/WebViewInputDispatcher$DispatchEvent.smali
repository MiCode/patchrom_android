.class final Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DispatchEvent"
.end annotation


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field public mEventType:I

.field public mFlags:I

.field public mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field public mTimeoutTime:J

.field public mWebKitScale:F

.field public mWebKitXOffset:I

.field public mWebKitYOffset:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewInputDispatcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;-><init>()V

    return-void
.end method
