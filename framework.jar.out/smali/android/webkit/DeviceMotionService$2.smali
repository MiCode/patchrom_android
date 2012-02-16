.class Landroid/webkit/DeviceMotionService$2;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/DeviceMotionService;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/webkit/DeviceMotionService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Landroid/webkit/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/DeviceMotionService$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkit/DeviceMotionService;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 102
    sget-boolean v0, Landroid/webkit/DeviceMotionService$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mIsRunning:Z
    invoke-static {v0}, Landroid/webkit/DeviceMotionService;->access$000(Landroid/webkit/DeviceMotionService;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;
    invoke-static {v0}, Landroid/webkit/DeviceMotionService;->access$100(Landroid/webkit/DeviceMotionService;)Landroid/webkit/DeviceMotionAndOrientationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v2}, Landroid/webkit/DeviceMotionService;->access$200(Landroid/webkit/DeviceMotionService;)[F

    move-result-object v2

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    iget-object v3, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v3}, Landroid/webkit/DeviceMotionService;->access$200(Landroid/webkit/DeviceMotionService;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/lang/Double;

    iget-object v4, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v4}, Landroid/webkit/DeviceMotionService;->access$200(Landroid/webkit/DeviceMotionService;)[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    const-wide/high16 v4, 0x4059

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/DeviceMotionAndOrientationManager;->onMotionChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V

    .line 106
    iget-object v0, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/DeviceMotionService;->access$400(Landroid/webkit/DeviceMotionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #getter for: Landroid/webkit/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkit/DeviceMotionService;->access$300(Landroid/webkit/DeviceMotionService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    iget-object v0, p0, Landroid/webkit/DeviceMotionService$2;->this$0:Landroid/webkit/DeviceMotionService;

    #setter for: Landroid/webkit/DeviceMotionService;->mHaveSentErrorEvent:Z
    invoke-static {v0, v6}, Landroid/webkit/DeviceMotionService;->access$502(Landroid/webkit/DeviceMotionService;Z)Z

    .line 109
    return-void
.end method
