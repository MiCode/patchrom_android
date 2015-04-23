.class public final Landroid/media/midi/MidiDeviceInfo$PortInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortInfo"
.end annotation


# static fields
.field public static final TYPE_INPUT:I = 0x1

.field public static final TYPE_OUTPUT:I = 0x2


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPortNumber:I

.field private final mPortType:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "portNumber"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    iput p2, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "name":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    return v0
.end method
