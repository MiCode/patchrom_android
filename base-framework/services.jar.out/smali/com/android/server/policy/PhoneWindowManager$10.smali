.class Lcom/android/server/policy/PhoneWindowManager$10;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/InputEventReceiver$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method
