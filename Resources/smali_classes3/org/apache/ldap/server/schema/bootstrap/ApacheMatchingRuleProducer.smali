.class public Lorg/apache/ldap/server/schema/bootstrap/ApacheMatchingRuleProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "ApacheMatchingRuleProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v1, "1.2.6.1.4.1.18060.1.1.1.2.1"

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    const/4 v1, 0x1

    .line 51
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "exactDnAsStringMatch"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 52
    const-string v2, "1.3.6.1.4.1.1466.115.121.1.12"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v2, "1.2.6.1.4.1.18060.1.1.1.2.2"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 56
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "bigIntegerMatch"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 57
    const-string v2, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v2, "1.2.6.1.4.1.18060.1.1.1.2.3"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 61
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "jdbmStringMatch"

    aput-object v1, p1, v4

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 62
    const-string p1, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
