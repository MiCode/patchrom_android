.class public Landroid/media/videoeditor/VideoEditorProfile;
.super Ljava/lang/Object;
.source "VideoEditorProfile.java"


# instance fields
.field public maxInputVideoFrameHeight:I

.field public maxInputVideoFrameWidth:I

.field public maxOutputVideoFrameHeight:I

.field public maxOutputVideoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->native_init()V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .parameter "inputWidth"
    .parameter "inputHeight"
    .parameter "outputWidth"
    .parameter "outputHeight"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameWidth:I

    iput p2, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameHeight:I

    iput p3, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    iput p4, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    return-void
.end method

.method public static get()Landroid/media/videoeditor/VideoEditorProfile;
    .locals 1

    .prologue
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_profile()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v0

    return-object v0
.end method

.method public static getExportLevel(I)I
    .locals 4
    .parameter "vidCodec"

    .prologue
    const/4 v0, -0x1

    .local v0, level:I
    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_export_level(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getExportProfile(I)I
    .locals 4
    .parameter "vidCodec"

    .prologue
    const/4 v0, -0x1

    .local v0, profile:I
    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_export_profile(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final native native_get_videoeditor_export_level(I)I
.end method

.method private static final native native_get_videoeditor_export_profile(I)I
.end method

.method private static final native native_get_videoeditor_profile()Landroid/media/videoeditor/VideoEditorProfile;
.end method

.method private static final native native_init()V
.end method
