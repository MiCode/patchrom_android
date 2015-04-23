.class public Landroid/graphics/drawable/AnimatedStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedStateListDrawable$1;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

.field private mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimatedStateListDrawable$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
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
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "depth":I
    if-ge v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-gt v0, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "transition"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .end local v0    # "depth":I
    :cond_3
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method private parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 8
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
    const/4 v6, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .local v2, "keyframeId":I
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v3

    .local v3, "states":[I
    if-nez v1, :cond_2

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child tag defining a drawable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v4    # "type":I
    :cond_2
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v5, v3, v1, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v5

    return v5
.end method

.method private parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 9
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
    const/4 v8, 0x2

    const/4 v7, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .local v2, "fromId":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .local v4, "toId":I
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .local v3, "reversible":Z
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_2

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    if-eq v5, v8, :cond_1

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <transition> tag requires a \'drawable\' attribute or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v5    # "type":I
    :cond_2
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v6, v2, v4, v1, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v6

    return v6
.end method

.method private selectTransition(I)Z
    .locals 14
    .param p1, "toIndex"    # I

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .local v0, "currentTransition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    if-eqz v0, :cond_3

    iget v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    if-ne p1, v12, :cond_0

    :goto_0
    return v10

    :cond_0
    iget v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    if-ne p1, v12, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->canReverse()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->reverse()V

    iget v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    iput v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .local v3, "fromIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    :goto_1
    const/4 v12, 0x0

    iput-object v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    iput v13, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    iput v13, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .local v6, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v2

    .local v2, "fromId":I
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v7

    .local v7, "toId":I
    if-eqz v7, :cond_2

    if-nez v2, :cond_4

    :cond_2
    move v10, v11

    goto :goto_0

    .end local v2    # "fromId":I
    .end local v3    # "fromIndex":I
    .end local v6    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .end local v7    # "toId":I
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    .restart local v3    # "fromIndex":I
    goto :goto_1

    .restart local v2    # "fromId":I
    .restart local v6    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .restart local v7    # "toId":I
    :cond_4
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v9

    .local v9, "transitionIndex":I
    if-gez v9, :cond_5

    move v10, v11

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    move-result v4

    .local v4, "hasReversibleFlag":Z
    invoke-virtual {p0, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v12, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v12, :cond_6

    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v5

    .local v5, "reversed":Z
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1, v5, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .end local v5    # "reversed":Z
    .local v8, "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    iput-object v8, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    goto :goto_0

    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v12, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v12, :cond_7

    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v5

    .restart local v5    # "reversed":Z
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1, v5, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V

    .restart local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_2

    .end local v5    # "reversed":Z
    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    instance-of v12, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v12, :cond_8

    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    .restart local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_2

    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    move v10, v11

    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .local v0, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    iget v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    const/4 v1, 0x2

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setVariablePadding(Z)V

    const/4 v1, 0x3

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setConstantSize(Z)V

    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setEnterFadeDuration(I)V

    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setExitFadeDuration(I)V

    const/4 v1, 0x0

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setDither(Z)V

    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAutoMirrored:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAutoMirrored(Z)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p4, "reversible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transition drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .local v1, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->init()V

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    move-result-object v0

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
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatedStateListDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->init()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mutate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v2

    .local v2, "targetIndex":I
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectTransition(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_1
    return v0

    .end local v0    # "changed":Z
    .end local v1    # "current":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method
