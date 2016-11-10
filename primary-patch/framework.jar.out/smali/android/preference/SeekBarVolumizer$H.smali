.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->access$302(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    # setter for: Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->access$402(Landroid/preference/SeekBarVolumizer;I)I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-gez v1, :cond_2

    .local v0, "muted":Z
    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # setter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->access$502(Landroid/preference/SeekBarVolumizer;Z)Z

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->isZenMuted()Z
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$700(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .end local v0    # "muted":Z
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postUpdateSlider(IIZ)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    .prologue
    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v1, -0x1

    :goto_0
    mul-int v0, p2, v1

    .local v0, "arg2":I
    invoke-virtual {p0, v2, p1, v0}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .end local v0    # "arg2":I
    :cond_0
    move v1, v2

    goto :goto_0
.end method
