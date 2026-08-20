.class public interface abstract Lorg/apache/oro/text/PatternCache;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addPattern(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation
.end method

.method public abstract addPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation
.end method

.method public abstract capacity()I
.end method

.method public abstract getPattern(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/MalformedCachePatternException;
        }
    .end annotation
.end method

.method public abstract getPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/MalformedCachePatternException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method
