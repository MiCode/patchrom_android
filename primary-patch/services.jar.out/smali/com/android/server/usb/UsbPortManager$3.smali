.class Lcom/android/server/usb/UsbPortManager$3;
.super Landroid/os/UEventObserver;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$3;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$3;->this$0:Lcom/android/server/usb/UsbPortManager;

    # invokes: Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$300(Lcom/android/server/usb/UsbPortManager;)V

    return-void
.end method
