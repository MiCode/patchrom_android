.class public final enum Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;
.super Ljava/lang/Enum;
.source "OSUProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/OSUProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSUMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

.field public static final enum OmaDm:Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

.field public static final enum SoapXml:Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    const-string v1, "OmaDm"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->OmaDm:Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    new-instance v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    const-string v1, "SoapXml"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->SoapXml:Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    sget-object v1, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->OmaDm:Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->SoapXml:Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->$VALUES:[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->$VALUES:[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    return-object v0
.end method
