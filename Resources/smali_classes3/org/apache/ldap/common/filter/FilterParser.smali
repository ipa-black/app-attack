.class public interface abstract Lorg/apache/ldap/common/filter/FilterParser;
.super Ljava/lang/Object;
.source "FilterParser.java"


# virtual methods
.method public abstract parse(Ljava/lang/String;)Lorg/apache/ldap/common/filter/ExprNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setFilterParserMonitor(Lorg/apache/ldap/common/filter/FilterParserMonitor;)V
.end method
