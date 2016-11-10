.class Landroid/telecom/RemoteConnection$7;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->onPostDialChar(C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$nextChar:C


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConnection$7;->this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$7;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$7;->val$connection:Landroid/telecom/RemoteConnection;

    iput-char p4, p0, Landroid/telecom/RemoteConnection$7;->val$nextChar:C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnection$7;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$7;->val$connection:Landroid/telecom/RemoteConnection;

    iget-char v2, p0, Landroid/telecom/RemoteConnection$7;->val$nextChar:C

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onPostDialChar(Landroid/telecom/RemoteConnection;C)V

    return-void
.end method
