.class public Lorg/apache/oro/io/AwkFilenameFilter;
.super Lorg/apache/oro/io/RegexFilenameFilter;


# static fields
.field private static final __CACHE:Lorg/apache/oro/text/PatternCache;

.field private static final __MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/oro/text/awk/AwkMatcher;

    invoke-direct {v0}, Lorg/apache/oro/text/awk/AwkMatcher;-><init>()V

    sput-object v0, Lorg/apache/oro/io/AwkFilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    new-instance v0, Lorg/apache/oro/text/PatternCacheLRU;

    new-instance v1, Lorg/apache/oro/text/awk/AwkCompiler;

    invoke-direct {v1}, Lorg/apache/oro/text/awk/AwkCompiler;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/oro/text/PatternCacheLRU;-><init>(Lorg/apache/oro/text/regex/PatternCompiler;)V

    sput-object v0, Lorg/apache/oro/io/AwkFilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/oro/io/AwkFilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    sget-object v1, Lorg/apache/oro/io/AwkFilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-direct {p0, v0, v1}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/oro/io/AwkFilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    sget-object v1, Lorg/apache/oro/io/AwkFilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/apache/oro/io/AwkFilenameFilter;->__CACHE:Lorg/apache/oro/text/PatternCache;

    sget-object v1, Lorg/apache/oro/io/AwkFilenameFilter;->__MATCHER:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/oro/io/RegexFilenameFilter;-><init>(Lorg/apache/oro/text/PatternCache;Lorg/apache/oro/text/regex/PatternMatcher;Ljava/lang/String;I)V

    return-void
.end method
