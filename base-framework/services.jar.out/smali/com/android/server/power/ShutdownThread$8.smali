.class final Lcom/android/server/power/ShutdownThread$8;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    const-string v0, "ShutdownThread"

    const-string v1, "onServiceConnected() entry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/power/IPreShutdown$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/power/IPreShutdown;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$802(Lcom/android/server/power/IPreShutdown;)Lcom/android/server/power/IPreShutdown;

    const-string v0, "ShutdownThread"

    const-string v1, "onServiceConnected() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    const-string v0, "ShutdownThread"

    const-string v1, "onServiceDisconnected() entry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$802(Lcom/android/server/power/IPreShutdown;)Lcom/android/server/power/IPreShutdown;

    const-string v0, "ShutdownThread"

    const-string v1, "onServiceDisconnected() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
