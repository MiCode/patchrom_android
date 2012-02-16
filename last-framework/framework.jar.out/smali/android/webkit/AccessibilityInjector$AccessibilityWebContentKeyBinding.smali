.class final Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityWebContentKeyBinding"
.end annotation


# static fields
.field private static final ACTION_MASK:I = -0x1000000

.field private static final ACTION_OFFSET:I = 0x18

.field private static final FIRST_ARGUMENT_MASK:I = 0xff0000

.field private static final FIRST_ARGUMENT_OFFSET:I = 0x10

.field private static final KEY_CODE_MASK:J = 0xffffffffL

.field private static final KEY_CODE_OFFSET:I = 0x0

.field private static final MODIFIERS_MASK:J = 0xfffffff00000000L

.field private static final MODIFIERS_OFFSET:I = 0x20

.field private static final SECOND_ARGUMENT_MASK:I = 0xff00

.field private static final SECOND_ARGUMENT_OFFSET:I = 0x8

.field private static final THIRD_ARGUMENT_MASK:I = 0xff

.field private static final THIRD_ARGUMENT_OFFSET:I


# instance fields
.field private final mActionSequence:[I

.field private final mKeyCodeAndModifiers:J


# direct methods
.method public constructor <init>(J[I)V
    .locals 0
    .parameter "keyCodeAndModifiers"
    .parameter "actionSequence"

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-wide p1, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mKeyCodeAndModifiers:J

    .line 471
    iput-object p3, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    .line 472
    return-void
.end method


# virtual methods
.method public getAction(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 433
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActionCode(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 440
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    aget v0, v0, p1

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getActionCount()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    array-length v0, v0

    return v0
.end method

.method public getFirstArgument(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 447
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    aget v0, v0, p1

    const/high16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getKeyCode()I
    .locals 4

    .prologue
    .line 412
    iget-wide v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mKeyCodeAndModifiers:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModifiers()I
    .locals 4

    .prologue
    .line 419
    iget-wide v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mKeyCodeAndModifiers:J

    const-wide v2, 0xfffffff00000000L

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSecondArgument(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 454
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    aget v0, v0, p1

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getThirdArgument(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 461
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->mActionSequence:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v3, "modifiers: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {p0}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    const-string v3, ", keyCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p0}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    const-string v3, ", actions["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 483
    const-string/jumbo v3, "{actionCode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p0, v2}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    const-string v3, ", firstArgument: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0, v2}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    const-string v3, ", secondArgument: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0, v2}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    const-string v3, ", thirdArgument: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0, v2}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
