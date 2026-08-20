.class public Lorg/apache/ldap/common/schema/RegexSyntaxChecker;
.super Ljava/lang/Object;
.source "RegexSyntaxChecker.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SyntaxChecker;


# instance fields
.field private final expressions:[Ljava/lang/String;

.field private final oid:Ljava/lang/String;

.field private final perl:Lorg/apache/oro/text/perl/Perl5Util;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/oro/text/perl/Perl5Util;

    invoke-direct {v0}, Lorg/apache/oro/text/perl/Perl5Util;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->perl:Lorg/apache/oro/text/perl/Perl5Util;

    .line 53
    iput-object p2, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->expressions:[Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->oid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public assertSyntax(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->isValidSyntax(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljavax/naming/directory/InvalidAttributeValueException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " does not conform to the syntax specified by "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->oid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/directory/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyntaxOid()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSyntax(Ljava/lang/Object;)Z
    .locals 6

    .line 75
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 80
    :goto_1
    iget-object v4, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->expressions:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lorg/apache/ldap/common/schema/RegexSyntaxChecker;->perl:Lorg/apache/oro/text/perl/Perl5Util;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lorg/apache/oro/text/perl/Perl5Util;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return v3
.end method
