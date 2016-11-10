.class final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field uidFlags:I

.field uidPrivateFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pkgFlags"    # I
    .param p3, "_pkgPrivateFlags"    # I

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    :cond_0
    return-void
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .local v0, "aggregatedFlags":I
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v4

    goto :goto_0

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .end local v0    # "aggregatedFlags":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .local v1, "aggregatedPrivateFlags":I
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v1, v4

    goto :goto_1

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .end local v1    # "aggregatedPrivateFlags":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
