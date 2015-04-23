.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# static fields
.field public static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "opts"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android:broadcast.temporaryAppWhitelistDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .locals 1

    .prologue
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method


# virtual methods
.method public getTemporaryAppWhitelistDuration()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-wide v0
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "android:broadcast.temporaryAppWhitelistDuration"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    return-object v0
.end method
