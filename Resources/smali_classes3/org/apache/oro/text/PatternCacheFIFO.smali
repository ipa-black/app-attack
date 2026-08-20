.class public final Lorg/apache/oro/text/PatternCacheFIFO;
.super Lorg/apache/oro/text/GenericPatternCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/oro/text/PatternCacheFIFO;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Compiler;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Compiler;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/oro/text/PatternCacheFIFO;-><init>(ILorg/apache/oro/text/regex/PatternCompiler;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/oro/text/regex/PatternCompiler;)V
    .locals 1

    new-instance v0, Lorg/apache/oro/util/CacheFIFO;

    invoke-direct {v0, p1}, Lorg/apache/oro/util/CacheFIFO;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/oro/text/GenericPatternCache;-><init>(Lorg/apache/oro/util/Cache;Lorg/apache/oro/text/regex/PatternCompiler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/oro/text/regex/PatternCompiler;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lorg/apache/oro/text/PatternCacheFIFO;-><init>(ILorg/apache/oro/text/regex/PatternCompiler;)V

    return-void
.end method
