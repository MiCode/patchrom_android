.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBottomLine(Landroid/widget/TextView;)I
    .locals 3
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getCharacterWidth(Landroid/widget/TextView;)I
    .locals 2
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getInnerHeight(Landroid/widget/TextView;)I
    .locals 2
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getInnerWidth(Landroid/widget/TextView;)I
    .locals 2
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollBoundsLeft(Landroid/widget/TextView;)I
    .locals 8
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v5

    .local v5, topLine:I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v0

    .local v0, bottomLine:I
    if-le v5, v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const v2, 0x7fffffff

    .local v2, left:I
    move v3, v5

    .local v3, line:I
    :goto_0
    if-gt v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .local v4, lineLeft:I
    if-ge v4, v2, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getScrollBoundsRight(Landroid/widget/TextView;)I
    .locals 8
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v5

    .local v5, topLine:I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v0

    .local v0, bottomLine:I
    if-le v5, v0, :cond_1

    const/4 v4, 0x0

    :cond_0
    return v4

    :cond_1
    const/high16 v4, -0x8000

    .local v4, right:I
    move v2, v5

    .local v2, line:I
    :goto_0
    if-gt v2, v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .local v3, lineRight:I
    if-le v3, v4, :cond_2

    move v4, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getTopLine(Landroid/widget/TextView;)I
    .locals 2
    .parameter "widget"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .locals 3
    .parameter "buffer"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v0, v1, -0x601

    .local v0, metaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, -0xc2

    return v1
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "movementMetaState"
    .parameter "event"

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x2

    sparse-switch p3, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto :goto_0

    :cond_7
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    invoke-static {p4, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter "widget"
    .parameter "text"

    .prologue
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .local v2, vscroll:F
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .local v1, hscroll:F
    :goto_1
    const/4 v0, 0x0

    .local v0, handled:Z
    cmpg-float v3, v1, v5

    if-gez v3, :cond_4

    neg-float v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_2
    :goto_2
    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    neg-float v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .end local v0           #handled:Z
    .end local v1           #hscroll:F
    .end local v2           #vscroll:F
    :cond_3
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    .restart local v2       #vscroll:F
    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .restart local v0       #handled:Z
    :cond_4
    cmpl-float v3, v1, v5

    if-lez v3, :cond_2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_2

    :cond_5
    cmpl-float v3, v2, v5

    if-lez v3, :cond_1

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "widget"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .local v4, movementMetaState:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v6

    .local v6, handled:Z
    if-eqz v6, :cond_0

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    :cond_0
    return v6
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    .local v4, movementMetaState:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .local v3, keyCode:I
    if-eqz v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .local v8, repeat:I
    const/4 v6, 0x0

    .local v6, handled:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .end local v6           #handled:Z
    .end local v7           #i:I
    .end local v8           #repeat:I
    :cond_1
    :goto_1
    return v6

    .restart local v6       #handled:Z
    .restart local v7       #i:I
    .restart local v8       #repeat:I
    :cond_2
    const/4 v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6           #handled:Z
    .end local v7           #i:I
    .end local v8           #repeat:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0
    .parameter "widget"
    .parameter "text"
    .parameter "direction"

    .prologue
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, lineCount:I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1, v0, v2, v3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 7
    .parameter "widget"
    .parameter "buffer"
    .parameter "amount"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .local v3, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    .local v2, innerHeight:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int v0, v5, v2

    .local v0, bottom:I
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .local v1, bottomLine:I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    if-ge v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, limit:I
    if-gt v1, v4, :cond_1

    add-int v5, v1, p3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {p1, v3, v5, v6}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"
    .parameter "amount"

    .prologue
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    .local v0, minScrollX:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .local v1, scrollX:I
    if-le v1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    sub-int v2, v1, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v3

    sub-int v0, v2, v3

    .local v0, maxScrollX:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .local v1, scrollX:I
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    .local v0, minScrollX:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .local v1, scrollX:I
    if-le v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .local v3, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    .local v2, innerHeight:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    add-int v0, v4, v2

    .local v0, bottom:I
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .local v1, bottomLine:I
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {p1, v3, v4, v5}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .parameter "widget"
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    sub-int v1, v3, v4

    .local v1, top:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .local v2, topLine:I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 4
    .parameter "widget"
    .parameter "buffer"
    .parameter "amount"

    .prologue
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v3

    sub-int v0, v2, v3

    .local v0, maxScrollX:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .local v1, scrollX:I
    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-static {p1, v0, v2, v1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 5
    .parameter "widget"
    .parameter "buffer"
    .parameter "amount"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    .local v1, top:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .local v2, topLine:I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-ltz v2, :cond_1

    sub-int v4, v2, p3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
