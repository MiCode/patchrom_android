.class public Lcom/android/server/location/LocationAppLookUtility;
.super Ljava/lang/Object;
.source "LocationAppLookUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationAppLookUtility"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationAppLookUtility;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/location/LocationAppLookUtility;->mProcList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/LocationAppLookUtility;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAppName(I)Ljava/lang/String;
    .locals 7
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    .local v1, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/LocationAppLookUtility;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/LocationAppLookUtility;->mProcList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/location/LocationAppLookUtility;->mProcList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/location/LocationAppLookUtility;->mProcList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v3, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    if-nez v1, :cond_2

    const-string v4, "LocationAppLookUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not get the app name of the pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method
