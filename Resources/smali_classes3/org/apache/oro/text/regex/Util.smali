.class public final Lorg/apache/oro/text/regex/Util;
.super Ljava/lang/Object;


# static fields
.field public static final SPLIT_ALL:I = 0x0

.field public static final SUBSTITUTE_ALL:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static split(Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;)Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/oro/text/regex/Util;->split(Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static split(Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;I)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/oro/text/regex/Util;->split(Ljava/util/Collection;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static split(Ljava/util/Collection;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/oro/text/regex/Util;->split(Ljava/util/Collection;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;I)V

    return-void
.end method

.method public static split(Ljava/util/Collection;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;I)V
    .locals 5

    new-instance v0, Lorg/apache/oro/text/regex/PatternMatcherInput;

    invoke-direct {v0, p3}, Lorg/apache/oro/text/regex/PatternMatcherInput;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-eqz p4, :cond_1

    invoke-interface {p1, v0, p2}, Lorg/apache/oro/text/regex/PatternMatcher;->contains(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/oro/text/regex/PatternMatcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/oro/text/regex/MatchResult;->beginOffset(I)I

    move-result v4

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Lorg/apache/oro/text/regex/MatchResult;->endOffset(I)I

    move-result v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static substitute(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Ljava/lang/String;I)I
    .locals 6

    new-instance v4, Lorg/apache/oro/text/regex/PatternMatcherInput;

    invoke-direct {v4, p4}, Lorg/apache/oro/text/regex/PatternMatcherInput;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/oro/text/regex/Util;->substitute(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Lorg/apache/oro/text/regex/PatternMatcherInput;I)I

    move-result p0

    return p0
.end method

.method public static substitute(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Lorg/apache/oro/text/regex/PatternMatcherInput;I)I
    .locals 10

    invoke-virtual {p4}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBeginOffset()I

    move-result v0

    invoke-virtual {p4}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBuffer()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz p5, :cond_1

    invoke-interface {p1, p4, p2}, Lorg/apache/oro/text/regex/PatternMatcher;->contains(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p4}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getMatchBeginOffset()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/oro/text/regex/PatternMatcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v5

    move-object v3, p3

    move-object v4, p0

    move v6, v2

    move-object v7, p4

    move-object v8, p1

    move-object v9, p2

    invoke-interface/range {v3 .. v9}, Lorg/apache/oro/text/regex/Substitution;->appendSubstitution(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;ILorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;)V

    invoke-virtual {p4}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getMatchEndOffset()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p4}, Lorg/apache/oro/text/regex/PatternMatcherInput;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v1, v0, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return v2
.end method

.method public static substitute(Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/oro/text/regex/Util;->substitute(Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substitute(Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v4, Lorg/apache/oro/text/regex/PatternMatcherInput;

    invoke-direct {v4, p3}, Lorg/apache/oro/text/regex/PatternMatcherInput;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/oro/text/regex/Util;->substitute(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Substitution;Lorg/apache/oro/text/regex/PatternMatcherInput;I)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method
