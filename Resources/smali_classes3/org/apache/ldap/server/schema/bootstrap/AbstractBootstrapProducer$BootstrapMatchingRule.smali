.class public Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;
.super Lorg/apache/ldap/common/schema/AbstractMatchingRule;
.source "AbstractBootstrapProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapMatchingRule"
.end annotation


# instance fields
.field final comparatorRegistry:Lorg/apache/ldap/server/schema/ComparatorRegistry;

.field final normalizerRegistry:Lorg/apache/ldap/server/schema/NormalizerRegistry;

.field syntaxOid:Ljava/lang/String;

.field final syntaxRegistry:Lorg/apache/ldap/server/schema/SyntaxRegistry;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractMatchingRule;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->syntaxRegistry:Lorg/apache/ldap/server/schema/SyntaxRegistry;

    .line 144
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getNormalizerRegistry()Lorg/apache/ldap/server/schema/NormalizerRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->normalizerRegistry:Lorg/apache/ldap/server/schema/NormalizerRegistry;

    .line 145
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getComparatorRegistry()Lorg/apache/ldap/server/schema/ComparatorRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->comparatorRegistry:Lorg/apache/ldap/server/schema/ComparatorRegistry;

    return-void
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->comparatorRegistry:Lorg/apache/ldap/server/schema/ComparatorRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/schema/ComparatorRegistry;->lookup(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->normalizerRegistry:Lorg/apache/ldap/server/schema/NormalizerRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/schema/NormalizerRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;

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

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->syntaxRegistry:Lorg/apache/ldap/server/schema/SyntaxRegistry;

    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->syntaxOid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/schema/SyntaxRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractMatchingRule;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractMatchingRule;->setNames([Ljava/lang/String;)V

    return-void
.end method

.method public setObsolete(Z)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractMatchingRule;->setObsolete(Z)V

    return-void
.end method

.method public setSyntaxOid(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->syntaxOid:Ljava/lang/String;

    return-void
.end method
