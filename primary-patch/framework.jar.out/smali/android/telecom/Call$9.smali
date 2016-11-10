.class Landroid/telecom/Call$9;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireConferenceableCallsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/Call$9;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$9;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$9;->val$call:Landroid/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/telecom/Call$9;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$9;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Landroid/telecom/Call$9;->this$0:Landroid/telecom/Call;

    # getter for: Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;
    invoke-static {v2}, Landroid/telecom/Call;->access$300(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call$Callback;->onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V

    return-void
.end method
