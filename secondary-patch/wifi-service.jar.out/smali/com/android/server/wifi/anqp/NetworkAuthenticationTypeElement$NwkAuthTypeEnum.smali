.class public final enum Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
.super Ljava/lang/Enum;
.source "NetworkAuthenticationTypeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NwkAuthTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field public static final enum DNSRedirection:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field public static final enum HTTPRedirection:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field public static final enum OnLineEnrollment:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

.field public static final enum TermsAndConditions:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    const-string v1, "TermsAndConditions"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->TermsAndConditions:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    new-instance v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    const-string v1, "OnLineEnrollment"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->OnLineEnrollment:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    new-instance v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    const-string v1, "HTTPRedirection"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->HTTPRedirection:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    new-instance v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    const-string v1, "DNSRedirection"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->DNSRedirection:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    new-instance v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    const-string v1, "Reserved"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->Reserved:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    sget-object v1, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->TermsAndConditions:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->OnLineEnrollment:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->HTTPRedirection:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->DNSRedirection:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->Reserved:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->$VALUES:[Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->$VALUES:[Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    return-object v0
.end method
