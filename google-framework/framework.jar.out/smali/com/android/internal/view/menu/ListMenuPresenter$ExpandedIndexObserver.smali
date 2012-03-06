.class Lcom/android/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ListMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/ListMenuPresenter;Lcom/android/internal/view/menu/ListMenuPresenter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 282
    return-void
.end method
