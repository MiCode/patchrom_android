.class public Landroid/renderscript/RenderScriptCacheDir;
.super Ljava/lang/Object;
.source "RenderScriptCacheDir.java"


# static fields
.field static mCacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 0
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    sput-object p0, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    return-void
.end method
