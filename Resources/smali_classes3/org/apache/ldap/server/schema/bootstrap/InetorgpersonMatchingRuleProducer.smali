.class public Lorg/apache/ldap/server/schema/bootstrap/InetorgpersonMatchingRuleProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "InetorgpersonMatchingRuleProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v1, "2.5.13.5"

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    const/4 v1, 0x1

    .line 69
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "caseExactMatch"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 70
    const-string v2, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v2, "2.5.13.7"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 74
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "caseExactSubstringsMatch"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 75
    const-string v2, "1.3.6.1.4.1.1466.115.121.1.58"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.12"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 79
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "caseIgnoreListSubstringsMatch"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "1.3.6.1.4.1.1466.109.114.3"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 92
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "caseIgnoreIA5SubstringsMatch"

    aput-object v1, p1, v4

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
