.class final Landroid/animation/LayoutTransition$CleanupCallback;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/LayoutTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CleanupCallback"
.end annotation


# instance fields
.field final layoutChangeListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/view/ViewGroup;)V
    .locals 0
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "listenerMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    iput-object p2, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    return-void
.end method

.method private cleanup()V
    .locals 6

    .prologue
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_1

    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .local v4, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    .local v2, "listener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {v3, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .end local v2    # "listener":Landroid/view/View$OnLayoutChangeListener;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/animation/LayoutTransition$CleanupCallback;->layoutChangeListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/animation/LayoutTransition$CleanupCallback;->cleanup()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Landroid/animation/LayoutTransition$CleanupCallback;->cleanup()V

    return-void
.end method
