.class final Landroid/speech/tts/SynthesisMessageParams$ListEntry;
.super Ljava/lang/Object;
.source "SynthesisMessageParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/SynthesisMessageParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListEntry"
.end annotation


# instance fields
.field final mBytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    .line 156
    return-void
.end method
