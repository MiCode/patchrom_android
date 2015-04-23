.class Landroid/accessibilityservice/AccessibilityService$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # setter for: Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I
    invoke-static {v1, p1}, Landroid/accessibilityservice/AccessibilityService;->access$002(Landroid/accessibilityservice/AccessibilityService;I)I

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    # setter for: Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;
    invoke-static {v1, p2}, Landroid/accessibilityservice/AccessibilityService;->access$102(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .local v0, "wm":Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(I)Z

    move-result v0

    return v0
.end method

.method public onInterrupt()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$1;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    return-void
.end method
