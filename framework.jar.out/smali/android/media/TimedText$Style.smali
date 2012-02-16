.class public Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# instance fields
.field public colorRGBA:I

.field public endChar:I

.field public fontID:I

.field public fontSize:I

.field public isBold:Z

.field public isItalic:Z

.field public isUnderlined:Z

.field public startChar:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 224
    iput-object p1, p0, Landroid/media/TimedText$Style;->this$0:Landroid/media/TimedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput v0, p0, Landroid/media/TimedText$Style;->startChar:I

    .line 190
    iput v0, p0, Landroid/media/TimedText$Style;->endChar:I

    .line 196
    iput v0, p0, Landroid/media/TimedText$Style;->fontID:I

    .line 201
    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isBold:Z

    .line 206
    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isItalic:Z

    .line 211
    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    .line 216
    iput v0, p0, Landroid/media/TimedText$Style;->fontSize:I

    .line 222
    iput v0, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    .line 224
    return-void
.end method
