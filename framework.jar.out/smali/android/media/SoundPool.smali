.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$SoundPoolStub;,
        Landroid/media/SoundPool$SoundPoolImpl;,
        Landroid/media/SoundPool$SoundPoolDelegate;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/media/SoundPool$SoundPoolDelegate;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .parameter "maxStreams"
    .parameter "streamType"
    .parameter "srcQuality"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "config.disable_media"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/SoundPool$SoundPoolStub;

    invoke-direct {v0}, Landroid/media/SoundPool$SoundPoolStub;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/media/SoundPool$SoundPoolImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolImpl;-><init>(Landroid/media/SoundPool;III)V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    goto :goto_0
.end method


# virtual methods
.method public final autoPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoPause()V

    return-void
.end method

.method public final autoResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoResume()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "priority"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 1
    .parameter "afd"
    .parameter "priority"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 7
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "priority"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1
    .parameter "path"
    .parameter "priority"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final pause(I)V
    .locals 1
    .parameter "streamID"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->pause(I)V

    return-void
.end method

.method public final play(IFFIIF)I
    .locals 7
    .parameter "soundID"
    .parameter "leftVolume"
    .parameter "rightVolume"
    .parameter "priority"
    .parameter "loop"
    .parameter "rate"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->release()V

    return-void
.end method

.method public final resume(I)V
    .locals 1
    .parameter "streamID"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->resume(I)V

    return-void
.end method

.method public final setLoop(II)V
    .locals 1
    .parameter "streamID"
    .parameter "loop"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setLoop(II)V

    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method public final setPriority(II)V
    .locals 1
    .parameter "streamID"
    .parameter "priority"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setPriority(II)V

    return-void
.end method

.method public final setRate(IF)V
    .locals 1
    .parameter "streamID"
    .parameter "rate"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setRate(IF)V

    return-void
.end method

.method public setVolume(IF)V
    .locals 0
    .parameter "streamID"
    .parameter "volume"

    .prologue
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    return-void
.end method

.method public final setVolume(IFF)V
    .locals 1
    .parameter "streamID"
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->setVolume(IFF)V

    return-void
.end method

.method public final stop(I)V
    .locals 1
    .parameter "streamID"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->stop(I)V

    return-void
.end method

.method public final unload(I)Z
    .locals 1
    .parameter "soundID"

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->unload(I)Z

    move-result v0

    return v0
.end method
