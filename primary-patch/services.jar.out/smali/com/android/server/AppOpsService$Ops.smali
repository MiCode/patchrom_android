.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public final isPrivileged:Z

.field public final packageName:Ljava/lang/String;

.field public final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p3, "_isPrivileged"    # Z

    .prologue
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    return-void
.end method
