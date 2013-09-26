.class public Landroid/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "a"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;
    .locals 1
    .parameter "context"

    .prologue
    new-instance v0, Landroid/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 1
    .parameter "nextIntent"

    .prologue
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 2
    .parameter "nextIntent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, target:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;
    .locals 9
    .parameter "sourceActivity"

    .prologue
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, insertAt:I
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .local v3, parent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    :goto_0
    if-eqz v3, :cond_1

    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .local v4, parentActivity:Ljava/lang/String;
    if-eqz v4, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #parentActivity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TaskStackBuilder"

    const-string v7, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;
    .locals 9
    .parameter "sourceActivityName"

    .prologue
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, insertAt:I
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .local v4, parentActivity:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .local v3, parent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v3           #parent:Landroid/content/Intent;
    .end local v4           #parentActivity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TaskStackBuilder"

    const-string v7, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/ActivityInfo;
    .restart local v4       #parentActivity:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/TaskStackBuilder;"
        }
    .end annotation

    .prologue
    .local p1, sourceActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, insertAt:I
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v6, v7, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .local v4, parentActivity:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .local v3, parent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v3           #parent:Landroid/content/Intent;
    .end local v4           #parentActivity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TaskStackBuilder"

    const-string v7, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/ActivityInfo;
    .restart local v4       #parentActivity:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    return-object v0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1
    .parameter "requestCode"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "requestCode"
    .parameter "flags"
    .parameter "options"

    .prologue
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .local v0, intents:[Landroid/content/Intent;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public startActivities()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .local v0, intents:[Landroid/content/Intent;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
