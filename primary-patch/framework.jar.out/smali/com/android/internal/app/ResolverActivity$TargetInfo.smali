.class public interface abstract Lcom/android/internal/app/ResolverActivity$TargetInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TargetInfo"
.end annotation


# virtual methods
.method public abstract cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
.end method

.method public abstract getAllSourceIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadgeContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getBadgeIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDisplayIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDisplayLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getExtendedInfo()Ljava/lang/CharSequence;
.end method

.method public abstract getResolveInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract getResolvedComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getResolvedIntent()Landroid/content/Intent;
.end method

.method public abstract start(Landroid/app/Activity;Landroid/os/Bundle;)Z
.end method

.method public abstract startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
.end method

.method public abstract startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
.end method
