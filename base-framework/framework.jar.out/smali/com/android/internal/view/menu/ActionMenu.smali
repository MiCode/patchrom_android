.class public Lcom/android/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .local v4, qwerty:Z
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    .local v1, item:Lcom/android/internal/view/menu/ActionMenuItem;
    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v5

    .local v5, shortcut:C
    :goto_1
    if-ne p1, v5, :cond_1

    .end local v1           #item:Lcom/android/internal/view/menu/ActionMenuItem;
    .end local v5           #shortcut:C
    :goto_2
    return-object v1

    .restart local v1       #item:Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v5

    goto :goto_1

    .restart local v5       #shortcut:C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/view/menu/ActionMenuItem;
    .end local v5           #shortcut:C
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .local v0, item:Lcom/android/internal/view/menu/ActionMenuItem;
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .local v6, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .local v3, N:I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->removeGroup(I)V

    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .local v8, ri:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v9, rintent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .local v5, item:Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #N:I
    .end local v4           #i:I
    .end local v5           #item:Landroid/view/MenuItem;
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    .end local v9           #rintent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3       #N:I
    .restart local v4       #i:I
    .restart local v8       #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 2
    .parameter "id"
    .parameter "flags"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    .local v0, item:Lcom/android/internal/view/menu/ActionMenuItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    goto :goto_0
.end method

.method public removeGroup(I)V
    .locals 4
    .parameter "groupId"

    .prologue
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    .local v1, item:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 5
    .parameter "group"
    .parameter "enabled"

    .prologue
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    .local v1, item:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    .local v1, item:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .parameter "isQwerty"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
