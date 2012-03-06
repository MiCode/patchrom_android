.class Lcom/android/server/pm/GrantedPermissions;
.super Ljava/lang/Object;
.source "GrantedPermissions.java"


# instance fields
.field gids:[I

.field grantedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgFlags:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "pkgFlags"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/GrantedPermissions;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 36
    iget v0, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 37
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 39
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .locals 1
    .parameter "pkgFlags"

    .prologue
    .line 45
    const v0, 0x20040001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 49
    return-void
.end method
