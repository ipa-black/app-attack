.class public Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;
.super Lorg/apache/ldap/common/util/ValuedEnum;
.source "ProducerTypeEnum.java"


# static fields
.field public static final ATTRIBUTE_TYPE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final ATTRIBUTE_TYPE_PRODUCER_VAL:I = 0x5

.field public static final COMPARATOR_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final COMPARATOR_PRODUCER_VAL:I = 0x1

.field public static final DIT_CONTENT_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final DIT_CONTENT_RULE_PRODUCER_VAL:I = 0x8

.field public static final DIT_STRUCTURE_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final DIT_STRUCTURE_RULE_PRODUCER_VAL:I = 0xa

.field public static final MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final MATCHING_RULE_PRODUCER_VAL:I = 0x4

.field public static final MATCHING_RULE_USE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final MATCHING_RULE_USE_PRODUCER_VAL:I = 0x7

.field public static final NAME_FORM_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final NAME_FORM_PRODUCER_VAL:I = 0x9

.field public static final NORMALIZER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final NORMALIZER_PRODUCER_VAL:I = 0x0

.field public static final OBJECT_CLASS_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final OBJECT_CLASS_PRODUCER_VAL:I = 0x6

.field public static final OBJECT_FACTORY_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final OBJECT_FACTORY_PRODUCER_VAL:I = 0xc

.field public static final STATE_FACTORY_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final STATE_FACTORY_PRODUCER_VAL:I = 0xb

.field public static final SYNTAX_CHECKER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final SYNTAX_CHECKER_PRODUCER_VAL:I = 0x2

.field public static final SYNTAX_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

.field public static final SYNTAX_PRODUCER_VAL:I = 0x3

.field static synthetic class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum:Ljava/lang/Class; = null

.field private static final producers:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x2d34333335313032L


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xd

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NormalizerProducer"

    aput-object v2, v0, v1

    const-string v3, "ComparatorProducer"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "SyntaxCheckerProducer"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const-string v3, "SyntaxProducer"

    const/4 v6, 0x3

    aput-object v3, v0, v6

    const-string v3, "MatchingRuleProducer"

    const/4 v7, 0x4

    aput-object v3, v0, v7

    const-string v3, "AttributeTypeProducer"

    const/4 v8, 0x5

    aput-object v3, v0, v8

    const-string v3, "ObjectClassProducer"

    const/4 v9, 0x6

    aput-object v3, v0, v9

    const-string v3, "MatchingRuleUseProducer"

    const/4 v10, 0x7

    aput-object v3, v0, v10

    const-string v3, "DitContentRuleProducer"

    const/16 v11, 0x8

    aput-object v3, v0, v11

    const-string v3, "NameFormProducer"

    const/16 v12, 0x9

    aput-object v3, v0, v12

    const-string v3, "DitStructureRuleProducer"

    const/16 v13, 0xa

    aput-object v3, v0, v13

    const-string v3, "StateFactoryProducer"

    const/16 v14, 0xb

    aput-object v3, v0, v14

    const-string v3, "ObjectFactoryProducer"

    const/16 v15, 0xc

    aput-object v3, v0, v15

    sput-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->producers:[Ljava/lang/String;

    .line 88
    new-instance v3, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {v3, v2, v1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->NORMALIZER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 91
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v4

    invoke-direct {v1, v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->COMPARATOR_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 94
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v5

    invoke-direct {v1, v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->SYNTAX_CHECKER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 97
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v6

    invoke-direct {v1, v2, v6}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->SYNTAX_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 100
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v7

    invoke-direct {v1, v2, v7}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 103
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v8

    invoke-direct {v1, v2, v8}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->ATTRIBUTE_TYPE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 106
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v9

    invoke-direct {v1, v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->OBJECT_CLASS_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 109
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v10

    invoke-direct {v1, v2, v10}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_USE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 112
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v11

    invoke-direct {v1, v2, v11}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->DIT_CONTENT_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 115
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v12

    invoke-direct {v1, v2, v12}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->NAME_FORM_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 118
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v13

    invoke-direct {v1, v2, v13}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->DIT_STRUCTURE_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 121
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v2, v0, v14

    invoke-direct {v1, v2, v14}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->STATE_FACTORY_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 124
    new-instance v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    aget-object v0, v0, v15

    invoke-direct {v1, v0, v15}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->OBJECT_FACTORY_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 215
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getProducerType(Ljava/lang/String;)Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;
    .locals 3

    .line 150
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->NORMALIZER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->COMPARATOR_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 158
    :cond_1
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->SYNTAX_CHECKER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 162
    :cond_2
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->SYNTAX_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 166
    :cond_3
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 170
    :cond_4
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->ATTRIBUTE_TYPE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    .line 174
    :cond_5
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->OBJECT_CLASS_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    .line 178
    :cond_6
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_USE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    .line 182
    :cond_7
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->DIT_CONTENT_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 186
    :cond_8
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->NAME_FORM_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    .line 190
    :cond_9
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->DIT_STRUCTURE_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    .line 194
    :cond_a
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->STATE_FACTORY_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 198
    :cond_b
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->OBJECT_FACTORY_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 203
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown ProducerTypeEnum string"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static list()Ljava/util/List;
    .locals 1

    .line 215
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.server.schema.bootstrap.ProducerTypeEnum"

    invoke-static {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/EnumUtils;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map()Ljava/util/Map;
    .locals 1

    .line 226
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.server.schema.bootstrap.ProducerTypeEnum"

    invoke-static {v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->class$org$apache$ldap$server$schema$bootstrap$ProducerTypeEnum:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/EnumUtils;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
