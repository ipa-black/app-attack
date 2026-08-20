.class public Lorg/apache/ldap/server/schema/SchemaService;
.super Lorg/apache/ldap/server/interceptor/BaseInterceptor;
.source "SchemaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;
    }
.end annotation


# static fields
.field private static final BINARY_KEY:Ljava/lang/String; = "java.naming.ldap.attributes.binary"


# instance fields
.field private attributeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field private binaryAttributeFilter:Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;

.field private globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

.field private nexus:Lorg/apache/ldap/server/RootNexus;

.field private subentryDn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/schema/SchemaService;Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/schema/SchemaService;->doFilter(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/Attributes;)V

    return-void
.end method

.method private doFilter(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Ljavax/naming/ldap/LdapContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object p1

    const-string v0, "java.naming.ldap.attributes.binary"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 359
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v3, p1

    goto :goto_1

    .line 363
    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 365
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    move v2, v0

    .line 367
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_7

    move-object v3, v1

    .line 379
    :goto_1
    invoke-interface {p2}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v4

    .line 381
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 383
    :cond_2
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lorg/apache/ldap/server/schema/SchemaService;->attributeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->hasAttributeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    iget-object v1, p0, Lorg/apache/ldap/server/schema/SchemaService;->attributeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v1, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_1

    .line 396
    invoke-interface {v1}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/Syntax;->isHumanReadible()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 398
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 403
    :cond_4
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    .line 405
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    invoke-direct {v2, p1}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;)V

    move v5, v0

    .line 407
    :goto_4
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->size()I

    move-result v6

    if-lt v5, v6, :cond_5

    .line 421
    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    .line 423
    invoke-interface {p2, v2}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_2

    .line 409
    :cond_5
    invoke-interface {v1, v5}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 411
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 413
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljavax/naming/directory/Attribute;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 417
    :cond_6
    invoke-interface {v2, v5, v6}, Ljavax/naming/directory/Attribute;->add(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 369
    :cond_7
    iget-object v3, p0, Lorg/apache/ldap/server/schema/SchemaService;->attributeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    aget-object v4, p1, v2

    invoke-interface {v3, v4}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v3

    .line 371
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSubschemaEntry([Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 197
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    return-object p1

    .line 200
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 201
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    const/4 v2, 0x0

    .line 204
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_11

    .line 210
    const-string p1, "objectclasses"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "objectClasses"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getObjectClassRegistry()Lorg/apache/ldap/server/schema/ObjectClassRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/ObjectClassRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 214
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_2

    .line 216
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/ObjectClass;

    .line 217
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    :cond_2
    :goto_2
    const-string p1, "attributetypes"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 224
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "attributeTypes"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 226
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 231
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_4

    .line 228
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/AttributeType;

    .line 229
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    :cond_4
    :goto_4
    const-string p1, "matchingrules"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 236
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "matchingRules"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/MatchingRuleRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 243
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_6

    .line 240
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/MatchingRule;

    .line 241
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/MatchingRule;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 246
    :cond_6
    :goto_6
    const-string p1, "matchingruleuse"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 248
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "matchingRuleUse"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getMatchingRuleUseRegistry()Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 250
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 255
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_8

    .line 252
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/MatchingRuleUse;

    .line 253
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/MatchingRuleUse;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 258
    :cond_8
    :goto_8
    const-string p1, "ldapsyntaxes"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 260
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "ldapSyntaxes"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/SyntaxRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 267
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_a

    .line 264
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/Syntax;

    .line 265
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/Syntax;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 270
    :cond_a
    :goto_a
    const-string p1, "ditcontentrules"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 272
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "dITContentRules"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getDitContentRuleRegistry()Lorg/apache/ldap/server/schema/DITContentRuleRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/DITContentRuleRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 279
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_c

    .line 276
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/DITContentRule;

    .line 277
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/DITContentRule;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 282
    :cond_c
    :goto_c
    const-string p1, "ditstructurerules"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 284
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v2, "dITStructureRules"

    invoke-direct {p1, v1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getDitStructureRuleRegistry()Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;->list()Ljava/util/Iterator;

    move-result-object v2

    .line 286
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    .line 291
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_e

    .line 288
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/common/schema/DITStructureRule;

    .line 289
    invoke-static {v3}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/DITStructureRule;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 294
    :cond_e
    :goto_e
    const-string p1, "nameforms"

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 296
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "nameForms"

    invoke-direct {p1, v1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getNameFormRegistry()Lorg/apache/ldap/server/schema/NameFormRegistry;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/server/schema/NameFormRegistry;->list()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 303
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_10

    .line 300
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/common/schema/NameForm;

    .line 301
    invoke-static {v2}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Lorg/apache/ldap/common/schema/NameForm;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 307
    :cond_10
    :goto_10
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v0, "objectClass"

    invoke-direct {p1, v1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 308
    const-string v0, "top"

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v0, "subschema"

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 313
    const-string p1, "cn"

    const-string v0, "schema"

    invoke-virtual {v1, p1, v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    return-object v1

    .line 206
    :cond_11
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getRootNexus()Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/server/schema/SchemaService;->nexus:Lorg/apache/ldap/server/RootNexus;

    .line 100
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getGlobalRegistries()Lorg/apache/ldap/server/schema/GlobalRegistries;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/SchemaService;->globalRegistries:Lorg/apache/ldap/server/schema/GlobalRegistries;

    .line 101
    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/SchemaService;->attributeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    .line 102
    new-instance p1, Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;

    invoke-direct {p1, p0}, Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;-><init>(Lorg/apache/ldap/server/schema/SchemaService;)V

    iput-object p1, p0, Lorg/apache/ldap/server/schema/SchemaService;->binaryAttributeFilter:Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;

    .line 105
    iget-object p1, p0, Lorg/apache/ldap/server/schema/SchemaService;->nexus:Lorg/apache/ldap/server/RootNexus;

    invoke-virtual {p1}, Lorg/apache/ldap/server/RootNexus;->getRootDSE()Ljavax/naming/directory/Attributes;

    move-result-object p1

    const-string v0, "subschemaSubentry"

    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 106
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/SchemaService;->subentryDn:Ljava/lang/String;

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 117
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 121
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getContextStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    .line 122
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/NamingEnumeration;

    .line 123
    new-instance v1, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;

    new-instance v2, Ljavax/naming/directory/SearchControls;

    invoke-direct {v2}, Ljavax/naming/directory/SearchControls;-><init>()V

    iget-object v3, p0, Lorg/apache/ldap/server/schema/SchemaService;->binaryAttributeFilter:Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;

    invoke-direct {v1, v0, v2, p1, v3}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V

    .line 124
    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/List;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 321
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 323
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getContextStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    .line 324
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attributes;

    .line 325
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attributes;

    .line 326
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/server/schema/SchemaService;->doFilter(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/Attributes;)V

    .line 327
    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/invocation/Lookup;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 333
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 335
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getContextStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    .line 336
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attributes;

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attributes;

    .line 343
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/server/schema/SchemaService;->doFilter(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/Attributes;)V

    .line 344
    invoke-virtual {p2, v0}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/ldap/server/schema/SchemaService;->subentryDn:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getBaseName()Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getControls()Ljavax/naming/directory/SearchControls;

    move-result-object v0

    .line 139
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getFilter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Ljavax/naming/directory/SearchControls;->getSearchScope()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "objectClass"

    if-nez v2, :cond_1

    .line 141
    instance-of v2, v1, Lorg/apache/ldap/common/filter/SimpleNode;

    if-eqz v2, :cond_1

    .line 143
    check-cast v1, Lorg/apache/ldap/common/filter/SimpleNode;

    .line 145
    invoke-virtual {v1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v1}, Lorg/apache/ldap/common/filter/SimpleNode;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "subschema"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v1}, Lorg/apache/ldap/common/filter/SimpleNode;->getAssertionType()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    invoke-virtual {v0}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/schema/SchemaService;->getSubschemaEntry([Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    .line 152
    new-instance v1, Ljavax/naming/directory/SearchResult;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getBaseName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, p1}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    .line 153
    new-instance p1, Lorg/apache/ldap/common/util/SingletonEnumeration;

    invoke-direct {p1, v1}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/Search;->setReturnValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljavax/naming/directory/SearchControls;->getSearchScope()I

    move-result v2

    if-nez v2, :cond_2

    .line 159
    instance-of v2, v1, Lorg/apache/ldap/common/filter/PresenceNode;

    if-eqz v2, :cond_2

    .line 161
    check-cast v1, Lorg/apache/ldap/common/filter/PresenceNode;

    .line 163
    invoke-virtual {v1}, Lorg/apache/ldap/common/filter/PresenceNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/ldap/server/schema/SchemaService;->getSubschemaEntry([Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p1

    .line 167
    new-instance v1, Ljavax/naming/directory/SearchResult;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getBaseName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, p1}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    .line 168
    new-instance p1, Lorg/apache/ldap/common/util/SingletonEnumeration;

    invoke-direct {p1, v1}, Lorg/apache/ldap/common/util/SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/Search;->setReturnValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    .line 179
    :goto_0
    invoke-virtual {v0}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    return-void

    .line 186
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getContextStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    .line 187
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getReturnValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/NamingEnumeration;

    .line 188
    new-instance v2, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;

    iget-object v3, p0, Lorg/apache/ldap/server/schema/SchemaService;->binaryAttributeFilter:Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;

    invoke-direct {v2, v1, v0, p1, v3}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V

    .line 189
    invoke-virtual {p2, v2}, Lorg/apache/ldap/server/invocation/Search;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method
