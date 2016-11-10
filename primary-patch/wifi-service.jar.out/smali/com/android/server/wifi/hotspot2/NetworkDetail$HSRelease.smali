.class public final enum Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
.super Ljava/lang/Enum;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/NetworkDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HSRelease"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public static final enum R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public static final enum R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public static final enum Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const-string v1, "R1"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const-string v1, "R2"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    invoke-virtual {v0}, [Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    return-object v0
.end method
