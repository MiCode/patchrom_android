.class interface abstract Lcom/android/server/pm/PackageManagerService$BlobXmlRestorer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "BlobXmlRestorer"
.end annotation


# virtual methods
.method public abstract apply(Lorg/xmlpull/v1/XmlPullParser;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
