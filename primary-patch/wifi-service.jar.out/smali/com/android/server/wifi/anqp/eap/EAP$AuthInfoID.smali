.class public final enum Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
.super Ljava/lang/Enum;
.source "EAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/EAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthInfoID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "Undefined"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "ExpandedEAPMethod"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "NonEAPInnerAuthType"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "InnerAuthEAPMethodType"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "ExpandedInnerEAPMethod"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "CredentialType"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "TunneledEAPMethodCredType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const-string v1, "VendorSpecific"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method
