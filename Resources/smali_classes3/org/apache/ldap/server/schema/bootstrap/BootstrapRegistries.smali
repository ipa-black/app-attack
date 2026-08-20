.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;
.super Ljava/lang/Object;
.source "BootstrapRegistries.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/Registries;


# instance fields
.field private attributeTypeRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

.field private comparatorRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;

.field private ditContentRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;

.field private ditStructureRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;

.field private matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

.field private matchingRuleUseRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;

.field private nameFormRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;

.field private normalizerRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

.field private objectClassRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;

.field private objectFactoryRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;

.field private oidRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

.field private stateFactoryRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;

.field private syntaxCheckerRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;

.field private syntaxRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    .line 59
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->normalizerRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    .line 60
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->comparatorRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;

    .line 61
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->syntaxCheckerRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;

    .line 62
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->syntaxRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;

    .line 63
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    .line 64
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    .line 65
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->objectClassRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;

    .line 66
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->ditContentRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;

    .line 67
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->ditStructureRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;

    .line 68
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleUseRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;

    .line 69
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->nameFormRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;

    .line 70
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;-><init>(Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->objectFactoryRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;

    .line 71
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;

    invoke-direct {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->stateFactoryRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;

    return-void
.end method

.method private resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 300
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 311
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 313
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 320
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 327
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 329
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 336
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 343
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 345
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;
    :try_end_3
    .catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 352
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 359
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 361
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    if-nez v2, :cond_1

    .line 363
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "attributeType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in schema "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " with OID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 367
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " has a null Syntax"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljavax/naming/NamingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :cond_1
    move v1, v0

    goto :goto_4

    :catch_4
    move-exception p1

    .line 374
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return v1
.end method

.method private resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z
    .locals 8

    .line 223
    const-string v0, " with OID "

    const-string v1, " in schema "

    const-string v2, "matchingRule "

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    .line 232
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getComparator()Ljava/util/Comparator;

    move-result-object v5

    if-nez v5, :cond_1

    .line 234
    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 237
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " has a null comparator"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 243
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move v3, v4

    .line 249
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v5

    if-nez v5, :cond_2

    .line 251
    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 254
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " has a null normalizer"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 260
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v3, v4

    .line 266
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 268
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v5

    if-nez v5, :cond_3

    .line 270
    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 273
    const-string v0, " has a null Syntax"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_2

    :catch_2
    move-exception p1

    .line 279
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return v4
.end method

.method private resolve(Lorg/apache/ldap/common/schema/ObjectClass;Ljava/util/List;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 410
    new-array v2, v1, [Lorg/apache/ldap/common/schema/ObjectClass;

    .line 414
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/ObjectClass;->getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    new-array v2, v1, [Lorg/apache/ldap/common/schema/ObjectClass;

    .line 420
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    move v3, v1

    .line 423
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .line 428
    new-array v2, v1, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 432
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/ObjectClass;->getMayList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v4, v2

    goto :goto_3

    :catch_1
    move-exception v0

    .line 436
    new-array v2, v1, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 438
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    :goto_3
    move v2, v1

    .line 441
    :goto_4
    array-length v3, v4

    if-lt v2, v3, :cond_2

    .line 447
    new-array v2, v1, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 451
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/ObjectClass;->getMustList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p1
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 455
    new-array v0, v1, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 457
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    move v0, v1

    .line 460
    :goto_5
    array-length p1, v3

    if-lt v1, p1, :cond_1

    return v0

    .line 462
    :cond_1
    aget-object p1, v3, v1

    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    move-result p1

    and-int/2addr v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 443
    :cond_2
    aget-object v3, v4, v2

    invoke-direct {p0, v3, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 425
    :cond_3
    aget-object v4, v2, v3

    invoke-direct {p0, v4, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/ObjectClass;Ljava/util/List;)Z

    move-result v4

    and-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 210
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/Syntax;->getSyntaxChecker()Lorg/apache/ldap/common/schema/SyntaxChecker;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 215
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public checkRefInteg()Ljava/util/List;
    .locals 3

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->objectClassRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;->list()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 169
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;->list()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->syntaxRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 184
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 186
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/schema/Syntax;

    .line 187
    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z

    goto :goto_3

    .line 179
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/schema/MatchingRule;

    .line 180
    invoke-direct {p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    goto :goto_2

    .line 172
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/schema/AttributeType;

    .line 173
    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/schema/ObjectClass;

    .line 166
    invoke-direct {p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->resolve(Lorg/apache/ldap/common/schema/ObjectClass;Ljava/util/List;)Z

    goto :goto_0
.end method

.method public getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    return-object v0
.end method

.method public getComparatorRegistry()Lorg/apache/ldap/server/schema/ComparatorRegistry;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->comparatorRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;

    return-object v0
.end method

.method public getDitContentRuleRegistry()Lorg/apache/ldap/server/schema/DITContentRuleRegistry;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->ditContentRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;

    return-object v0
.end method

.method public getDitStructureRuleRegistry()Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->ditStructureRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;

    return-object v0
.end method

.method public getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    return-object v0
.end method

.method public getMatchingRuleUseRegistry()Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->matchingRuleUseRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;

    return-object v0
.end method

.method public getNameFormRegistry()Lorg/apache/ldap/server/schema/NameFormRegistry;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->nameFormRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;

    return-object v0
.end method

.method public getNormalizerRegistry()Lorg/apache/ldap/server/schema/NormalizerRegistry;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->normalizerRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    return-object v0
.end method

.method public getObjectClassRegistry()Lorg/apache/ldap/server/schema/ObjectClassRegistry;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->objectClassRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;

    return-object v0
.end method

.method public getObjectFactoryRegistry()Lorg/apache/ldap/server/schema/ObjectFactoryRegistry;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->objectFactoryRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectFactoryRegistry;

    return-object v0
.end method

.method public getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    return-object v0
.end method

.method public getStateFactoryRegistry()Lorg/apache/ldap/server/schema/StateFactoryRegistry;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->stateFactoryRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapStateFactoryRegistry;

    return-object v0
.end method

.method public getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->syntaxCheckerRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;

    return-object v0
.end method

.method public getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->syntaxRegistry:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;

    return-object v0
.end method
