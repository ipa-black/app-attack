.class public final Lorg/apache/oro/text/GlobCompiler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/PatternCompiler;


# static fields
.field public static final CASE_INSENSITIVE_MASK:I = 0x1

.field public static final DEFAULT_MASK:I = 0x0

.field public static final QUESTION_MATCHES_ZERO_OR_ONE_MASK:I = 0x4

.field public static final READ_ONLY_MASK:I = 0x8

.field public static final STAR_CANNOT_MATCH_NULL_MASK:I = 0x2


# instance fields
.field private __perl5Compiler:Lorg/apache/oro/text/regex/Perl5Compiler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Compiler;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Compiler;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/GlobCompiler;->__perl5Compiler:Lorg/apache/oro/text/regex/Perl5Compiler;

    return-void
.end method

.method private static __isGlobMetaCharacter(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static __isPerl5MetaCharacter(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static globToPerl5([CI)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    move v4, v3

    move v5, v4

    :goto_2
    array-length v6, p0

    if-lt v4, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    aget-char v6, p0, v4

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_b

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_8

    const/16 v7, 0x5c

    packed-switch v6, :pswitch_data_0

    if-nez v5, :cond_3

    invoke-static {v6}, Lorg/apache/oro/text/GlobCompiler;->__isPerl5MetaCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    aget-char v6, p0, v4

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v3

    goto :goto_8

    :pswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v6, p0

    sub-int/2addr v6, v2

    if-ne v4, v6, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v6, v4, 0x1

    aget-char v8, p0, v6

    invoke-static {v8}, Lorg/apache/oro/text/GlobCompiler;->__isGlobMetaCharacter(C)Z

    move-result v8

    if-eqz v8, :cond_c

    aget-char v4, p0, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v6

    goto :goto_8

    :pswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x1

    array-length v6, p0

    if-ge v5, v6, :cond_7

    aget-char v6, p0, v5

    const/16 v7, 0x21

    const/16 v8, 0x5e

    if-eq v6, v7, :cond_6

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_6

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    move v4, v5

    :cond_7
    :goto_5
    move v5, v2

    goto :goto_8

    :cond_8
    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    const-string v6, ".?"

    goto :goto_7

    :cond_a
    const/16 v6, 0x2e

    goto :goto_3

    :cond_b
    if-eqz v5, :cond_d

    :cond_c
    :goto_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_d
    if-eqz p1, :cond_e

    const-string v6, ".+"

    goto :goto_7

    :cond_e
    const-string v6, ".*"

    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    add-int/2addr v4, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/GlobCompiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/GlobCompiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile([C)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/GlobCompiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile([CI)Lorg/apache/oro/text/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_1

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/apache/oro/text/GlobCompiler;->__perl5Compiler:Lorg/apache/oro/text/regex/Perl5Compiler;

    invoke-static {p1, p2}, Lorg/apache/oro/text/GlobCompiler;->globToPerl5([CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method
