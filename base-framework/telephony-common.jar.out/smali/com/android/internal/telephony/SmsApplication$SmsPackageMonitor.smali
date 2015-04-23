.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsPackageMonitor"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->getSendingUserId()I

    move-result v3

    .local v3, "userId":I
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    # invokes: Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    invoke-static {v1, v0, v3}, Lcom/android/internal/telephony/SmsApplication;->access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    :cond_1
    return-void

    .end local v0    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method
