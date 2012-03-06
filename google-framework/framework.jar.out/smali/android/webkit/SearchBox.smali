.class public interface abstract Landroid/webkit/SearchBox;
.super Ljava/lang/Object;
.source "SearchBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/SearchBox$IsSupportedCallback;,
        Landroid/webkit/SearchBox$SearchBoxListener;
    }
.end annotation


# virtual methods
.method public abstract addSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V
.end method

.method public abstract isSupported(Landroid/webkit/SearchBox$IsSupportedCallback;)V
.end method

.method public abstract oncancel(Landroid/webkit/SearchBox$SearchBoxListener;)V
.end method

.method public abstract onchange(Landroid/webkit/SearchBox$SearchBoxListener;)V
.end method

.method public abstract onresize(Landroid/webkit/SearchBox$SearchBoxListener;)V
.end method

.method public abstract onsubmit(Landroid/webkit/SearchBox$SearchBoxListener;)V
.end method

.method public abstract removeSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V
.end method

.method public abstract setDimensions(IIII)V
.end method

.method public abstract setQuery(Ljava/lang/String;)V
.end method

.method public abstract setSelection(II)V
.end method

.method public abstract setVerbatim(Z)V
.end method
