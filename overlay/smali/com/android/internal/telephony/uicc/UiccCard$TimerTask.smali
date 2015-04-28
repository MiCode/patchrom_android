.class Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;
.super Ljava/util/TimerTask;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$t:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/app/AlertDialog;Ljava/util/Timer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;->val$t:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;->val$t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
