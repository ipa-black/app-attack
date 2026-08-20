.class public Lorg/apache/oro/io/Perl5FilenameFilter;
.super Lorg/apache/oro/io/RegexFilenameFilter;


# static fields
.field private static final __CACHE:Lorg/apache/oro/text/PatternCache;

.field private static final __MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;-><init>()V

    sput-object v0, Lorg/apache/oro/io/Perl5FilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    new-instance v0, Lorg/apache/oro/text/PatternCacheLRU;

    invoke-direct {v0}, Lorg/apache/oro/text/PatternCacheLRU;-><init>()V

    sput-object v0, Lorg/apache/oro/io/Perl5FilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/oro/io/Perl5FilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    sget-object v1, Lorg/apache/oro/io/Perl5FilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-direct {p0, v0, v1}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/oro/io/Perl5FilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    sget-object v1, Lorg/apache/oro/io/Perl5FilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/apache/oro/io/Perl5FilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    sget-object v1, Lorg/apache/oro/io/Perl5FilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;I)V

    return-void
.end method
