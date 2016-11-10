.class public final Lcom/android/server/SystemConfig$PermissionEntry;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionEntry"
.end annotation


# instance fields
.field public gids:[I

.field public final name:Ljava/lang/String;

.field public perUser:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "perUser"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    return-void
.end method
