.class final Lcom/android/internal/policy/impl/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconUtilities"

.field private static final sColors:[I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mColorIndex:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private final mGlowColorPressedPaint:Landroid/graphics/Paint;

.field private mIconHeight:I

.field private mIconTextureHeight:I

.field private mIconTextureWidth:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/IconUtilities;->sColors:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/16 v11, 0x1e

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    .line 55
    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconHeight:I

    .line 56
    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    .line 57
    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    .line 59
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    .line 67
    iput v9, p0, Lcom/android/internal/policy/impl/IconUtilities;->mColorIndex:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 71
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 72
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .local v2, density:F
    const/high16 v6, 0x40a0

    mul-float v0, v6, v2

    .line 75
    .local v0, blurPx:F
    const/high16 v6, 0x105

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconHeight:I

    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    .line 76
    iget v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    const/high16 v7, 0x4000

    mul-float/2addr v7, v0

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    iput v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    .line 78
    iget-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/BlurMaskFilter;

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v0, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 80
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .local v5, value:Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v8, 0x101038d

    invoke-virtual {v6, v8, v5, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->data:I

    :goto_0
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v9, v11}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 84
    iget-object v7, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v8, 0x101038f

    invoke-virtual {v6, v8, v5, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/util/TypedValue;->data:I

    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v9, v11}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 88
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 89
    .local v1, cm:Landroid/graphics/ColorMatrix;
    const v6, 0x3e4ccccd

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 91
    iget-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    new-instance v7, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 93
    return-void

    .line 81
    .end local v1           #cm:Landroid/graphics/ColorMatrix;
    :cond_0
    const/16 v6, -0x3d00

    goto :goto_0

    .line 84
    :cond_1
    const/16 v6, -0x7200

    goto :goto_1
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "icon"

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    .line 116
    .local v13, width:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconHeight:I

    .line 118
    .local v4, height:I
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v6, p1

    .line 119
    check-cast v6, Landroid/graphics/drawable/PaintDrawable;

    .line 120
    .local v6, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v13}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 121
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 130
    .end local v6           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 131
    .local v9, sourceWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 133
    .local v8, sourceHeight:I
    if-lez v9, :cond_2

    if-lez v9, :cond_2

    .line 135
    if-lt v13, v9, :cond_1

    if-ge v4, v8, :cond_5

    .line 137
    :cond_1
    int-to-float v14, v9

    int-to-float v15, v8

    div-float v7, v14, v15

    .line 138
    .local v7, ratio:F
    if-le v9, v8, :cond_4

    .line 139
    int-to-float v14, v13

    div-float/2addr v14, v7

    float-to-int v4, v14

    .line 151
    .end local v7           #ratio:F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    .line 152
    .local v11, textureWidth:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    .line 154
    .local v10, textureHeight:I
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    .local v1, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    .line 157
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    sub-int v14, v11, v13

    div-int/lit8 v5, v14, 0x2

    .line 160
    .local v5, left:I
    sub-int v14, v10, v4

    div-int/lit8 v12, v14, 0x2

    .line 171
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    add-int v14, v5, v13

    add-int v15, v12, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 176
    return-object v1

    .line 122
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #left:I
    .end local v8           #sourceHeight:I
    .end local v9           #sourceWidth:I
    .end local v10           #textureHeight:I
    .end local v11           #textureWidth:I
    .end local v12           #top:I
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_0

    move-object/from16 v2, p1

    .line 124
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 125
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v14

    if-nez v14, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 140
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7       #ratio:F
    .restart local v8       #sourceHeight:I
    .restart local v9       #sourceWidth:I
    :cond_4
    if-le v8, v9, :cond_2

    .line 141
    int-to-float v14, v4

    mul-float/2addr v14, v7

    float-to-int v13, v14

    goto :goto_1

    .line 143
    .end local v7           #ratio:F
    :cond_5
    if-ge v9, v13, :cond_2

    if-ge v8, v4, :cond_2

    .line 145
    move v13, v9

    .line 146
    move v4, v8

    goto :goto_1
.end method

.method private createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "pressed"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 180
    iget v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    .local v2, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 184
    .local v0, dest:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 186
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 187
    .local v3, xy:[I
    iget-object v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    .local v1, mask:Landroid/graphics/Bitmap;
    aget v4, v3, v8

    int-to-float v5, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v6, v4

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {v0, v1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    iget-object v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    return-object v2

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method


# virtual methods
.method public createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    .local v1, scaled:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 100
    .local v0, result:Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v6, [I

    const v3, 0x101009c

    aput v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/IconUtilities;->createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 102
    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v1, v6}, Lcom/android/internal/policy/impl/IconUtilities;->createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 104
    new-array v2, v5, [I

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 106
    iget v2, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 107
    return-object v0
.end method
