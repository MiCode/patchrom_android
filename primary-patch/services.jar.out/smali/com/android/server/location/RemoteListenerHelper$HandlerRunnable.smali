.class Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private final mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p3, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    invoke-interface {v1, v2}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in monitored listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
