.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V
    .locals 4
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "userId"    # I

    .prologue
    const-class v2, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070034

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    .end local v0    # "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;)V
    .locals 16
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "userId"    # I
    .param p4, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .local v10, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    const/4 v13, 0x1

    .local v13, "hasPrivileges":Z
    :goto_2
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v13, :cond_6

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v3, :cond_3

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    :cond_3
    const-string v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): ENABLED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v3, p1

    move/from16 v7, p3

    move-object/from16 v8, p0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz v13, :cond_2

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "hasPrivileges":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const-string v3, "CarrierAppUtils"

    const-string v5, "Could not reach PackageManager"

    invoke-static {v3, v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .restart local v13    # "hasPrivileges":Z
    :cond_6
    if-nez v13, :cond_4

    :try_start_1
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v3, :cond_4

    const-string v3, "CarrierAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p3

    move-object/from16 v8, p0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_3

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "hasPrivileges":Z
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v15, v3, [Ljava/lang/String;

    .local v15, "packageNames":[Ljava/lang/String;
    invoke-interface {v12, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v15, v1}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .param p2, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v8, p2

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object v3, p2

    .local v3, "arr$":[Ljava/lang/String;
    :try_start_1
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v7, v3, v5

    .local v7, "packageName":Ljava/lang/String;
    const v8, 0x8000

    invoke-interface {p0, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "arr$":[Ljava/lang/String;
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v4, "e":Landroid/os/RemoteException;
    :goto_3
    const-string v8, "CarrierAppUtils"

    const-string v9, "Could not reach PackageManager"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_4
    move-object v1, v2

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_0

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 7
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    move-result-object v1

    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v1, 0x0

    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    return-object v1

    .restart local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_4

    move v2, v5

    .local v2, "hasPrivileges":Z
    :goto_1
    if-nez v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v2    # "hasPrivileges":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
