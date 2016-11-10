.class public Landroid/media/AudioPatch;
.super Ljava/lang/Object;
.source "AudioPatch.java"


# instance fields
.field private final mHandle:Landroid/media/AudioHandle;

.field private final mSinks:[Landroid/media/AudioPortConfig;

.field private final mSources:[Landroid/media/AudioPortConfig;


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)V
    .locals 0
    .param p1, "patchHandle"    # Landroid/media/AudioHandle;
    .param p2, "sources"    # [Landroid/media/AudioPortConfig;
    .param p3, "sinks"    # [Landroid/media/AudioPortConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    iput-object p2, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    iput-object p3, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    return-void
.end method


# virtual methods
.method public sinks()[Landroid/media/AudioPortConfig;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public sources()[Landroid/media/AudioPortConfig;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "s":Ljava/lang/StringBuilder;
    const-string v6, "mHandle: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v6}, Landroid/media/AudioHandle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mSources: {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    .local v0, "arr$":[Landroid/media/AudioPortConfig;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .local v5, "source":Landroid/media/AudioPortConfig;
    invoke-virtual {v5}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "source":Landroid/media/AudioPortConfig;
    :cond_0
    const-string v6, "} mSinks: {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .local v4, "sink":Landroid/media/AudioPortConfig;
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "sink":Landroid/media/AudioPortConfig;
    :cond_1
    const-string v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
