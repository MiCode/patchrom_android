.class Landroid/text/Layout$Ellipsizer;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ellipsizer"
.end annotation


# instance fields
.field mLayout:Landroid/text/Layout;

.field mMethod:Landroid/text/TextUtils$TruncateAt;

.field mText:Ljava/lang/CharSequence;

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "s"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4
    .parameter "off"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .local v0, buf:[C
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2, v0, v3}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    aget-char v1, v0, v3

    .local v1, ret:C
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    return v1
.end method

.method public getChars(II[CI)V
    .locals 9
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .local v7, line1:I
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .local v8, line2:I
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move v3, v7

    .local v3, i:I
    :goto_0
    if-gt v3, v8, :cond_0

    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    #calls: Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .local v0, s:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    move-result v1

    new-array v0, v1, [C

    .local v0, s:[C
    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
