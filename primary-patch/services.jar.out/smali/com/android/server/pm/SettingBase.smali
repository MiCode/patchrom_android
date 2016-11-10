.class abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# instance fields
.field protected final mPermissionsState:Lcom/android/server/pm/PermissionsState;

.field pkgFlags:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    new-instance v0, Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/PermissionsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/pm/SettingBase;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    new-instance v0, Lcom/android/server/pm/PermissionsState;

    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState;-><init>(Lcom/android/server/pm/PermissionsState;)V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    return-void
.end method


# virtual methods
.method public getPermissionsState()Lcom/android/server/pm/PermissionsState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    return-object v0
.end method

.method setFlags(I)V
    .locals 1
    .param p1, "pkgFlags"    # I

    .prologue
    const v0, 0x40001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    return-void
.end method

.method setPrivateFlags(I)V
    .locals 1
    .param p1, "pkgPrivateFlags"    # I

    .prologue
    and-int/lit8 v0, p1, 0xc

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    return-void
.end method
