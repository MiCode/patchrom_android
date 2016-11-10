.class Lcom/android/server/wm/WindowManagerService$8;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$receiver:Lcom/android/internal/app/IAssistScreenshotReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/app/IAssistScreenshotReceiver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$8;->val$receiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplicationsInner(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->val$receiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-interface {v0, v6}, Lcom/android/internal/app/IAssistScreenshotReceiver;->send(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
