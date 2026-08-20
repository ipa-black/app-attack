.class public Lorg/apache/oro/text/regex/StringSubstitution;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/Substitution;


# instance fields
.field _subLength:I

.field _substitution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/oro/text/regex/StringSubstitution;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/regex/StringSubstitution;->setSubstitution(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendSubstitution(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;ILorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;)V
    .locals 0

    iget p2, p0, Lorg/apache/oro/text/regex/StringSubstitution;->_subLength:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/apache/oro/text/regex/StringSubstitution;->_substitution:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getSubstitution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/StringSubstitution;->_substitution:Ljava/lang/String;

    return-object v0
.end method

.method public setSubstitution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/oro/text/regex/StringSubstitution;->_substitution:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/oro/text/regex/StringSubstitution;->_subLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/StringSubstitution;->getSubstitution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
