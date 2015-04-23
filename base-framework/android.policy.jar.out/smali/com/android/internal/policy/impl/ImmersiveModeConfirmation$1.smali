.class Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmAction(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iput-object p2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->val$pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$600(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$600(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->saveSetting()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$700(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    return-void
.end method
