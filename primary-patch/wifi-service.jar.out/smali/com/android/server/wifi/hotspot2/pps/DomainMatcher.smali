.class public Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$1;,
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;,
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    }
.end annotation


# static fields
.field private static final TestDomains:[Ljava/lang/String;


# instance fields
.field private final mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "garbage.apple.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "apple.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "jan.android.google.com."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jan.android.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jan.android.google.net."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jan.android.google.net"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.google.net"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "google.net"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "primary":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "secondary":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;-><init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$1;)V

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Secondary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    # invokes: Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->access$100(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    goto :goto_0

    .end local v1    # "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Primary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    # invokes: Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->access$100(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    return-void
.end method

.method public static arg2SubdomainOfArg1(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "l1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    const-string v7, "android.google.com"

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    .local v1, "dm1":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .local v3, "domain":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "domain":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "secondaries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v7, "apple.com"

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "net"

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    const-string v7, "android.google.com"

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    .local v2, "dm2":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .restart local v3    # "domain":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3    # "domain":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;"
        }
    .end annotation

    .prologue
    .local p1, "domain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    .local v1, "label":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "labelString":Ljava/lang/String;
    # invokes: Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getSubLabel(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->access$200(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    .end local v2    # "labelString":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v2    # "labelString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v3

    goto :goto_0

    .end local v2    # "labelString":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Domain matcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
