.class public abstract Lorg/apache/oro/text/GenericPatternCache;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/PatternCache;


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x14


# instance fields
.field _cache:Lorg/apache/oro/util/Cache;

.field _compiler:Lorg/apache/oro/text/regex/PatternCompiler;


# direct methods
.method constructor <init>(Lorg/apache/oro/util/Cache;Lorg/apache/oro/text/regex/PatternCompiler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/GenericPatternCache;->_cache:Lorg/apache/oro/util/Cache;

    iput-object p2, p0, Lorg/apache/oro/text/GenericPatternCache;->_compiler:Lorg/apache/oro/text/regex/PatternCompiler;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addPattern(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/GenericPatternCache;->addPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/GenericPatternCache;->_cache:Lorg/apache/oro/util/Cache;

    invoke-interface {v0, p1}, Lorg/apache/oro/util/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/oro/text/regex/Pattern;

    invoke-interface {v0}, Lorg/apache/oro/text/regex/Pattern;->getOptions()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/oro/text/GenericPatternCache;->_compiler:Lorg/apache/oro/text/regex/PatternCompiler;

    invoke-interface {v0, p1, p2}, Lorg/apache/oro/text/regex/PatternCompiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/oro/text/GenericPatternCache;->_cache:Lorg/apache/oro/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/apache/oro/util/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/GenericPatternCache;->_cache:Lorg/apache/oro/util/Cache;

    invoke-interface {v0}, Lorg/apache/oro/util/Cache;->capacity()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized getPattern(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/MalformedCachePatternException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/GenericPatternCache;->getPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/MalformedCachePatternException;
        }
    .end annotation

    const-string v0, "Invalid expression: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/GenericPatternCache;->addPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/oro/text/regex/MalformedPatternException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v1, Lorg/apache/oro/text/MalformedCachePatternException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/oro/text/regex/MalformedPatternException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/oro/text/MalformedCachePatternException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/GenericPatternCache;->_cache:Lorg/apache/oro/util/Cache;

    invoke-interface {v0}, Lorg/apache/oro/util/Cache;->size()I

    move-result v0

    return v0
.end method
