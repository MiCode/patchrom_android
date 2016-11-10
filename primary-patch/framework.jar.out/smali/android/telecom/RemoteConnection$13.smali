.class Landroid/telecom/RemoteConnection$13;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$callerDisplayName:Ljava/lang/String;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConnection$13;->this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$13;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$13;->val$connection:Landroid/telecom/RemoteConnection;

    iput-object p4, p0, Landroid/telecom/RemoteConnection$13;->val$callerDisplayName:Ljava/lang/String;

    iput p5, p0, Landroid/telecom/RemoteConnection$13;->val$presentation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnection$13;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$13;->val$connection:Landroid/telecom/RemoteConnection;

    iget-object v2, p0, Landroid/telecom/RemoteConnection$13;->val$callerDisplayName:Ljava/lang/String;

    iget v3, p0, Landroid/telecom/RemoteConnection$13;->val$presentation:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/RemoteConnection$Callback;->onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    return-void
.end method
