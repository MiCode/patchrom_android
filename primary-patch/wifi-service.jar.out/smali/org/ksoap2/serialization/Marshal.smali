.class public interface abstract Lorg/ksoap2/serialization/Marshal;
.super Ljava/lang/Object;
.source "Marshal.java"


# virtual methods
.method public abstract readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
.end method

.method public abstract writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
