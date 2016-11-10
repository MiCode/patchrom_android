.class final Landroid/view/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# static fields
.field private static final ANIMATION_START:I = 0x6

.field private static final DRAW_START:I = 0x8

.field private static final FLAGS:I = 0x0

.field public static final FLAG_WINDOW_LAYOUT_CHANGED:J = 0x1L

.field private static final HANDLE_INPUT_START:I = 0x5

.field private static final INTENDED_VSYNC:I = 0x1

.field private static final NEWEST_INPUT_EVENT:I = 0x4

.field private static final OLDEST_INPUT_EVENT:I = 0x3

.field private static final PERFORM_TRAVERSALS_START:I = 0x7

.field private static final VSYNC:I = 0x2


# instance fields
.field mFrameInfo:[J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    return-void
.end method


# virtual methods
.method public addFlags(J)V
    .locals 5
    .param p1, "flags"    # J

    .prologue
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    or-long/2addr v2, p1

    aput-wide v2, v0, v1

    return-void
.end method

.method public markAnimationsStart()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public markDrawStart()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/16 v1, 0x8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public markInputHandlingStart()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public markPerformTraversalsStart()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public setVsync(JJ)V
    .locals 7
    .param p1, "intendedVsync"    # J
    .param p3, "usedVsync"    # J

    .prologue
    const-wide/16 v4, 0x0

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x2

    aput-wide p3, v0, v1

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x3

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x4

    aput-wide v4, v0, v1

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    return-void
.end method

.method public updateInputEventTime(JJ)V
    .locals 5
    .param p1, "inputEventTime"    # J
    .param p3, "inputEventOldestTime"    # J

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    aget-wide v0, v0, v2

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    aput-wide p3, v0, v2

    :cond_0
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    aget-wide v0, v0, v3

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    aput-wide p1, v0, v3

    :cond_1
    return-void
.end method
