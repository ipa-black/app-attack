.class public Lorg/apache/ldap/server/schema/bootstrap/ApacheNormalizerProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "ApacheNormalizerProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->NORMALIZER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 54
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 55
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.2.1"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 59
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.2.2"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 63
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.2.3"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
