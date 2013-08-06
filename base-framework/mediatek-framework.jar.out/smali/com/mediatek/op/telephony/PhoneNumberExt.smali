.class public Lcom/mediatek/op/telephony/PhoneNumberExt;
.super Ljava/lang/Object;
.source "PhoneNumberExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IPhoneNumberExt;


# static fields
.field static final TAG:Ljava/lang/String; = "PhoneNumberExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "PhoneNumberExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCustomizedEmergencyNumber number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " plusNumber:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numberPlus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "000"

    aput-object v7, v2, v6

    const-string v7, "08"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, "110"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "118"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "119"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "999"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "120"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "122"

    aput-object v8, v2, v7

    .local v2, emergencyNumList:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .local v1, emergencyNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .restart local v1       #emergencyNum:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method public isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "PhoneNumberExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCustomizedEmergencyNumberExt number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " plusNumber:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numberPlus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "112"

    aput-object v7, v2, v6

    const-string v7, "911"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, "000"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "08"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "110"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "118"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "119"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "999"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, "120"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, "122"

    aput-object v8, v2, v7

    .local v2, emergencyNumList:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .local v1, emergencyNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .restart local v1       #emergencyNum:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method public isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 10
    .parameter "dialString"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "PhoneNumberExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSpecialEmergencyNumber dialString:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "000"

    aput-object v7, v2, v6

    const-string v7, "08"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, "110"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "118"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "119"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "999"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "120"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "122"

    aput-object v8, v2, v7

    .local v2, emergencyNumList:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, emergencyNum:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1           #emergencyNum:Ljava/lang/String;
    :goto_1
    return v5

    .restart local v1       #emergencyNum:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const-string v0, "PhoneNumberExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
