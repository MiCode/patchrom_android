.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$1;,
        Landroid/service/notification/NotificationListenerService$RankingMap;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    }
.end annotation


# static fields
.field public static final HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final TRIM_FULL:I = 0x0

.field public static final TRIM_LIGHT:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentUser:I

.field private mNoMan:Landroid/app/INotificationManager;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mSystemContext:Landroid/content/Context;

.field private mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    return-void
.end method

.method static synthetic access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "x1"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method private applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method private createLegacyIconExtras(Landroid/app/Notification;)V
    .locals 7
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.icon"

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    iput v4, p1, Landroid/app/Notification;->icon:I

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "largeIconBits":Landroid/graphics/Bitmap;
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.largeIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v2, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .end local v2    # "largeIconBits":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    .end local p0    # "this":Landroid/service/notification/NotificationListenerService;
    :cond_0
    return-object p0
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private isBound()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Notification listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final cancelAllNotifications()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotifications([Ljava/lang/String;)V

    return-void
.end method

.method public final cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final cancelNotifications([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "trim"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 13
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "trim"    # I

    .prologue
    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v10

    :goto_0
    return-object v9

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v9, v11, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .local v7, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .local v1, "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/StatusBarNotification;

    .local v8, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "notification":Landroid/app/Notification;
    :try_start_1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    invoke-direct {p0, v6}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    if-nez v1, :cond_1

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v8    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v9, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v11, "Unable to contact notification manager"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v10

    goto :goto_0

    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v4    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v5, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getCurrentListenerHints()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    return-object v0
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    .prologue
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I

    .prologue
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    :cond_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    iput p3, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    return-void
.end method

.method public final requestInterruptionFilter(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final requestListenerHints(I)V
    .locals 3
    .param p1, "hints"    # I

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setOnNotificationPostedTrim(I)V
    .locals 3
    .param p1, "trim"    # I

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterAsSystemService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    iget v2, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .end local v0    # "noMan":Landroid/app/INotificationManager;
    :cond_0
    return-void
.end method
