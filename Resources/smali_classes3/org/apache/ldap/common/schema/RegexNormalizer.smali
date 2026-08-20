.class public Lorg/apache/ldap/common/schema/RegexNormalizer;
.super Ljava/lang/Object;
.source "RegexNormalizer.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/Normalizer;


# instance fields
.field private final perl:Lorg/apache/oro/text/perl/Perl5Util;

.field private regexes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/oro/text/perl/Perl5Util;

    invoke-direct {v0}, Lorg/apache/oro/text/perl/Perl5Util;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/RegexNormalizer;->perl:Lorg/apache/oro/text/perl/Perl5Util;

    .line 45
    iput-object p1, p0, Lorg/apache/ldap/common/schema/RegexNormalizer;->regexes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public normalize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 54
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/common/schema/RegexNormalizer;->regexes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/apache/ldap/common/schema/RegexNormalizer;->perl:Lorg/apache/oro/text/perl/Perl5Util;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1, p1}, Lorg/apache/oro/text/perl/Perl5Util;->substitute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RegexNormalizer( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 78
    :goto_0
    iget-object v2, p0, Lorg/apache/ldap/common/schema/RegexNormalizer;->regexes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 80
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v2, p0, Lorg/apache/ldap/common/schema/RegexNormalizer;->regexes:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 84
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
