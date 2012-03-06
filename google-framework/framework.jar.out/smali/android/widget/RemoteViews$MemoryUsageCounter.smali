.class Landroid/widget/RemoteViews$MemoryUsageCounter;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUsageCounter"
.end annotation


# instance fields
.field mBitmapHeapMemoryUsage:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 937
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public bitmapIncrement(I)V
    .locals 1
    .parameter "numBytes"

    .prologue
    .line 943
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    .line 944
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    .line 940
    return-void
.end method

.method public getBitmapHeapMemoryUsage()I
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Landroid/widget/RemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    return v0
.end method
