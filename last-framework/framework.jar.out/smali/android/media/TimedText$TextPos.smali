.class public Landroid/media/TimedText$TextPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextPos"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field final synthetic this$0:Landroid/media/TimedText;

.field public top:I


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 156
    iput-object p1, p0, Landroid/media/TimedText$TextPos;->this$0:Landroid/media/TimedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v0, p0, Landroid/media/TimedText$TextPos;->top:I

    .line 144
    iput v0, p0, Landroid/media/TimedText$TextPos;->left:I

    .line 149
    iput v0, p0, Landroid/media/TimedText$TextPos;->bottom:I

    .line 154
    iput v0, p0, Landroid/media/TimedText$TextPos;->right:I

    .line 156
    return-void
.end method
