.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$1;,
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .local v0, "newState":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/StateListDrawable$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .local v4, "state":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .local v3, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v3, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    :cond_1
    if-ne v6, v9, :cond_0

    if-gt v1, v3, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/R$styleable;->StateListDrawableItem:[I

    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v5

    .local v5, "states":[I
    if-nez v2, :cond_4

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    if-eq v6, v9, :cond_3

    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "child tag defining a drawable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_4
    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "states":[I
    :cond_5
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .local v0, "state":Landroid/graphics/drawable/StateListDrawable$StateListState;
    iget v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    const/4 v1, 0x2

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    const/4 v1, 0x3

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    const/4 v1, 0x0

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mAutoMirrored:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mAutoMirrored:Z

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    return-void
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .local v1, "j":I
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    .local v3, "numAttrs":I
    new-array v5, v3, [I

    .local v5, "states":[I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .local v4, "stateResId":I
    sparse-switch v4, :sswitch_data_0

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    const/4 v6, 0x0

    invoke-interface {p1, v0, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v4    # "stateResId":I
    :goto_1
    aput v4, v5, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .restart local v4    # "stateResId":I
    :sswitch_0
    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    .end local v1    # "j":I
    .restart local v2    # "j":I
    :sswitch_1
    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    :cond_0
    neg-int v4, v4

    goto :goto_1

    .end local v1    # "j":I
    .end local v4    # "stateResId":I
    .restart local v2    # "j":I
    :cond_1
    invoke-static {v5, v2}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v5

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_1
    .end sparse-switch
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v1, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .local v0, "changed":Z
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .local v1, "idx":I
    if-gez v1, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/StateListDrawable$StateListState;

    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    :cond_0
    return-void
.end method
