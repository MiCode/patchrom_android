.class public Landroid/graphics/drawable/MipmapDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "MipmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/MipmapDrawable$1;,
        Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;
    }
.end annotation


# instance fields
.field private final mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/MipmapDrawable;-><init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/content/res/Resources;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 306
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 307
    new-instance v0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;-><init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/graphics/drawable/MipmapDrawable;Landroid/content/res/Resources;)V

    .line 308
    .local v0, as:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;
    iput-object v0, p0, Landroid/graphics/drawable/MipmapDrawable;->mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    .line 309
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/MipmapDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 310
    invoke-direct {p0}, Landroid/graphics/drawable/MipmapDrawable;->onDrawableAdded()V

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/content/res/Resources;Landroid/graphics/drawable/MipmapDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/MipmapDrawable;-><init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private onDrawableAdded()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/MipmapDrawable;->selectDrawable(I)Z

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/MipmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/MipmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 116
    return-void
.end method


# virtual methods
.method public addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Landroid/graphics/drawable/MipmapDrawable;->mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-direct {p0}, Landroid/graphics/drawable/MipmapDrawable;->onDrawableAdded()V

    .line 106
    :cond_0
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 138
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 141
    .local v4, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, depth:I
    if-ge v1, v4, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 143
    :cond_1
    if-ne v5, v9, :cond_0

    .line 147
    if-gt v1, v4, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    sget-object v6, Lcom/android/internal/R$styleable;->MipmapDrawableItem:[I

    invoke-virtual {p1, p3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 157
    .local v3, drawableRes:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v6, p0, Landroid/graphics/drawable/MipmapDrawable;->mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 163
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 165
    if-eq v5, v9, :cond_3

    .line 166
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 177
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #depth:I
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawableRes:I
    :cond_4
    invoke-direct {p0}, Landroid/graphics/drawable/MipmapDrawable;->onDrawableAdded()V

    .line 178
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/graphics/drawable/MipmapDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 183
    iget-object v1, p0, Landroid/graphics/drawable/MipmapDrawable;->mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    iget-object v0, p0, Landroid/graphics/drawable/MipmapDrawable;->mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    #getter for: Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I
    invoke-static {v0}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->access$000(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;)[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    #setter for: Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I
    invoke-static {v1, v0}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->access$002(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;[I)[I

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/MipmapDrawable;->mMutated:Z

    .line 186
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 122
    iget-object v1, p0, Landroid/graphics/drawable/MipmapDrawable;->mMipmapContainerState:Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->indexForBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 125
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/MipmapDrawable;->selectDrawable(I)Z

    .line 127
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 128
    return-void
.end method
