.class public Lorg/apache/ldap/server/schema/bootstrap/InetorgpersonNormalizerProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "InetorgpersonNormalizerProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
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

    .line 73
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 74
    const-string v0, "2.5.13.5"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 77
    const-string v0, "2.5.13.7"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 80
    const-string v0, "2.5.13.12"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 91
    const-string v0, "1.3.6.1.4.1.1466.109.114.3"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
