.class final Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlsaDevice"
.end annotation


# static fields
.field public static final TYPE_CAPTURE:I = 0x2

.field public static final TYPE_MIDI:I = 0x3

.field public static final TYPE_PLAYBACK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public mCard:I

.field public mDevice:I

.field public mType:I

.field final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;III)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "card"    # I
    .param p4, "device"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    iput p4, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .local v0, "other":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlsaDevice: [card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
