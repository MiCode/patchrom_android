.class public Landroid/media/TimedText$Karaoke;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Karaoke"
.end annotation


# instance fields
.field public endChar:I

.field public endTimeMs:I

.field public startChar:I

.field public startTimeMs:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 272
    iput-object p1, p0, Landroid/media/TimedText$Karaoke;->this$0:Landroid/media/TimedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput v0, p0, Landroid/media/TimedText$Karaoke;->startTimeMs:I

    .line 260
    iput v0, p0, Landroid/media/TimedText$Karaoke;->endTimeMs:I

    .line 265
    iput v0, p0, Landroid/media/TimedText$Karaoke;->startChar:I

    .line 270
    iput v0, p0, Landroid/media/TimedText$Karaoke;->endChar:I

    .line 272
    return-void
.end method
