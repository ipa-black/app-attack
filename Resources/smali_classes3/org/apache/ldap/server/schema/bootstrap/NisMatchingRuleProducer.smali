.class public Lorg/apache/ldap/server/schema/bootstrap/NisMatchingRuleProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "NisMatchingRuleProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v1, "1.3.6.1.4.1.4203.1.2.1"

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    const/4 p1, 0x1

    .line 60
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "caseExactIA5SubstringsMatch"

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 61
    const-string p1, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
