.class final Lcom/android/server/wifi/WifiSettingsStore;
.super Ljava/lang/Object;
.source "WifiSettingsStore.java"


# static fields
.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private mAirplaneModeOn:Z

.field private mCheckSavedStateAtBoot:Z

.field private final mContext:Landroid/content/Context;

.field private mPersistWifiState:I

.field private mScanAlwaysAvailable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z

    return-void
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "toggleableRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const-string v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistWifiState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAirplaneModeOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized handleAirplaneModeToggled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneSensitive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleWifiScanAlwaysAvailableToggled()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleWifiToggled(Z)Z
    .locals 3
    .param p1, "wifiEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneToggleable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized isAirplaneModeOn()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isWifiToggleEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
