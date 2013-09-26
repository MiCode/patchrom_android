.class public Landroid/renderscript/FileA3D;
.super Landroid/renderscript/BaseObj;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/FileA3D$1;,
        Landroid/renderscript/FileA3D$IndexEntry;,
        Landroid/renderscript/FileA3D$EntryType;
    }
.end annotation


# instance fields
.field mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

.field mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V
    .locals 0
    .parameter "id"
    .parameter "rs"
    .parameter "stream"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object p3, p0, Landroid/renderscript/FileA3D;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 5
    .parameter "rs"
    .parameter "mgr"
    .parameter "path"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    .local v1, fileId:I
    if-nez v1, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a3d file from asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Landroid/renderscript/FileA3D;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/renderscript/FileA3D;-><init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .local v0, fa3d:Landroid/renderscript/FileA3D;
    invoke-direct {v0}, Landroid/renderscript/FileA3D;->initEntries()V

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/io/File;)Landroid/renderscript/FileA3D;
    .locals 1
    .parameter "rs"
    .parameter "path"

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/FileA3D;->createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 5
    .parameter "rs"
    .parameter "path"

    .prologue
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromFile(Ljava/lang/String;)I

    move-result v1

    .local v1, fileId:I
    if-nez v1, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a3d file from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Landroid/renderscript/FileA3D;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/renderscript/FileA3D;-><init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .local v0, fa3d:Landroid/renderscript/FileA3D;
    invoke-direct {v0}, Landroid/renderscript/FileA3D;->initEntries()V

    return-object v0
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;
    .locals 8
    .parameter "rs"
    .parameter "res"
    .parameter "id"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v4, 0x0

    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v3, 0x0

    .local v3, fileId:I
    instance-of v5, v4, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v0

    .local v0, asset:I
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAssetStream(I)I

    move-result v3

    if-nez v3, :cond_1

    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create a3d file from resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #asset:I
    .end local v3           #fileId:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #fileId:I
    :cond_0
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    const-string v6, "Unsupported asset stream"

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v0       #asset:I
    :cond_1
    new-instance v2, Landroid/renderscript/FileA3D;

    invoke-direct {v2, v3, p0, v4}, Landroid/renderscript/FileA3D;-><init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .local v2, fa3d:Landroid/renderscript/FileA3D;
    invoke-direct {v2}, Landroid/renderscript/FileA3D;->initEntries()V

    return-object v2
.end method

.method private initEntries()V
    .locals 10

    .prologue
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nFileA3DGetNumIndexEntries(I)I

    move-result v8

    .local v8, numFileEntries:I
    if-gtz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v0, v8, [Landroid/renderscript/FileA3D$IndexEntry;

    iput-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    new-array v6, v8, [I

    .local v6, ids:[I
    new-array v7, v8, [Ljava/lang/String;

    .local v7, names:[Ljava/lang/String;
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/renderscript/RenderScript;->nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    iget-object v9, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    new-instance v0, Landroid/renderscript/FileA3D$IndexEntry;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    aget-object v4, v7, v2

    aget v5, v6, v2

    invoke-static {v5}, Landroid/renderscript/FileA3D$EntryType;->toEntryType(I)Landroid/renderscript/FileA3D$EntryType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/FileA3D$IndexEntry;-><init>(Landroid/renderscript/RenderScript;IILjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V

    aput-object v0, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;
    .locals 1
    .parameter "index"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/FileA3D;->getIndexEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getIndexEntryCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    goto :goto_0
.end method
