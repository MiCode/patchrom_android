.class public Landroid/support/v4/media/session/MediaSessionCompatApi8;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi8.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mbr"    # Landroid/content/ComponentName;

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mbr"    # Landroid/content/ComponentName;

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method
