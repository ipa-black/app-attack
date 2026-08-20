.class public Lorg/apache/ldap/server/db/SubstringEnumerator;
.super Ljava/lang/Object;
.source "SubstringEnumerator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Enumerator;


# instance fields
.field private final attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field private final db:Lorg/apache/ldap/server/db/Database;

.field private final evaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;Lorg/apache/ldap/server/db/SubstringEvaluator;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    .line 70
    iput-object p3, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->evaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;

    .line 71
    iput-object p2, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/db/SubstringEnumerator;)Lorg/apache/ldap/server/db/SubstringEvaluator;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->evaluator:Lorg/apache/ldap/server/db/SubstringEvaluator;

    return-object p0
.end method


# virtual methods
.method public enumerate(Lorg/apache/ldap/common/filter/ExprNode;)Ljavax/naming/NamingEnumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/apache/ldap/common/filter/SubstringNode;

    .line 90
    iget-object v1, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/SubstringNode;->getRegex(Lorg/apache/ldap/common/schema/Normalizer;)Lorg/apache/regexp/RE;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/regexp/RESyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    iget-object v1, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getInitial()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 119
    invoke-interface {v1, p1}, Lorg/apache/ldap/server/db/Index;->listIndices(Lorg/apache/regexp/RE;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getInitial()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/apache/ldap/server/db/Index;->listIndices(Lorg/apache/regexp/RE;Ljava/lang/String;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljavax/naming/NamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "SubstringNode \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "\' had incorrect syntax"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 108
    throw v1

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/SubstringEnumerator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Database;->getNdnIndex()Lorg/apache/ldap/server/db/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/server/db/Index;->listIndices()Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object v0

    .line 137
    new-instance v1, Lorg/apache/ldap/server/db/SubstringEnumerator$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ldap/server/db/SubstringEnumerator$1;-><init>(Lorg/apache/ldap/server/db/SubstringEnumerator;Lorg/apache/ldap/common/filter/ExprNode;)V

    .line 145
    new-instance p1, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/server/db/IndexAssertionEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Lorg/apache/ldap/server/db/IndexAssertion;)V

    return-object p1
.end method
