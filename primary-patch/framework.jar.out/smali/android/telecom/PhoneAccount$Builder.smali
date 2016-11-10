.class public Landroid/telecom/PhoneAccount$Builder;
.super Ljava/lang/Object;
.source "PhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mCapabilities:I

.field private mHighlightColor:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mShortDescription:Ljava/lang/CharSequence;

.field private mSubscriptionAddress:Landroid/net/Uri;

.field private mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccount;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Landroid/telecom/PhoneAccount;
    .locals 12

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tel"

    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    :cond_0
    new-instance v0, Landroid/telecom/PhoneAccount;

    iget-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    iget v4, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    iget-object v5, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v6, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    iget-object v7, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iget-boolean v10, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLandroid/telecom/PhoneAccount$1;)V

    return-object v0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    return-object p0
.end method

.method public setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setIsEnabled(Z)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uriScheme":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
