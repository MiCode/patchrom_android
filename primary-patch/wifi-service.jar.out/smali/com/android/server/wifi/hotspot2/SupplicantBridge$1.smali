.class synthetic Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$wifi$anqp$eap$EAP$AuthInfoID:[I

.field static final synthetic $SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->values()[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->values()[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$AuthInfoID:[I

    :try_start_5
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$AuthInfoID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$AuthInfoID:[I

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
