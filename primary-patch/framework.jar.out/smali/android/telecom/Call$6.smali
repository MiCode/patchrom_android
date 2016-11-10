.class Landroid/telecom/Call$6;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$videoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/Call$6;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$6;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$6;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$6;->val$videoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/telecom/Call$6;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$6;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$6;->val$videoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    return-void
.end method
