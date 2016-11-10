.class public Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpAddressType"
.end annotation


# static fields
.field public static final IPV4_DOUBLE_NAT:I = 0x4

.field public static final IPV4_NOT_AVAILABLE:I = 0x0

.field public static final IPV4_PORT_RESTRICTED:I = 0x2

.field public static final IPV4_PORT_RESTRICTED_DOUBLE_NAT:I = 0x6

.field public static final IPV4_PORT_RESTRICTED_SINGLE_NAT:I = 0x5

.field public static final IPV4_PORT_UNKNOWN:I = 0x7

.field public static final IPV4_PUBLIC:I = 0x1

.field public static final IPV4_SINGLE_NAT:I = 0x3

.field public static final IPV6_AVAILABLE:I = 0x1

.field public static final IPV6_NOT_AVAILABLE:I = 0x0

.field public static final IPV6_UNKNOWN:I = 0x2

.field private static final NULL_VALUE:I = -0x1


# instance fields
.field public availability:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIpv4Availability()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getIpv6Availability()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->getIpv6Availability()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->getIpv4Availability()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
