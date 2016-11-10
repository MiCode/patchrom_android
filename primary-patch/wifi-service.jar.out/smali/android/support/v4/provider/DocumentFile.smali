.class public abstract Landroid/support/v4/provider/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DocumentFile"


# instance fields
.field private final mParent:Landroid/support/v4/provider/DocumentFile;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/v4/provider/DocumentFile;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/provider/DocumentFile;->mParent:Landroid/support/v4/provider/DocumentFile;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    new-instance v0, Landroid/support/v4/provider/RawDocumentFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/support/v4/provider/RawDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)V

    return-object v0
.end method

.method public static fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "singleUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/provider/SingleDocumentFile;

    invoke-direct {v1, v2, p0, p1}, Landroid/support/v4/provider/SingleDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "treeUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/provider/TreeDocumentFile;

    invoke-static {p1}, Landroid/support/v4/provider/DocumentsContractApi21;->prepareTreeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Landroid/support/v4/provider/TreeDocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->listFiles()[Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .local v0, "arr$":[Landroid/support/v4/provider/DocumentFile;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, "doc":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "doc":Landroid/support/v4/provider/DocumentFile;
    :goto_1
    return-object v1

    .restart local v1    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParentFile()Landroid/support/v4/provider/DocumentFile;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/provider/DocumentFile;->mParent:Landroid/support/v4/provider/DocumentFile;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract listFiles()[Landroid/support/v4/provider/DocumentFile;
.end method

.method public abstract renameTo(Ljava/lang/String;)Z
.end method
