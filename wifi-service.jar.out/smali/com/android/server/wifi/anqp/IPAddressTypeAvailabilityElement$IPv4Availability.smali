.class public final enum Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
.super Ljava/lang/Enum;
.source "IPAddressTypeAvailabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPv4Availability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "NotAvailable"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "Public"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "PortRestricted"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "SingleNAT"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "DoubleNAT"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "PortRestrictedAndSingleNAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "PortRestrictedAndDoubleNAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const-string v1, "Unknown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    return-object v0
.end method
