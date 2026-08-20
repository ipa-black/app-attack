.class public Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;
.super Lorg/apache/ldap/common/schema/AbstractAttributeType;
.source "AbstractBootstrapProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapAttributeType"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3835383433393830L


# instance fields
.field private final attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field private equalityId:Ljava/lang/String;

.field private final matchingRuleRegistry:Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

.field private orderingId:Ljava/lang/String;

.field private substrId:Ljava/lang/String;

.field private superiorId:Ljava/lang/String;

.field private syntaxId:Ljava/lang/String;

.field private final syntaxRegistry:Lorg/apache/ldap/server/schema/SyntaxRegistry;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->syntaxRegistry:Lorg/apache/ldap/server/schema/SyntaxRegistry;

    .line 213
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    .line 214
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method


# virtual methods
.method public getEquality()Lorg/apache/ldap/common/schema/MatchingRule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->equalityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/schema/MatchingRuleRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->superiorId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->orderingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/schema/MatchingRuleRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->superiorId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->substrId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->matchingRuleRegistry:Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/schema/MatchingRuleRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->superiorId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuperior()Lorg/apache/ldap/common/schema/AttributeType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->superiorId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lorg/apache/ldap/common/schema/Syntax;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->syntaxId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->syntaxRegistry:Lorg/apache/ldap/server/schema/SyntaxRegistry;

    invoke-interface {v1, v0}, Lorg/apache/ldap/server/schema/SyntaxRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->superiorId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCanUserModify(Z)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setCanUserModify(Z)V

    return-void
.end method

.method public setCollective(Z)V
    .locals 0

    .line 324
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setCollective(Z)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 339
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setEqualityId(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->equalityId:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 349
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setLength(I)V

    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setNames([Ljava/lang/String;)V

    return-void
.end method

.method public setObsolete(Z)V
    .locals 0

    .line 334
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setObsolete(Z)V

    return-void
.end method

.method public setOrderingId(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->orderingId:Ljava/lang/String;

    return-void
.end method

.method public setSingleValue(Z)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setSingleValue(Z)V

    return-void
.end method

.method public setSubstrId(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->substrId:Ljava/lang/String;

    return-void
.end method

.method public setSuperiorId(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->superiorId:Ljava/lang/String;

    return-void
.end method

.method public setSyntaxId(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->syntaxId:Ljava/lang/String;

    return-void
.end method

.method public setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V
    .locals 0

    .line 344
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    return-void
.end method
