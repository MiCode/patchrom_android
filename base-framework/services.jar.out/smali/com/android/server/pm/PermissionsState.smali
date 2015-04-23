.class public final Lcom/android/server/pm/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsState$PermissionState;,
        Lcom/android/server/pm/PermissionsState$PermissionData;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .locals 1
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    return-void
.end method

.method private static appendInts([I[I)[I
    .locals 4
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .local v1, "guid":I
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[I
    .end local v1    # "guid":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .locals 3
    .param p0, "userId"    # I

    .prologue
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_0
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .locals 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    goto :goto_0
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v3

    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 8
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v7, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-nez v7, :cond_2

    move v0, v5

    .local v0, "hasGids":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .local v2, "oldGids":[I
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .local v1, "newGids":[I
    array-length v4, v2

    array-length v7, v1

    if-eq v4, v7, :cond_4

    move v4, v5

    goto :goto_0

    .end local v0    # "hasGids":Z
    .end local v1    # "newGids":[I
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    move v0, v6

    goto :goto_1

    .restart local v0    # "hasGids":Z
    :cond_3
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    goto :goto_2

    .restart local v2    # "oldGids":[I
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_4
    move v4, v6

    goto :goto_0
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v7, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-nez v7, :cond_3

    move v0, v5

    .local v0, "hasGids":Z
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .local v2, "oldGids":[I
    :goto_2
    iget-object v7, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v8, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .local v1, "newGids":[I
    array-length v4, v2

    array-length v7, v1

    if-eq v4, v7, :cond_5

    move v4, v5

    goto :goto_0

    .end local v0    # "hasGids":Z
    .end local v1    # "newGids":[I
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    move v0, v6

    goto :goto_1

    .restart local v0    # "hasGids":Z
    :cond_4
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    goto :goto_2

    .restart local v2    # "oldGids":[I
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_5
    move v4, v6

    goto :goto_0
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .local v0, "gids":[I
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v2

    .local v2, "permGids":[I
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v2, v6, :cond_0

    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "permGids":[I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    return-object v0
.end method

.method public computeGids([I)[I
    .locals 6
    .param p1, "userIds"    # [I

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .local v1, "gids":[I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v4

    .local v4, "userGids":[I
    invoke-static {v1, v4}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "userGids":[I
    .end local v5    # "userId":I
    :cond_0
    return-object v1
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .locals 6
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    :cond_2
    :goto_1
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    :cond_3
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_5

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "name":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    invoke-direct {v5, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    sget-object v5, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    iget-object v5, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    goto :goto_0
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPermissions(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v4, -0x1

    if-eq p1, v4, :cond_3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    goto :goto_0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    goto :goto_0
.end method

.method public setGlobalGids([I)V
    .locals 1
    .param p1, "globalGids"    # [I

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    :cond_0
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .locals 5
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    if-nez p4, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .local v0, "mayChangeFlags":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return v2

    .end local v0    # "mayChangeFlags":Z
    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0    # "mayChangeFlags":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v1, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v1, :cond_5

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v1

    :cond_5
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v2

    goto :goto_1
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
