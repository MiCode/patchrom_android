.class Landroid/telecom/RemoteConnection$5;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConnection$5;->this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$5;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$5;->val$connection:Landroid/telecom/RemoteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnection$5;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$5;->val$connection:Landroid/telecom/RemoteConnection;

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection$Callback;->onDestroyed(Landroid/telecom/RemoteConnection;)V

    return-void
.end method
