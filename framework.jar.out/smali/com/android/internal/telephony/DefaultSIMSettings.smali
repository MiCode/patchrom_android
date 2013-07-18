.class public Lcom/android/internal/telephony/DefaultSIMSettings;
.super Ljava/lang/Object;
.source "DefaultSIMSettings.java"


# static fields
.field public static final ACTION_ON_SIM_DETECTED:Ljava/lang/String; = "ACTION_ON_SIM_DETECTED"

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastDefaultSIMRemoved(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simDetectStatus"

    const-string v2, "REMOVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [REMOVE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public static broadCastNewSIMDetected(II)V
    .locals 3
    .parameter "nSIMCount"
    .parameter "nNewSIMSlot"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simDetectStatus"

    const-string v2, "NEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "newSIMSlot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [NEW, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public static broadCastSIMInsertedStatus(I)V
    .locals 3
    .parameter "nSIMInsertStatus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public static broadCastSIMSwapped(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simDetectStatus"

    const-string v2, "SWAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [SWAP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method private static isSIMRemoved(JJJ)Z
    .locals 3
    .parameter "defSIMId"
    .parameter "curSIM1"
    .parameter "curSIM2"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p0, p2

    if-eqz v1, :cond_0

    cmp-long v1, p0, p4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSIMSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 54
    .parameter "context"
    .parameter "phone"
    .parameter "iccid1"
    .parameter "iccid2"
    .parameter "is3GSwitched"

    .prologue
    const-class v53, Lcom/android/internal/telephony/DefaultSIMSettings;

    monitor-enter v53

    :try_start_0
    const-string v11, "onAllIccidQueryComplete start"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .local v19, contentResolver:Landroid/content/ContentResolver;
    const/16 v39, 0x0

    .local v39, oldIccIdInSlot1:Ljava/lang/String;
    const/16 v40, 0x0

    .local v40, oldIccIdInSlot2:Ljava/lang/String;
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const/16 v30, 0x1

    .local v30, isSIM1Inserted:Z
    :goto_0
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_e

    const/16 v31, 0x1

    .local v31, isSIM2Inserted:Z
    :goto_1
    const/16 v50, 0x0

    .local v50, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    const/16 v49, 0x0

    .local v49, smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    :try_start_1
    const-class v11, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v50, v0

    const-class v11, Lcom/mediatek/common/sms/ISmsSimSettingExt;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/mediatek/common/sms/ISmsSimSettingExt;

    move-object/from16 v49, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v41

    .local v41, oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    if-eqz v41, :cond_f

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v39, v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete old IccId In Slot0 is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    if-eqz v30, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    new-instance v52, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v52

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .local v52, value:Landroid/content/ContentValues;
    const-string v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v52

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v52

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete reset Slot0 to -1, iccid1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .end local v52           #value:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v42

    .local v42, oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v42, :cond_10

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v40, v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete old IccId In Slot1 is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    if-eqz v31, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    new-instance v52, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v52

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v52       #value:Landroid/content/ContentValues;
    const-string v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v52

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v42

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v52

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete reset Slot1 to -1, iccid2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .end local v52           #value:Landroid/content/ContentValues;
    :cond_5
    :goto_4
    if-nez v39, :cond_6

    const-string v39, ""

    :cond_6
    if-nez v40, :cond_7

    const-string v40, ""

    :cond_7
    const/16 v34, 0x0

    .local v34, nNewCardCount:I
    const/16 v35, 0x0

    .local v35, nNewSIMStatus:I
    const/16 v33, 0x0

    .local v33, mTestSIMInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz p2, :cond_8

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    :cond_8
    const-string v11, "onAllIccidQueryComplete No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_9
    :goto_5
    if-eqz p3, :cond_a

    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    :cond_a
    const-string v11, "onAllIccidQueryComplete No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_b
    :goto_6
    const-wide/16 v5, -0x3

    .local v5, simIdForSlot1:J
    const-wide/16 v7, -0x3

    .local v7, simIdForSlot2:J
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v47

    .local v47, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez v47, :cond_1b

    const/16 v36, 0x0

    .local v36, nSIMCount:I
    :goto_7
    const/16 v28, 0x0

    .local v28, i:I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v36

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/provider/Telephony$SIMInfo;

    .local v51, temp:Landroid/provider/Telephony$SIMInfo;
    move-object/from16 v0, v51

    iget v11, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v11, :cond_1c

    move-object/from16 v0, v51

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :cond_c
    :goto_9
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .end local v5           #simIdForSlot1:J
    .end local v7           #simIdForSlot2:J
    .end local v28           #i:I
    .end local v30           #isSIM1Inserted:Z
    .end local v31           #isSIM2Inserted:Z
    .end local v33           #mTestSIMInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v34           #nNewCardCount:I
    .end local v35           #nNewSIMStatus:I
    .end local v36           #nSIMCount:I
    .end local v41           #oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    .end local v42           #oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    .end local v47           #simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v49           #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .end local v50           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .end local v51           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_0

    .restart local v30       #isSIM1Inserted:Z
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_1

    .restart local v31       #isSIM2Inserted:Z
    .restart local v49       #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .restart local v50       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :catch_0
    move-exception v24

    .local v24, e:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .end local v19           #contentResolver:Landroid/content/ContentResolver;
    .end local v24           #e:Ljava/lang/Exception;
    .end local v30           #isSIM1Inserted:Z
    .end local v31           #isSIM2Inserted:Z
    .end local v39           #oldIccIdInSlot1:Ljava/lang/String;
    .end local v40           #oldIccIdInSlot2:Ljava/lang/String;
    .end local v49           #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .end local v50           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .end local p1
    :catchall_0
    move-exception v11

    monitor-exit v53

    throw v11

    .restart local v19       #contentResolver:Landroid/content/ContentResolver;
    .restart local v30       #isSIM1Inserted:Z
    .restart local v31       #isSIM2Inserted:Z
    .restart local v39       #oldIccIdInSlot1:Ljava/lang/String;
    .restart local v40       #oldIccIdInSlot2:Ljava/lang/String;
    .restart local v41       #oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    .restart local v49       #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .restart local v50       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .restart local p1
    :cond_f
    :try_start_3
    const-string v11, "onAllIccidQueryComplete No sim in slot0 for last time "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v42       #oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    :cond_10
    const-string v11, "onAllIccidQueryComplete No sim in slot1 for last time "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_4

    .restart local v33       #mTestSIMInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v34       #nNewCardCount:I
    .restart local v35       #nNewSIMStatus:I
    :cond_11
    const-string v11, "ff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v33

    if-eqz v33, :cond_13

    new-instance v52, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v52

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v52       #value:Landroid/content/ContentValues;
    const-string v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v52

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v52

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v52           #value:Landroid/content/ContentValues;
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    const-string v11, "onAllIccidQueryComplete special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_14
    :goto_a
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    add-int/lit8 v34, v34, 0x1

    or-int/lit8 v35, v35, 0x1

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_a

    :cond_16
    const-string v11, "ff"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_17

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v33

    if-eqz v33, :cond_18

    new-instance v52, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v52

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v52       #value:Landroid/content/ContentValues;
    const-string v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v52

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v52

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v52           #value:Landroid/content/ContentValues;
    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    const-string v11, "onAllIccidQueryComplete special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_19
    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    add-int/lit8 v34, v34, 0x1

    or-int/lit8 v35, v35, 0x2

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v11}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .restart local v5       #simIdForSlot1:J
    .restart local v7       #simIdForSlot2:J
    .restart local v47       #simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1b
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v36

    goto/16 :goto_7

    .restart local v28       #i:I
    .restart local v36       #nSIMCount:I
    .restart local v51       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1c
    move-object/from16 v0, v51

    iget v11, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    move-object/from16 v0, v51

    iget-wide v7, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_9

    .end local v51           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete simIdForSlot ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    if-lez v34, :cond_1e

    const-string v11, "onAllIccidQueryComplete New SIM detected. "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .local v17, airplaneMode:I
    if-lez v17, :cond_2b

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .end local v17           #airplaneMode:I
    :cond_1e
    :goto_c
    const-string v11, "video_call_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v43

    .local v43, oldVTDefaultSIM:J
    const-string v11, "voice_call_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .local v3, oldVoiceCallDefaultSIM:J
    const-string v11, "sms_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .local v9, oldSmsDefaultSIM:J
    const-string v11, "gprs_connection_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v37

    .local v37, oldGprsDefaultSIM:J
    const-string v11, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .local v18, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    move/from16 v0, v36

    if-le v0, v11, :cond_2e

    const-wide/16 v11, -0x5

    cmp-long v11, v3, v11

    if-nez v11, :cond_1f

    const-string v11, "voice_call_sim_setting"

    const-wide/16 v12, -0x1

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_1f
    const-wide/16 v11, -0x5

    cmp-long v11, v9, v11

    if-nez v11, :cond_20

    const-string v11, "sms_sim_setting"

    invoke-interface/range {v49 .. v49}, Lcom/mediatek/common/sms/ISmsSimSettingExt;->getSmsSimDefaultSetting()J

    move-result-wide v12

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_20
    const-wide/16 v11, -0x5

    cmp-long v11, v37, v11

    if-nez v11, :cond_21

    invoke-interface/range {v50 .. v50}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_2d

    if-eqz p4, :cond_2c

    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    :cond_21
    :goto_d
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    const-string v11, ""

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    :cond_22
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_32

    const-string v11, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    :cond_23
    const/16 v27, 0x1

    .local v27, hasSIMRemoved:Z
    :goto_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete. handling SIM detect dialog ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-wide/16 v20, -0x5

    .local v20, defSIM:J
    const/4 v11, 0x1

    move/from16 v0, v36

    if-le v0, v11, :cond_33

    const-wide/16 v20, -0x1

    :cond_24
    :goto_f
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_25

    const-string v11, "voice_call_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_25
    move-wide v11, v5

    move-wide v13, v7

    invoke-static/range {v9 .. v14}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_27

    const-wide/16 v22, -0x5

    .local v22, defaultSIM:J
    const/4 v11, 0x1

    move/from16 v0, v36

    if-le v0, v11, :cond_34

    invoke-interface/range {v49 .. v49}, Lcom/mediatek/common/sms/ISmsSimSettingExt;->getSmsSimDefaultSetting()J

    move-result-wide v22

    :cond_26
    :goto_10
    const-string v11, "sms_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .end local v22           #defaultSIM:J
    :cond_27
    move-wide/from16 v11, v37

    move-wide v13, v5

    move-wide v15, v7

    invoke-static/range {v11 .. v16}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-interface/range {v50 .. v50}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_37

    const/4 v11, 0x1

    move/from16 v0, v36

    if-le v0, v11, :cond_36

    if-eqz p4, :cond_35

    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    :cond_28
    :goto_11
    if-nez v34, :cond_44

    if-nez v27, :cond_40

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    const-string v11, "onAllIccidQueryComplete. all SIM inserted into the same slot"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_29
    :goto_12
    const-string v11, "gprs_connection_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v25

    .local v25, gprsDefaultSIM:J
    const-wide/16 v11, -0x5

    cmp-long v11, v25, v11

    if-eqz v11, :cond_2a

    const-wide/16 v11, 0x0

    cmp-long v11, v25, v11

    if-eqz v11, :cond_2a

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v48

    .local v48, slot:I
    const/4 v11, -0x1

    move/from16 v0, v48

    if-eq v0, v11, :cond_45

    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    const/4 v11, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    move-object/from16 v0, v18

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .end local v48           #slot:I
    :cond_2a
    :goto_13
    const-string v11, "gsm.siminfo.ready"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAllIccidQueryComplete PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "gsm.siminfo.ready"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    new-instance v29, Landroid/content/Intent;

    const-string v11, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v29

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v29, intent:Landroid/content/Intent;
    const-string v11, "broadCast intent ACTION_SIM_INFO_UPDATE"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v11, "android.permission.READ_PHONE_STATE"

    const/4 v12, -0x1

    move-object/from16 v0, v29

    invoke-static {v0, v11, v12}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v53

    return-void

    .end local v3           #oldVoiceCallDefaultSIM:J
    .end local v9           #oldSmsDefaultSIM:J
    .end local v18           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v20           #defSIM:J
    .end local v25           #gprsDefaultSIM:J
    .end local v27           #hasSIMRemoved:Z
    .end local v29           #intent:Landroid/content/Intent;
    .end local v37           #oldGprsDefaultSIM:J
    .end local v43           #oldVTDefaultSIM:J
    .restart local v17       #airplaneMode:I
    .restart local p1
    :cond_2b
    :try_start_4
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_c

    .end local v17           #airplaneMode:I
    .restart local v3       #oldVoiceCallDefaultSIM:J
    .restart local v9       #oldSmsDefaultSIM:J
    .restart local v18       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v37       #oldGprsDefaultSIM:J
    .restart local v43       #oldVTDefaultSIM:J
    :cond_2c
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_d

    :cond_2d
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    :cond_2e
    const/4 v11, 0x1

    move/from16 v0, v36

    if-ne v0, v11, :cond_21

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v45, v0

    .local v45, simId:J
    const-string v11, "enable_internet_call_value"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .local v32, isVoipEnabled:I
    invoke-static/range {p0 .. p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2f

    if-eqz v32, :cond_2f

    const-wide/16 v11, -0x5

    cmp-long v11, v3, v11

    if-nez v11, :cond_30

    :cond_2f
    const-string v11, "voice_call_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v45

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_30
    const-string v11, "sms_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v45

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-wide/16 v11, -0x5

    cmp-long v11, v37, v11

    if-nez v11, :cond_21

    invoke-interface/range {v50 .. v50}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_31

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_d

    :cond_31
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .end local v32           #isVoipEnabled:I
    .end local v45           #simId:J
    :cond_32
    const/16 v27, 0x0

    goto/16 :goto_e

    .restart local v20       #defSIM:J
    .restart local v27       #hasSIMRemoved:Z
    :cond_33
    const/4 v11, 0x1

    move/from16 v0, v36

    if-ne v0, v11, :cond_24

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v20, v0

    goto/16 :goto_f

    .restart local v22       #defaultSIM:J
    :cond_34
    const/4 v11, 0x1

    move/from16 v0, v36

    if-ne v0, v11, :cond_26

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v22, v0

    goto/16 :goto_10

    .end local v22           #defaultSIM:J
    :cond_35
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_36
    if-lez v36, :cond_28

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_37
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_11

    :cond_38
    invoke-interface/range {v50 .. v50}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v11

    if-eqz v11, :cond_28

    const-wide/16 v11, 0x0

    cmp-long v11, v37, v11

    if-lez v11, :cond_3d

    if-gtz v34, :cond_3a

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    :cond_39
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_28

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    :cond_3a
    const-string v11, "onAllIccidQueryComplete. SIM swapped and data on, default switch to 3G SIM"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const/4 v11, 0x1

    move/from16 v0, v36

    if-le v0, v11, :cond_3c

    if-eqz p4, :cond_3b

    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_3b
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_3c
    if-lez v36, :cond_28

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_3d
    if-lez v34, :cond_28

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_28

    const-string v11, "onAllIccidQueryComplete. All SIM new, data off and default switch data to 3G SIM"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const/4 v11, 0x1

    move/from16 v0, v36

    if-le v0, v11, :cond_3f

    if-eqz p4, :cond_3e

    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_3e
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_3f
    if-lez v36, :cond_28

    const/4 v11, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    :cond_40
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_41

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    :cond_41
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_43

    :cond_42
    const-string v11, "onAllIccidQueryComplete. SIM swapped"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v11, "SWAP"

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_12

    :cond_43
    if-lez v36, :cond_29

    const-string v11, "onAllIccidQueryComplete No new SIM detected and Default SIM for some service has been removed[A]"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v11, "REMOVE"

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_12

    :cond_44
    const-string v11, "getAllIccIdsDone. New SIM detected."

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const-string v11, "NEW"

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v35

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_12

    .restart local v25       #gprsDefaultSIM:J
    .restart local v48       #slot:I
    :cond_45
    const-string v11, "onAllIccidQueryComplete: gprsDefaultSIM does not exist in slot then skip."

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_13
.end method

.method private static onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "detectStatus"
    .parameter "nSIMCount"
    .parameter "nNewSIMStatus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "newSIMStatus"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v4, 0x0

    .local v4, simToSet:I
    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .local v2, simInfo1:Landroid/provider/Telephony$SIMInfo;
    const/4 v0, -0x1

    .local v0, sim1Color:I
    const/4 v1, -0x1

    .local v1, sim2Color:I
    if-eqz v2, :cond_2

    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v0, :cond_0

    const/4 v9, 0x3

    if-le v0, v9, :cond_1

    :cond_0
    or-int/lit8 v4, v4, 0x1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setColorForNewSIM SimInfo sim1Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x1

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .local v3, simInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_5

    iget v1, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v1, :cond_3

    const/4 v9, 0x3

    if-le v1, v9, :cond_4

    :cond_3
    or-int/lit8 v4, v4, 0x2

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setColorForNewSIM SimInfo sim2Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simToSet is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    packed-switch v4, :pswitch_data_0

    const-string v9, "No need to set color"

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .local v5, value1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .local v6, value2:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #value1:Landroid/content/ContentValues;
    .end local v6           #value2:Landroid/content/ContentValues;
    :pswitch_1
    new-instance v7, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .local v7, valueColor:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    if-ne v1, v0, :cond_6

    add-int/lit8 v9, v0, 0x1

    rem-int/lit8 v1, v9, 0x4

    :cond_6
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case2: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7           #valueColor:Landroid/content/ContentValues;
    :pswitch_2
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .local v8, valueColor1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    if-ne v0, v1, :cond_7

    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v0, v9, 0x4

    :cond_7
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case1:setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .local v1, nSIMCount:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameForAll nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .local v2, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameForAll set default name for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    iget-wide v3, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    :cond_2
    return-void
.end method

.method private static setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_2

    const/4 v1, 0x0

    .local v1, nSIMCount:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultNameIfImsiReadyOrLocked nSIMCount  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, operatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v4, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultNameIfImsiReadyOrLocked the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th mDisplayName is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_3

    const-string v4, "gsm.sim.operator.default-name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultNameIfImsiReadyOrLocked operatorName  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-wide v4, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    .restart local v2       #operatorName:Ljava/lang/String;
    .restart local v3       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const/4 v4, 0x1

    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v5, :cond_0

    const-string v4, "gsm.sim.operator.default-name.2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    return-void
.end method
