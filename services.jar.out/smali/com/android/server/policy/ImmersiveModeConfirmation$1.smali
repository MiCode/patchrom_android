.class Lcom/android/server/policy/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$800(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$802(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation;->saveSetting()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$900(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    return-void
.end method
