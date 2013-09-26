.class public final Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field public final colorRGBA:I

.field public final endChar:I

.field public final fontID:I

.field public final fontSize:I

.field public final isBold:Z

.field public final isItalic:Z

.field public final isUnderlined:Z

.field public final startChar:I


# direct methods
.method public constructor <init>(IIIZZZII)V
    .locals 0
    .parameter "startChar"
    .parameter "endChar"
    .parameter "fontId"
    .parameter "isBold"
    .parameter "isItalic"
    .parameter "isUnderlined"
    .parameter "fontSize"
    .parameter "colorRGBA"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/TimedText$Style;->startChar:I

    iput p2, p0, Landroid/media/TimedText$Style;->endChar:I

    iput p3, p0, Landroid/media/TimedText$Style;->fontID:I

    iput-boolean p4, p0, Landroid/media/TimedText$Style;->isBold:Z

    iput-boolean p5, p0, Landroid/media/TimedText$Style;->isItalic:Z

    iput-boolean p6, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    iput p7, p0, Landroid/media/TimedText$Style;->fontSize:I

    iput p8, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    return-void
.end method
