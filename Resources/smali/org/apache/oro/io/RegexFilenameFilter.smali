.class public abstract Lorg/apache/oro/io/RegexFilenameFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;
.implements Ljava/io/FileFilter;


# instance fields
.field _cache:Lorg/apache/oro/text/PatternCache;

.field _matcher:Lorg/apache/oro/text/regex/PatternMatcher;

.field _pattern:Lorg/apache/oro/text/regex/Pattern;


# direct methods
.method constructor <init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_cache:Lorg/apache/oro/text/PatternCache;

    iput-object p2, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-virtual {p0, p3}, Lorg/apache/oro/io/RegexFilenameFilter;->setFilterExpression(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_cache:Lorg/apache/oro/text/PatternCache;

    iput-object p2, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-virtual {p0, p3, p4}, Lorg/apache/oro/io/RegexFilenameFilter;->setFilterExpression(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_pattern:Lorg/apache/oro/text/regex/Pattern;

    invoke-interface {v1, p1, v2}, Lorg/apache/oro/text/regex/PatternMatcher;->matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    iget-object v1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_pattern:Lorg/apache/oro/text/regex/Pattern;

    invoke-interface {v0, p2, v1}, Lorg/apache/oro/text/regex/PatternMatcher;->matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result p2

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setFilterExpression(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/MalformedCachePatternException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_cache:Lorg/apache/oro/text/PatternCache;

    invoke-interface {v0, p1}, Lorg/apache/oro/text/PatternCache;->getPattern(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_pattern:Lorg/apache/oro/text/regex/Pattern;

    return-void
.end method

.method public setFilterExpression(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/MalformedCachePatternException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_cache:Lorg/apache/oro/text/PatternCache;

    invoke-interface {v0, p1, p2}, Lorg/apache/oro/text/PatternCache;->getPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/oro/io/RegexFilenameFilter;->_pattern:Lorg/apache/oro/text/regex/Pattern;

    return-void
.end method
