.class final Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x1

.field private static final SHOW:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleShow(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$900(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #calls: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
