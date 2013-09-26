.class Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
