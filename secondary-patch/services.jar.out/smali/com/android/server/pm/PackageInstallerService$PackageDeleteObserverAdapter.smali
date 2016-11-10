.class Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotification:Landroid/app/Notification;

.field private final mPackageName:Ljava/lang/String;

.field private final mTarget:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    .prologue
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104056f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    invoke-static {v0, v1, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    goto :goto_0
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .local v6, "notificationManager":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    invoke-virtual {v6, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.content.pm.extra.STATUS"

    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "fillIn":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
