.class public Lcom/mediatek/op/policy/DefaultKeyguardUtilExt;
.super Ljava/lang/Object;
.source "DefaultKeyguardUtilExt.java"

# interfaces
.implements Lcom/mediatek/common/policy/IKeyguardUtilExt;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DefaultKeyguardUtilExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldShowEmergencyBtnForVoiceOn()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public updateNewEventControllerVisibility(Landroid/view/View;I)V
    .locals 0
    .parameter "viewContainer"
    .parameter "newEventViewId"

    .prologue
    return-void
.end method
