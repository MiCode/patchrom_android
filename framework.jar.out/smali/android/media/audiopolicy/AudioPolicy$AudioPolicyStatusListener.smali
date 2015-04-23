.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyStatusListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V
    .locals 0
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .prologue
    return-void
.end method

.method public onStatusChange()V
    .locals 0

    .prologue
    return-void
.end method
