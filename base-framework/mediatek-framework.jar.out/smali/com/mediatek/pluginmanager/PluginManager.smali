.class public final Lcom/mediatek/pluginmanager/PluginManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/common/pluginmanager/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mediatek/common/pluginmanager/IPluginManager;"
    }
.end annotation


# instance fields
.field private final a:[Landroid/content/pm/Signature;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/pluginmanager/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/pm/PackageManager;

.field private final f:Z

.field private final g:Z

.field private final h:Lcom/mediatek/pluginmanager/a;

.field private final i:Z


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginIntent cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/mediatek/pluginmanager/PluginManager;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->d:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/mediatek/pluginmanager/PluginManager;->f:Z

    iput-boolean p4, p0, Lcom/mediatek/pluginmanager/PluginManager;->g:Z

    iput-object p6, p0, Lcom/mediatek/pluginmanager/PluginManager;->a:[Landroid/content/pm/Signature;

    iput-object p2, p0, Lcom/mediatek/pluginmanager/PluginManager;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->e:Landroid/content/pm/PackageManager;

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->h:Lcom/mediatek/pluginmanager/a;

    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/pluginmanager/PluginManager;->refreshPlugin()I

    return-void

    :cond_4
    new-instance v0, Lcom/mediatek/pluginmanager/a;

    invoke-direct {v0, p5}, Lcom/mediatek/pluginmanager/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->h:Lcom/mediatek/pluginmanager/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->i:Z

    goto :goto_0
.end method

.method private a(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x4080

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "version"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "version"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/mediatek/pluginmanager/PluginManager;->f:Z

    if-eqz v2, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/mediatek/pluginmanager/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_2

    const-string v0, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The plugin \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' request for permission \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' which is not allowed on calling process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private b(Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ro.secure"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->g:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->e:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->checkAPKSignatures(Ljava/lang/String;)I

    move-result v0

    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPkgMgr.checkAPKSignatures("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->a:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->a:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The plugin \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' didn\'t signed by system signature and no specified signature by host-app."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_5

    const-string v0, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The plugin \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' didn\'t signed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    const-string v0, "PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Plugin signatures: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2
    iget-object v7, p0, Lcom/mediatek/pluginmanager/PluginManager;->a:[Landroid/content/pm/Signature;

    array-length v7, v7

    if-ge v0, v7, :cond_7

    const-string v7, "PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested signatures["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->a:[Landroid/content/pm/Signature;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/mediatek/pluginmanager/PluginManager;->a:[Landroid/content/pm/Signature;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v1, v2

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_8
    move v1, v2

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method

.method private b(Landroid/content/pm/ServiceInfo;)Z
    .locals 4
    .parameter

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/pluginmanager/PluginManager;->a(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host request version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/pluginmanager/PluginManager;->h:Lcom/mediatek/pluginmanager/a;

    invoke-virtual {v3}, Lcom/mediatek/pluginmanager/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plugin version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/pluginmanager/PluginManager;->h:Lcom/mediatek/pluginmanager/a;

    invoke-virtual {v1, v0}, Lcom/mediatek/pluginmanager/a;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;ZZ[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;ZZ[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    invoke-virtual {v0}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mediatek/pluginmanager/Plugin;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such plugin \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    const-string v0, ""

    invoke-static {p0, p1, v0, p2, p3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    const-string v0, "class"

    invoke-static {p0, p1, v0, p2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getPlugin(I)Lcom/mediatek/common/pluginmanager/IPlugin;
    .locals 1
    .parameter

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mediatek/pluginmanager/Plugin",
            "<TT;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/pluginmanager/Plugin;

    return-object v0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public refreshPlugin()I
    .locals 7

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/NativeCheck;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/NativeCheck;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/NativeCheck;->checkMtk()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/pluginmanager/PluginManager;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/pluginmanager/PluginManager;->e:Landroid/content/pm/PackageManager;

    const/16 v3, 0x84

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPluginIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/pluginmanager/PluginManager;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillPluginList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    const-string v0, "PluginManager"

    const-string v3, "Ignore bad plugin"

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/pluginmanager/PluginManager;->e:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1040

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_2

    const-string v0, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The plugin \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' packageInfo == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find plugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/pluginmanager/PluginManager;->b(Landroid/content/pm/ServiceInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The plugin \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' didn\'t match version requirement."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/mediatek/pluginmanager/PluginManager;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lcom/mediatek/pluginmanager/PluginManager;->b(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v3, Lcom/mediatek/pluginmanager/Plugin;

    iget-object v4, p0, Lcom/mediatek/pluginmanager/PluginManager;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/mediatek/pluginmanager/Plugin;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/mediatek/pluginmanager/Plugin$PluginCreationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurs when create plugin."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex.cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iput-object v1, p0, Lcom/mediatek/pluginmanager/PluginManager;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
