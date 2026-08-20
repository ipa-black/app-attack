.class public final Lorg/apache/oro/text/perl/Perl5Util;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/MatchResult;


# static fields
.field public static final SPLIT_ALL:I = 0x0

.field private static final __matchExpression:Ljava/lang/String; = "m?(\\W)(.*)\\1([imsx]*)"

.field private static final __nullString:Ljava/lang/String; = ""


# instance fields
.field private __expressionCache:Lorg/apache/oro/util/Cache;

.field private __inputBeginOffset:I

.field private __inputEndOffset:I

.field private __lastMatch:Lorg/apache/oro/text/regex/MatchResult;

.field private __matchPattern:Lorg/apache/oro/text/regex/Pattern;

.field private __matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

.field private __originalInput:Ljava/lang/Object;

.field private __patternCache:Lorg/apache/oro/text/PatternCache;

.field private __splitList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/oro/text/PatternCacheLRU;

    invoke-direct {v0}, Lorg/apache/oro/text/PatternCacheLRU;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/oro/text/perl/Perl5Util;-><init>(Lorg/apache/oro/text/PatternCache;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/oro/text/PatternCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    iput-object p1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__patternCache:Lorg/apache/oro/text/PatternCache;

    new-instance v0, Lorg/apache/oro/util/CacheLRU;

    invoke-interface {p1}, Lorg/apache/oro/text/PatternCache;->capacity()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/apache/oro/util/CacheLRU;-><init>(I)V

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__expressionCache:Lorg/apache/oro/util/Cache;

    invoke-direct {p0}, Lorg/apache/oro/text/perl/Perl5Util;->__compilePatterns()V

    return-void
.end method

.method private __compilePatterns()V
    .locals 3

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Compiler;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Compiler;-><init>()V

    :try_start_0
    const-string v1, "m?(\\W)(.*)\\1([imsx]*)"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matchPattern:Lorg/apache/oro/text/regex/Pattern;
    :try_end_0
    .catch Lorg/apache/oro/text/regex/MalformedPatternException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/MalformedPatternException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private __parseMatchExpression(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__expressionCache:Lorg/apache/oro/util/Cache;

    invoke-interface {v0, p1}, Lorg/apache/oro/util/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Lorg/apache/oro/text/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    iget-object v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matchPattern:Lorg/apache/oro/text/regex/Pattern;

    invoke-virtual {v0, p1, v1}, Lorg/apache/oro/text/regex/Perl5Matcher;->matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/apache/oro/text/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lorg/apache/oro/text/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-gtz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x69

    if-eq v3, v5, :cond_5

    const/16 v5, 0x6d

    if-eq v3, v5, :cond_4

    const/16 v5, 0x73

    if-eq v3, v5, :cond_3

    const/16 v5, 0x78

    if-ne v3, v5, :cond_2

    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid options: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_4
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_5
    or-int/lit8 v2, v2, 0x1

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__patternCache:Lorg/apache/oro/text/PatternCache;

    invoke-interface {v0, v1, v2}, Lorg/apache/oro/text/PatternCache;->getPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__expressionCache:Lorg/apache/oro/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/apache/oro/util/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_7
    new-instance v0, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid expression: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized begin(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0, p1}, Lorg/apache/oro/text/regex/MatchResult;->begin(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized beginOffset(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0, p1}, Lorg/apache/oro/text/regex/MatchResult;->beginOffset(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized end(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0, p1}, Lorg/apache/oro/text/regex/MatchResult;->end(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endOffset(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0, p1}, Lorg/apache/oro/text/regex/MatchResult;->endOffset(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMatch()Lorg/apache/oro/text/regex/MatchResult;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized group(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0, p1}, Lorg/apache/oro/text/regex/MatchResult;->group(I)Ljava/lang/String;

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

.method public declared-synchronized groups()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0}, Lorg/apache/oro/text/regex/MatchResult;->groups()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized length()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-interface {v0}, Lorg/apache/oro/text/regex/MatchResult;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/perl/Perl5Util;->match(Ljava/lang/String;[C)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized match(Ljava/lang/String;Lorg/apache/oro/text/regex/PatternMatcherInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {p0, p1}, Lorg/apache/oro/text/perl/Perl5Util;->__parseMatchExpression(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->contains(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    invoke-virtual {p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getInput()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBeginOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputBeginOffset:I

    invoke-virtual {p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getEndOffset()I

    move-result p2

    iput p2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputEndOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized match(Ljava/lang/String;[C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/oro/text/perl/Perl5Util;->__parseMatchExpression(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;

    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {p0, p1}, Lorg/apache/oro/text/perl/Perl5Util;->__parseMatchExpression(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->contains([CLorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    iput-object p2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputBeginOffset:I

    array-length p2, p2

    iput p2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputEndOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postMatch()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/oro/text/regex/MatchResult;->endOffset(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    instance-of v2, v1, [C

    if-eqz v2, :cond_3

    check-cast v1, [C

    array-length v2, v1

    if-lt v0, v2, :cond_2

    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputEndOffset:I

    sub-int/2addr v3, v0

    invoke-direct {v2, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_4
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_5
    iget v2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputEndOffset:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_6
    const-string v0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postMatchCharArray()[C
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/apache/oro/text/regex/MatchResult;->endOffset(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    instance-of v4, v3, [C

    if-eqz v4, :cond_3

    check-cast v3, [C

    array-length v4, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v4, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_3
    iget v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputEndOffset:I

    sub-int/2addr v1, v0

    new-array v4, v1, [C

    invoke-static {v3, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputEndOffset:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v0, v4, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    sub-int v1, v4, v0

    :try_start_4
    new-array v1, v1, [C

    invoke-virtual {v3, v0, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preMatch()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/oro/text/regex/MatchResult;->beginOffset(I)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    instance-of v2, v1, [C

    if-eqz v2, :cond_3

    check-cast v1, [C

    array-length v2, v1

    if-le v0, v2, :cond_2

    array-length v0, v1

    :cond_2
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputBeginOffset:I

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    iget v2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputBeginOffset:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_4
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preMatchCharArray()[C
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/apache/oro/text/regex/MatchResult;->beginOffset(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/oro/text/perl/Perl5Util;->__originalInput:Ljava/lang/Object;

    instance-of v4, v3, [C

    if-eqz v4, :cond_3

    check-cast v3, [C

    array-length v1, v3

    if-lt v0, v1, :cond_2

    array-length v0, v3

    :cond_2
    iget v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputBeginOffset:I

    sub-int/2addr v0, v1

    new-array v4, v0, [C

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    iget v1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__inputBeginOffset:I

    sub-int v4, v0, v1

    new-array v4, v4, [C

    invoke-virtual {v3, v1, v0, v4, v2}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized split(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "/\\s+/"

    invoke-virtual {p0, v0, p1}, Lorg/apache/oro/text/perl/Perl5Util;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

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

.method public declared-synchronized split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/oro/text/perl/Perl5Util;->split(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Vector;

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

.method public declared-synchronized split(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/oro/text/perl/Perl5Util;->split(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized split(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "/\\s+/"

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/oro/text/perl/Perl5Util;->split(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized split(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/oro/text/perl/Perl5Util;->split(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized split(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/oro/text/perl/Perl5Util;->__parseMatchExpression(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p2

    new-instance v0, Lorg/apache/oro/text/regex/PatternMatcherInput;

    invoke-direct {v0, p3}, Lorg/apache/oro/text/regex/PatternMatcherInput;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    add-int/lit8 p4, p4, -0x1

    const/4 v4, 0x1

    if-eqz p4, :cond_4

    iget-object v5, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v5, v0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->contains(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/Perl5Matcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Lorg/apache/oro/text/regex/MatchResult;->beginOffset(I)I

    move-result v6

    invoke-virtual {p3, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/apache/oro/text/regex/MatchResult;->groups()I

    move-result v3

    if-le v3, v4, :cond_3

    :goto_1
    if-lt v4, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2, v4}, Lorg/apache/oro/text/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v2, v1}, Lorg/apache/oro/text/regex/MatchResult;->endOffset(I)I

    move-result v3

    goto :goto_0

    :cond_4
    :goto_3
    iget-object p2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p3, v3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_4
    if-gez p2, :cond_5

    goto :goto_5

    :cond_5
    iget-object p3, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/apache/oro/text/perl/Perl5Util;->__splitList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized substitute(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "Invalid expression: "

    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lorg/apache/oro/text/perl/Perl5Util;->__expressionCache:Lorg/apache/oro/util/Cache;

    invoke-interface {v3, v0}, Lorg/apache/oro/util/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    check-cast v3, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v1, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    iget-object v6, v3, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;->_pattern:Lorg/apache/oro/text/regex/Pattern;

    iget-object v7, v3, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;->_substitution:Lorg/apache/oro/text/regex/Perl5Substitution;

    iget v9, v3, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;->_numSubstitutions:I

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-static/range {v4 .. v9}, Lorg/apache/oro/text/regex/Util;->substitute(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, v1, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/Perl5Matcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    :cond_0
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_13

    const/4 v4, 0x0

    aget-char v5, v3, v4

    const/16 v6, 0x73

    if-ne v5, v6, :cond_13

    const/4 v5, 0x1

    aget-char v7, v3, v5

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_13

    aget-char v7, v3, v5

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_13

    const/4 v2, 0x2

    move v8, v2

    move v9, v4

    :goto_0
    array-length v10, v3

    const/16 v11, 0x5c

    const/4 v12, -0x1

    if-lt v8, v10, :cond_1

    move v8, v12

    goto :goto_2

    :cond_1
    aget-char v10, v3, v8

    if-ne v10, v11, :cond_2

    :goto_1
    xor-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    :cond_2
    if-ne v10, v7, :cond_11

    if-nez v9, :cond_11

    :goto_2
    if-eq v8, v12, :cond_10

    array-length v9, v3

    sub-int/2addr v9, v5

    if-eq v8, v9, :cond_10

    new-instance v9, Ljava/lang/StringBuffer;

    array-length v10, v3

    sub-int/2addr v10, v8

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v10, v8, 0x1

    move v13, v4

    move v14, v5

    :goto_3
    array-length v15, v3

    if-lt v10, v15, :cond_3

    move v10, v12

    goto :goto_4

    :cond_3
    aget-char v15, v3, v10

    if-ne v15, v11, :cond_4

    xor-int/2addr v13, v5

    if-eqz v13, :cond_f

    add-int/lit8 v15, v10, 0x1

    array-length v4, v3

    if-ge v15, v4, :cond_f

    aget-char v4, v3, v15

    if-ne v4, v7, :cond_f

    array-length v4, v3

    sub-int/2addr v4, v5

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-eq v4, v15, :cond_f

    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_4
    if-ne v15, v7, :cond_e

    if-eqz v14, :cond_e

    :goto_4
    if-eq v10, v12, :cond_d

    const/16 v4, 0x27

    if-eq v7, v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    move v4, v12

    :goto_5
    add-int/2addr v10, v5

    move v7, v4

    move v11, v5

    const/4 v4, 0x0

    :goto_6
    array-length v13, v3

    if-lt v10, v13, :cond_6

    iget-object v5, v1, Lorg/apache/oro/text/perl/Perl5Util;->__patternCache:Lorg/apache/oro/text/PatternCache;

    new-instance v6, Ljava/lang/String;

    sub-int/2addr v8, v2

    invoke-direct {v6, v3, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v5, v6, v4}, Lorg/apache/oro/text/PatternCache;->getPattern(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object v15

    new-instance v2, Lorg/apache/oro/text/regex/Perl5Substitution;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lorg/apache/oro/text/regex/Perl5Substitution;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;

    invoke-direct {v3, v15, v2, v11}, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;-><init>(Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Perl5Substitution;I)V

    iget-object v4, v1, Lorg/apache/oro/text/perl/Perl5Util;->__expressionCache:Lorg/apache/oro/util/Cache;

    invoke-interface {v4, v0, v3}, Lorg/apache/oro/util/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v14, v1, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    move-object/from16 v13, p1

    move-object/from16 v16, v2

    move-object/from16 v17, p3

    move/from16 v18, v11

    invoke-static/range {v13 .. v18}, Lorg/apache/oro/text/regex/Util;->substitute(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, v1, Lorg/apache/oro/text/perl/Perl5Util;->__matcher:Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/Perl5Matcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_6
    :try_start_4
    aget-char v13, v3, v10

    const/16 v14, 0x67

    if-eq v13, v14, :cond_c

    const/16 v14, 0x69

    if-eq v13, v14, :cond_b

    const/16 v14, 0x6d

    if-eq v13, v14, :cond_a

    const/16 v14, 0x6f

    if-eq v13, v14, :cond_9

    if-eq v13, v6, :cond_8

    const/16 v14, 0x78

    if-ne v13, v14, :cond_7

    or-int/lit8 v4, v4, 0x20

    goto :goto_7

    :cond_7
    new-instance v0, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-char v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    or-int/lit8 v4, v4, 0x10

    goto :goto_7

    :cond_9
    move v7, v5

    goto :goto_7

    :cond_a
    or-int/lit8 v4, v4, 0x8

    goto :goto_7

    :cond_b
    or-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    move v11, v12

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_d
    new-instance v2, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid expression: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move v14, v5

    const/4 v13, 0x0

    :cond_f
    aget-char v4, v3, v10

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    new-instance v2, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid expression: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-eqz v9, :cond_12

    goto/16 :goto_1

    :cond_12
    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    new-instance v3, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/oro/text/perl/MalformedPerl5PatternException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substitute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/perl/MalformedPerl5PatternException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/oro/text/perl/Perl5Util;->substitute(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/perl/Perl5Util;->__lastMatch:Lorg/apache/oro/text/regex/MatchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/oro/text/regex/MatchResult;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
