.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final CDMA_HOME_NETWORK:I = 0x1

.field private static final CDMA_ROAMING_NETWORK:I = 0x2

.field private static final DBG:Z

.field private static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .param p3, "homeIDD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .local v3, "number":Ljava/lang/String;
    const/4 v0, -0x1

    .local v0, "countryCode":I
    const-string v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "numberNoNBPCD":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v7, 0x64

    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :goto_0
    return v7

    .restart local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v6}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v7, 0x66

    goto :goto_0

    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v7, 0x65

    goto :goto_0

    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "exitCode":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "numberNoIDD":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    iput-object v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    const/16 v7, 0x67

    goto :goto_0

    .end local v1    # "exitCode":Ljava/lang/String;
    .end local v5    # "numberNoIDD":Ljava/lang/String;
    :cond_4
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v7, 0x68

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .locals 14
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0xb

    const/4 v12, 0x7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .local v5, "isNANP":Z
    iget-object v6, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v12, :cond_2

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "firstChar":C
    const/16 v9, 0x32

    if-lt v1, v9, :cond_0

    const/16 v9, 0x39

    if-gt v1, v9, :cond_0

    const/4 v5, 0x1

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v5, 0x0

    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_8

    .end local v1    # "firstChar":C
    :goto_1
    return v8

    .restart local v0    # "c":C
    .restart local v1    # "firstChar":C
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "c":C
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_3

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v13, :cond_4

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v9

    goto :goto_1

    :cond_4
    const-string v11, "+"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v13, :cond_5

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x4

    goto :goto_1

    :cond_5
    const-string v8, "011"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v11, 0xe

    if-ne v8, v11, :cond_8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "idd":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "number2":Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v7}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iput-object v4, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    const/4 v8, 0x5

    goto/16 :goto_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idd":Ljava/lang/String;
    .end local v7    # "number2":Ljava/lang/String;
    :cond_8
    move v8, v10

    goto/16 :goto_1
.end method

.method private static compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z
    .locals 7
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "serviceGid1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .local v0, "gid1":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SmsNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareGid1 serviceGid is empty, return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v2

    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "gid_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "SmsNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " gid1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " serviceGid1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    :cond_4
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_5

    const-string v5, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareGid1 is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_6

    const-string v4, "Same"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v3, v2

    .restart local v3    # "ret":I
    goto :goto_0

    .end local v3    # "ret":I
    :cond_6
    const-string v4, "Different"

    goto :goto_1
.end method

.method public static filterDestAddr(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SmsNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter filterDestAddr. destAddr=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const-string v4, "SmsNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destAddr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a global phone number! Nothing changed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    :cond_2
    :goto_0
    return-object v3

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .local v1, "networkOperator":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    .local v2, "networkType":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "networkMcc":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .end local v0    # "networkMcc":Ljava/lang/String;
    .end local v2    # "networkType":I
    :cond_4
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_5

    const-string v5, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destAddr is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_6

    const-string v4, "formatted."

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_7

    move-object v4, v3

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v3, :cond_2

    move-object v3, p1

    goto :goto_0

    :cond_6
    const-string v4, "not formatted."

    goto :goto_1

    :cond_7
    move-object v4, p1

    goto :goto_2
.end method

.method private static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "number is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "activeMcc is null or empty!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "networkPortionNumber":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Number is invalid!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    new-instance v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    .local v6, "numberEntry":Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    move-result v4

    .local v4, "nanpState":I
    sget-boolean v8, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "SmsNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NANP type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v8, 0x1

    if-eq v4, v8, :cond_6

    const/4 v8, 0x2

    if-eq v4, v8, :cond_6

    const/4 v8, 0x3

    if-ne v4, v8, :cond_7

    .end local v5    # "networkPortionNumber":Ljava/lang/String;
    :cond_6
    :goto_0
    return-object v5

    .restart local v5    # "networkPortionNumber":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x4

    if-ne v4, v8, :cond_9

    const/4 v8, 0x1

    if-eq p3, v8, :cond_8

    const/4 v8, 0x2

    if-ne p3, v8, :cond_6

    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_9
    const/4 v8, 0x5

    if-ne v4, v8, :cond_d

    const/4 v8, 0x1

    if-eq p3, v8, :cond_6

    if-nez p3, :cond_b

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "iddLength":I
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v2    # "iddLength":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    const/4 v8, 0x2

    if-ne p3, v8, :cond_d

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_c

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .restart local v2    # "iddLength":I
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v2    # "iddLength":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    const-string v8, "011"

    invoke-static {p0, v6, v0, v8}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v3

    .local v3, "internationalState":I
    sget-boolean v8, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v8, :cond_e

    const-string v8, "SmsNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "International type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v7, 0x0

    .local v7, "returnNumber":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    const-string v8, "+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    if-eq p3, v8, :cond_f

    const/4 v8, 0x2

    if-ne p3, v8, :cond_10

    :cond_f
    const-string v8, "+011"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_10
    :goto_3
    if-nez v7, :cond_11

    move-object v7, v5

    :cond_11
    move-object v5, v7

    goto/16 :goto_0

    :pswitch_0
    if-nez p3, :cond_10

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_2
    if-eqz p3, :cond_12

    const/4 v8, 0x2

    if-ne p3, v8, :cond_10

    :cond_12
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .restart local v2    # "iddLength":I
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .end local v2    # "iddLength":I
    :cond_13
    const/4 v2, 0x0

    goto :goto_4

    :pswitch_3
    iget v1, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .local v1, "countryCode":I
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-lt v8, v9, :cond_10

    const/4 v8, 0x1

    if-eq v1, v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .end local v1    # "countryCode":I
    :pswitch_4
    move-object v7, v5

    goto :goto_3

    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAllCountryCodes(Landroid/content/Context;)[I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Country_Code"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    const/4 v9, 0x0

    .local v9, "i":I
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .local v6, "countryCode":I
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput v6, v0, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, "length":I
    sget v0, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v11, v0, :cond_1

    sput v11, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .end local v6    # "countryCode":I
    .end local v10    # "i":I
    .end local v11    # "length":I
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v2    # "projection":[Ljava/lang/String;
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SmsNumberUtils"

    const-string v1, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    move-object v7, v6

    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    .end local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "IDD"

    aput-object v0, v2, v1

    const-string v0, "MCC"

    aput-object v0, v2, v5

    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v3, "MCC=?"

    new-array v4, v5, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "idd":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v10    # "idd":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SmsNumberUtils"

    const-string v1, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "e":Landroid/database/SQLException;
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "SmsNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", all IDDs = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v7, v6

    .restart local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .end local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .local v2, "countryCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    move-result-object v0

    .local v0, "allCCs":[I
    if-nez v0, :cond_1

    .end local v0    # "allCCs":[I
    .end local v2    # "countryCode":I
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "allCCs":[I
    .restart local v2    # "countryCode":I
    :cond_1
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v1, v6, [I

    .local v1, "ccArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v6, :cond_2

    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_0

    aget v5, v0, v3

    .local v5, "tempCC":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v4, v6, :cond_5

    aget v6, v1, v4

    if-ne v5, v6, :cond_4

    sget-boolean v6, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "SmsNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Country code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v2, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getNetworkType(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 5
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v0, -0x1

    .local v0, "networkType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .local v1, "phoneType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmsNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning! unknown mPhoneType value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNumberPlanType(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number Plan type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "numberPlanType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string v0, "NP_NANP_LOCAL"

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string v0, "NP_NANP_AREA_LOCAL"

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const-string v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    const-string v0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    const-string v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    const-string v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_5
    const/16 v1, 0x64

    if-ne p0, v1, :cond_6

    const-string v0, "NP_NBPCD_IDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_6
    const/16 v1, 0x65

    if-ne p0, v1, :cond_7

    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_7
    const/16 v1, 0x66

    if-ne p0, v1, :cond_8

    const-string v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_8
    const/16 v1, 0x67

    if-ne p0, v1, :cond_9

    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_9
    const/16 v1, 0x68

    if-ne p0, v1, :cond_a

    const-string v0, "NP_CC_AREA_LOCAL"

    goto :goto_0

    :cond_a
    const-string v0, "Unknown type"

    goto :goto_0
.end method

.method private static inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .locals 4
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .local v0, "countryCode":I
    iget-object v2, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .local v1, "result":Z
    :goto_0
    return v1

    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isInternationalRoaming(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 7
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "operatorIsoCountry":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "simIsoCountry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .local v0, "internationalRoaming":Z
    :goto_0
    if-eqz v0, :cond_0

    const-string v5, "us"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "vi"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    :cond_0
    :goto_1
    return v0

    .end local v0    # "internationalRoaming":Z
    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0    # "internationalRoaming":Z
    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    const-string v5, "vi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "us"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method private static isNANP(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needToConvert(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 8
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .local v0, "bNeedToConvert":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v2, v1

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "needToConvertArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    array-length v4, v3

    if-ne v4, v6, :cond_1

    const-string v4, "true"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_1
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v6

    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "true"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v1    # "i":I
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_2
    return v0
.end method
