.class Lcom/android/internal/widget/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ViewPager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/widget/ViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->access$000(Lcom/android/internal/widget/ViewPager;I)V

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    return-void
.end method
