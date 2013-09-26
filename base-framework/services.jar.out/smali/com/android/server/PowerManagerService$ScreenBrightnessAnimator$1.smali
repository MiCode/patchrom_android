.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-nez v11, :cond_5

    move v0, v9

    .local v0, brightnessMode:I
    :goto_0
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_7

    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, mask:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .local v8, value:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, tStart:J
    and-int/lit8 v11, v4, 0x2

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v8, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v2, v11, v6

    .local v2, elapsed:J
    and-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_1
    and-int/lit8 v11, v4, 0x8

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_2
    const-wide/16 v11, 0x64

    cmp-long v11, v2, v11

    if-lez v11, :cond_3

    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Excessive delay setting brightness: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms, mask="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v11, 0x10

    cmp-long v11, v2, v11

    if-gez v11, :cond_6

    const/16 v1, 0x10

    .local v1, delay:I
    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v8, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v9, v4, v10, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$5000(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v8           #value:I
    :cond_4
    :goto_2
    return-void

    .end local v0           #brightnessMode:I
    :cond_5
    move v0, v10

    goto :goto_0

    .restart local v0       #brightnessMode:I
    .restart local v2       #elapsed:J
    .restart local v4       #mask:I
    .restart local v6       #tStart:J
    .restart local v8       #value:I
    :cond_6
    move v1, v9

    goto :goto_1

    .restart local v1       #delay:I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v8           #value:I
    :cond_7
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_4

    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, mode:I
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v9, v5}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;I)V

    goto :goto_2
.end method
