.class public Landroid/media/TimedText$Text;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Text"
.end annotation


# instance fields
.field public text:[B

.field public textLen:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Landroid/media/TimedText$Text;->this$0:Landroid/media/TimedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
