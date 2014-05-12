.class Landroid/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field values:Landroid/transition/TransitionValues;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/TransitionValues;)V
    .locals 0
    .parameter "view"
    .parameter "name"
    .parameter "values"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    iput-object p2, p0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    return-void
.end method
