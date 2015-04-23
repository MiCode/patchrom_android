.class public final Landroid/hardware/display/VirtualDisplay;
.super Ljava/lang/Object;
.source "VirtualDisplay.java"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay{display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
