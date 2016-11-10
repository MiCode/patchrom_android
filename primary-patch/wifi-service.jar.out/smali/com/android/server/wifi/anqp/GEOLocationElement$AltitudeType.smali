.class public final enum Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
.super Ljava/lang/Enum;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AltitudeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field public static final enum Floors:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field public static final enum Meters:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    const-string v1, "Meters"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Meters:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    const-string v1, "Floors"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Floors:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Meters:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Floors:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    return-object v0
.end method
