.class public Lorg/apache/ldap/server/schema/GlobalRegistries;
.super Ljava/lang/Object;
.source "GlobalRegistries.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/Registries;


# instance fields
.field private attributeTypeRegistry:Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;

.field private comparatorRegistry:Lorg/apache/ldap/server/schema/GlobalComparatorRegistry;

.field private ditContentRuleRegistry:Lorg/apache/ldap/server/schema/GlobalDitContentRuleRegistry;

.field private ditStructureRuleRegistry:Lorg/apache/ldap/server/schema/GlobalDitStructureRuleRegistry;

.field private matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

.field private matchingRuleUseRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleUseRegistry;

.field private nameFormRegistry:Lorg/apache/ldap/server/schema/GlobalNameFormRegistry;

.field private normalizerRegistry:Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;

.field private objectClassRegistry:Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;

.field private oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

.field private syntaxCheckerRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxCheckerRegistry;

.field private syntaxRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    .line 59
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/schema/GlobalOidRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapOidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    .line 60
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;

    .line 61
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getNormalizerRegistry()Lorg/apache/ldap/server/schema/NormalizerRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapNormalizerRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->normalizerRegistry:Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;

    .line 62
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalComparatorRegistry;

    .line 63
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getComparatorRegistry()Lorg/apache/ldap/server/schema/ComparatorRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/schema/GlobalComparatorRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapComparatorRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->comparatorRegistry:Lorg/apache/ldap/server/schema/GlobalComparatorRegistry;

    .line 64
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalSyntaxCheckerRegistry;

    .line 65
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;

    invoke-direct {v0, p1, v1}, Lorg/apache/ldap/server/schema/GlobalSyntaxCheckerRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxCheckerRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->syntaxCheckerRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxCheckerRegistry;

    .line 66
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;

    .line 67
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;

    .line 68
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapSyntaxRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->syntaxRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;

    .line 69
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    .line 70
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;

    .line 71
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    .line 72
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;

    .line 73
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;

    .line 74
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapAttributeTypeRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;

    .line 75
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;

    .line 76
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getObjectClassRegistry()Lorg/apache/ldap/server/schema/ObjectClassRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;

    .line 77
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapObjectClassRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->objectClassRegistry:Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;

    .line 78
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalDitContentRuleRegistry;

    .line 79
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getDitContentRuleRegistry()Lorg/apache/ldap/server/schema/DITContentRuleRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;

    .line 80
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalDitContentRuleRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitContentRuleRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->ditContentRuleRegistry:Lorg/apache/ldap/server/schema/GlobalDitContentRuleRegistry;

    .line 81
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalDitStructureRuleRegistry;

    .line 82
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getDitStructureRuleRegistry()Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;

    .line 83
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalDitStructureRuleRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapDitStructureRuleRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->ditStructureRuleRegistry:Lorg/apache/ldap/server/schema/GlobalDitStructureRuleRegistry;

    .line 84
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalMatchingRuleUseRegistry;

    .line 85
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getMatchingRuleUseRegistry()Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;

    .line 86
    iget-object v2, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ldap/server/schema/GlobalMatchingRuleUseRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapMatchingRuleUseRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleUseRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleUseRegistry;

    .line 87
    new-instance v0, Lorg/apache/ldap/server/schema/GlobalNameFormRegistry;

    .line 88
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getNameFormRegistry()Lorg/apache/ldap/server/schema/NameFormRegistry;

    move-result-object p2

    check-cast p2, Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;

    .line 89
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/ldap/server/schema/GlobalNameFormRegistry;-><init>(Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/bootstrap/BootstrapNameFormRegistry;Lorg/apache/ldap/server/schema/OidRegistry;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->nameFormRegistry:Lorg/apache/ldap/server/schema/GlobalNameFormRegistry;

    return-void
.end method

.method private resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 307
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 317
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 319
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 326
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 332
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 334
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 341
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 347
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 349
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;
    :try_end_3
    .catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 356
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 362
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 364
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    if-nez v2, :cond_1

    .line 366
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "attributeType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 368
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

    .line 369
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " has a null Syntax"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 367
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

    .line 375
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return v1
.end method

.method private resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z
    .locals 8

    .line 231
    const-string v0, " with OID "

    const-string v1, " in schema "

    const-string v2, "matchingRule "

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    .line 240
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getComparator()Ljava/util/Comparator;

    move-result-object v5

    if-nez v5, :cond_1

    .line 242
    iget-object v3, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 244
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

    .line 245
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " has a null comparator"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 251
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move v3, v4

    .line 257
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object v5

    if-nez v5, :cond_2

    .line 259
    iget-object v3, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 261
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

    .line 262
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " has a null normalizer"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 268
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v3, v4

    .line 274
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 276
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v5

    if-nez v5, :cond_3

    .line 278
    iget-object v3, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->getSchemaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 280
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

    .line 281
    const-string v0, " has a null Syntax"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 279
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

    .line 287
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

    .line 413
    new-array v2, v1, [Lorg/apache/ldap/common/schema/ObjectClass;

    .line 416
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/ObjectClass;->getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 420
    new-array v2, v1, [Lorg/apache/ldap/common/schema/ObjectClass;

    .line 422
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    move v3, v1

    .line 425
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .line 430
    new-array v2, v1, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 433
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

    .line 437
    new-array v2, v1, [Lorg/apache/ldap/common/schema/AttributeType;

    .line 439
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    :goto_3
    move v2, v1

    .line 442
    :goto_4
    array-length v3, v4

    if-lt v2, v3, :cond_2

    .line 448
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

    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    move-result p1

    and-int/2addr v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 444
    :cond_2
    aget-object v3, v4, v2

    invoke-direct {p0, v3, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 427
    :cond_3
    aget-object v4, v2, v3

    invoke-direct {p0, v4, p2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/ObjectClass;Ljava/util/List;)Z

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

    .line 218
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/Syntax;->getSyntaxChecker()Lorg/apache/ldap/common/schema/SyntaxChecker;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 223
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public checkRefInteg()Ljava/util/List;
    .locals 3

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->objectClassRegistry:Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;->list()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;->list()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    iget-object v1, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->syntaxRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;

    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 194
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/schema/Syntax;

    .line 195
    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/Syntax;Ljava/util/List;)Z

    goto :goto_3

    .line 187
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/schema/MatchingRule;

    .line 188
    invoke-direct {p0, v2, v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/MatchingRule;Ljava/util/List;)Z

    goto :goto_2

    .line 180
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/schema/AttributeType;

    .line 181
    invoke-direct {p0, v1, v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/AttributeType;Ljava/util/List;)Z

    goto :goto_1

    .line 173
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/schema/ObjectClass;

    .line 174
    invoke-direct {p0, v2, v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->resolve(Lorg/apache/ldap/common/schema/ObjectClass;Ljava/util/List;)Z

    goto :goto_0
.end method

.method public getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/GlobalAttributeTypeRegistry;

    return-object v0
.end method

.method public getComparatorRegistry()Lorg/apache/ldap/server/schema/ComparatorRegistry;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->comparatorRegistry:Lorg/apache/ldap/server/schema/GlobalComparatorRegistry;

    return-object v0
.end method

.method public getDitContentRuleRegistry()Lorg/apache/ldap/server/schema/DITContentRuleRegistry;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->ditContentRuleRegistry:Lorg/apache/ldap/server/schema/GlobalDitContentRuleRegistry;

    return-object v0
.end method

.method public getDitStructureRuleRegistry()Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->ditStructureRuleRegistry:Lorg/apache/ldap/server/schema/GlobalDitStructureRuleRegistry;

    return-object v0
.end method

.method public getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleRegistry;

    return-object v0
.end method

.method public getMatchingRuleUseRegistry()Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->matchingRuleUseRegistry:Lorg/apache/ldap/server/schema/GlobalMatchingRuleUseRegistry;

    return-object v0
.end method

.method public getNameFormRegistry()Lorg/apache/ldap/server/schema/NameFormRegistry;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->nameFormRegistry:Lorg/apache/ldap/server/schema/GlobalNameFormRegistry;

    return-object v0
.end method

.method public getNormalizerRegistry()Lorg/apache/ldap/server/schema/NormalizerRegistry;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->normalizerRegistry:Lorg/apache/ldap/server/schema/GlobalNormalizerRegistry;

    return-object v0
.end method

.method public getObjectClassRegistry()Lorg/apache/ldap/server/schema/ObjectClassRegistry;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->objectClassRegistry:Lorg/apache/ldap/server/schema/GlobalObjectClassRegistry;

    return-object v0
.end method

.method public getOidRegistry()Lorg/apache/ldap/server/schema/OidRegistry;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->oidRegistry:Lorg/apache/ldap/server/schema/GlobalOidRegistry;

    return-object v0
.end method

.method public getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->syntaxCheckerRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxCheckerRegistry;

    return-object v0
.end method

.method public getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/ldap/server/schema/GlobalRegistries;->syntaxRegistry:Lorg/apache/ldap/server/schema/GlobalSyntaxRegistry;

    return-object v0
.end method
