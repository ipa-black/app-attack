.class public Lorg/apache/ldap/server/db/SubstringEvaluator;
.super Ljava/lang/Object;
.source "SubstringEvaluator.java"

# interfaces
.implements Lorg/apache/ldap/server/db/Evaluator;


# instance fields
.field private attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field private db:Lorg/apache/ldap/server/db/Database;

.field private oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/schema/OidRegistry;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    .line 62
    iput-object p2, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    .line 63
    iput-object p3, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/IndexRecord;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 74
    move-object v0, p1

    check-cast v0, Lorg/apache/ldap/common/filter/SubstringNode;

    .line 75
    iget-object v1, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->oidRegistry:Lorg/apache/ldap/server/schema/OidRegistry;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/server/schema/OidRegistry;->getOid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v2, v1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/db/Database;->hasUserIndexOn(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "\' had incorrect syntax"

    const-string v5, "SubstringNode \'"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/ldap/server/db/Database;->getUserIndex(Ljava/lang/String;)Lorg/apache/ldap/server/db/Index;

    move-result-object v2

    .line 90
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/apache/ldap/server/db/Index;->listReverseIndices(Ljava/math/BigInteger;)Lorg/apache/ldap/server/db/IndexEnumeration;

    move-result-object p2

    .line 95
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/SubstringNode;->getRegex(Lorg/apache/ldap/common/schema/Normalizer;)Lorg/apache/regexp/RE;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/regexp/RESyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_1

    return v6

    .line 108
    :cond_1
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/db/IndexRecord;

    .line 111
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getIndexKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->close()V

    return v3

    :catch_0
    move-exception p2

    .line 99
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p2}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 102
    throw v0

    .line 127
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v2

    if-nez v2, :cond_3

    .line 129
    iget-object v2, p0, Lorg/apache/ldap/server/db/SubstringEvaluator;->db:Lorg/apache/ldap/server/db/Database;

    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v2

    .line 130
    invoke-virtual {p2, v2}, Lorg/apache/ldap/server/db/IndexRecord;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 134
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p2

    if-nez p2, :cond_4

    return v6

    .line 145
    :cond_4
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/SubstringNode;->getRegex(Lorg/apache/ldap/common/schema/Normalizer;)Lorg/apache/regexp/RE;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/regexp/RESyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    invoke-interface {p2}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    .line 162
    :cond_5
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_6

    return v6

    .line 165
    :cond_6
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/String;

    .line 168
    invoke-virtual {v0, p1}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 170
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->close()V

    return v3

    :catch_1
    move-exception p2

    .line 149
    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p2}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 152
    throw v0
.end method
