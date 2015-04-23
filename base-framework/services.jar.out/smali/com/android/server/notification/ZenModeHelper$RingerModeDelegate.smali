.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Lcom/android/server/notification/ZenModeHelper$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .prologue
    or-int/lit8 p1, p1, 0x26

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    or-int/lit8 p1, p1, 0x18

    :goto_0
    return p1

    :cond_0
    and-int/lit8 p1, p1, -0x19

    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p2

    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    move v0, v4

    .local v0, "isChange":Z
    :goto_0
    if-ne p4, v4, :cond_3

    move v1, v4

    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const-string v7, "ringerModeExternal"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static {v4, v2, v6, v7, v5}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v3

    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_2
    move v0, v5

    goto :goto_0

    .restart local v0    # "isChange":Z
    :cond_3
    move v1, v5

    goto :goto_1

    .restart local v1    # "isVibrate":Z
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v2, 0x3

    :cond_4
    if-eqz v1, :cond_5

    move v3, v4

    :goto_3
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, p4

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v7, -0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x1

    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    if-eq v1, v7, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v5, 0x0

    const-string v6, "ringerModeInternal"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static {v4, v1, v5, v6, v3}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    :cond_1
    if-nez v0, :cond_2

    if-ne v1, v7, :cond_2

    if-eq p4, v2, :cond_3

    :cond_2
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    :cond_3
    return v2

    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_4
    move v0, v3

    goto :goto_0

    .restart local v0    # "isChange":Z
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_0

    iget-boolean v4, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v6, :cond_5

    const/4 v1, 0x3

    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-ne v4, v6, :cond_7

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
