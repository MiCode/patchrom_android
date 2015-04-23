.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method


# virtual methods
.method bindViewHolder(I[Landroid/view/View;)V
    .locals 10
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # [Landroid/view/View;

    .prologue
    const/4 v9, 0x4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v4

    .local v4, "start":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v5

    .local v5, "startType":I
    add-int/lit8 v7, v4, 0x4

    add-int/lit8 v0, v7, -0x1

    .local v0, "end":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v7

    if-eq v7, v5, :cond_0

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget-object v3, p2, v9

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "row":Landroid/view/ViewGroup;
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v8, 0x1060071

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v9, :cond_3

    aget-object v6, p2, v1

    .local v6, "v":Landroid/view/View;
    add-int v7, v4, v1

    if-gt v7, v0, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    add-int v2, v4, v1

    .local v2, "itemIndex":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v2, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .end local v2    # "itemIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .end local v6    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x5

    new-array v0, v3, [Landroid/view/View;

    .local v0, "holder":[Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "row":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v1

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aput-object v2, v0, v6

    return-object v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7
    .param p1, "row"    # I

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .local v0, "callerCount":I
    int-to-float v4, v0

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    mul-int/lit8 v4, p1, 0x4

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .local v2, "serviceCount":I
    int-to-float v4, v2

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .local v3, "serviceRows":I
    add-int v4, v1, v3

    if-ge p1, v4, :cond_1

    sub-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    add-int v4, v0, v2

    sub-int v5, p1, v1

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v0

    .local v0, "holder":[Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(I[Landroid/view/View;)V

    const/4 v1, 0x4

    aget-object v1, v0, v1

    return-object v1

    .end local v0    # "holder":[Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    move-object v0, v1

    check-cast v0, [Landroid/view/View;

    .restart local v0    # "holder":[Landroid/view/View;
    goto :goto_0
.end method
