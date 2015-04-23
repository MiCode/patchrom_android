.class public final enum Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
.super Ljava/lang/Enum;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

.field public static final enum IEEE:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

.field public static final enum x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    const-string v1, "IEEE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->IEEE:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    const-string v1, "x509v3"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->IEEE:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->$VALUES:[Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->$VALUES:[Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    invoke-virtual {v0}, [Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    return-object v0
.end method
