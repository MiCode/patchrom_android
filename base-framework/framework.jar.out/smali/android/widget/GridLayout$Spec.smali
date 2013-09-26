.class public Landroid/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Landroid/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/widget/GridLayout$Alignment;

.field final span:Landroid/widget/GridLayout$Interval;

.field final startDefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/widget/GridLayout$Alignment;)V
    .locals 2
    .parameter "startDefined"
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V

    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;)V

    return-void
.end method

.method private constructor <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V
    .locals 0
    .parameter "startDefined"
    .parameter "span"
    .parameter "alignment"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iput-object p2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iput-object p3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    return-void
.end method


# virtual methods
.method final copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 3
    .parameter "alignment"

    .prologue
    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method final copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;
    .locals 3
    .parameter "span"

    .prologue
    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/GridLayout$Spec;

    .local v0, spec:Landroid/widget/GridLayout$Spec;
    iget-object v3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget-object v4, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-object v4, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v1}, Landroid/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method
