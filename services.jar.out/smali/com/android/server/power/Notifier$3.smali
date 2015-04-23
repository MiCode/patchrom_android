.class Lcom/android/server/power/Notifier$3;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$3;->val$why:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$3;->val$why:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->startedGoingToSleep(I)V

    return-void
.end method
