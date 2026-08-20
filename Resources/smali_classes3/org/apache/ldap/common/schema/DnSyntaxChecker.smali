.class public Lorg/apache/ldap/common/schema/DnSyntaxChecker;
.super Ljava/lang/Object;
.source "DnSyntaxChecker.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SyntaxChecker;


# instance fields
.field private final oid:Ljava/lang/String;

.field private parser:Ljavax/naming/NameParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/ldap/common/schema/DnSyntaxChecker;->oid:Ljava/lang/String;

    .line 62
    new-instance p1, Lorg/apache/ldap/common/name/DnParser;

    invoke-direct {p1}, Lorg/apache/ldap/common/name/DnParser;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/schema/DnSyntaxChecker;->parser:Ljavax/naming/NameParser;

    return-void
.end method


# virtual methods
.method public assertSyntax(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 112
    instance-of v0, p1, Ljavax/naming/Name;

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DnSyntaxChecker;->parser:Ljavax/naming/NameParser;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/naming/NameParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    .line 121
    :cond_1
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Do not know how syntax check instances of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyntaxOid()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DnSyntaxChecker;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSyntax(Ljava/lang/Object;)Z
    .locals 3

    .line 85
    instance-of v0, p1, Ljavax/naming/Name;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DnSyntaxChecker;->parser:Ljavax/naming/NameParser;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljavax/naming/NameParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_1
    return v2
.end method
