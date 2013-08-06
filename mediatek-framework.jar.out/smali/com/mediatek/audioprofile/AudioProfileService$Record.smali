.class Lcom/mediatek/audioprofile/AudioProfileService$Record;
.super Ljava/lang/Object;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

.field mEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService$Record;-><init>()V

    return-void
.end method
