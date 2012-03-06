.class Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimAnimator"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v9

    .line 54
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 186
    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 187
    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 188
    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 189
    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 190
    return-void
.end method

.method show(II)V
    .locals 4
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-nez v1, :cond_1

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 68
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 69
    iput p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 70
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Failure showing dim surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget v1, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    if-eq v1, p2, :cond_0

    .line 77
    :cond_2
    iput p1, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 78
    iput p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 79
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    goto :goto_0
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/WindowState;J)V
    .locals 6
    .parameter "res"
    .parameter "w"
    .parameter "currentTime"

    .prologue
    .line 88
    iget-object v4, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v5, p2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setLayer(I)V

    .line 90
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    .line 93
    .local v2, target:F
    :goto_0
    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_2

    .line 96
    iput-wide p3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 97
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    .line 100
    .local v0, duration:J
    :goto_1
    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 101
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .local v3, tv:Landroid/util/TypedValue;
    const/high16 v4, 0x112

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 104
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 105
    long-to-float v4, v0

    long-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v4

    float-to-long v0, v4

    .line 111
    .end local v3           #tv:Landroid/util/TypedValue;
    :cond_0
    :goto_2
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 113
    const-wide/16 v0, 0x1

    .line 115
    :cond_1
    iput v2, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 116
    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v4, v5

    long-to-float v5, v0

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 118
    .end local v0           #duration:J
    :cond_2
    return-void

    .line 90
    .end local v2           #target:F
    :cond_3
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    .line 97
    .restart local v2       #target:F
    :cond_4
    const-wide/16 v0, 0xc8

    goto :goto_1

    .line 106
    .restart local v0       #duration:J
    .restart local v3       #tv:Landroid/util/TypedValue;
    :cond_5
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    .line 108
    iget v4, v3, Landroid/util/TypedValue;->data:I

    int-to-long v0, v4

    goto :goto_2
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 127
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 128
    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 129
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, animating:Z
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_2

    .line 135
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 137
    const/4 v2, 0x1

    .line 138
    .local v2, more:Z
    if-eqz p4, :cond_3

    .line 140
    const/4 v2, 0x0

    .line 154
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 157
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 158
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 159
    const/4 v0, 0x1

    .line 178
    .end local v2           #more:Z
    :cond_2
    :goto_1
    return v0

    .line 141
    .restart local v2       #more:Z
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_4

    .line 142
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 143
    const/4 v2, 0x0

    goto :goto_0

    .line 145
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5

    .line 146
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 147
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :cond_6
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 162
    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 165
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 166
    if-nez p1, :cond_2

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto :goto_1

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
