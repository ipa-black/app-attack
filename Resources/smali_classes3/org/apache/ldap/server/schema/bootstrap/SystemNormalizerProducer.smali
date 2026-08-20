.class public Lorg/apache/ldap/server/schema/bootstrap/SystemNormalizerProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "SystemNormalizerProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->NORMALIZER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

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

    .line 53
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DnNormalizer;

    .line 54
    new-instance v2, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;

    .line 55
    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    .line 54
    invoke-direct {v2, p1}, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;-><init>(Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    .line 53
    invoke-direct {v1, v2}, Lorg/apache/ldap/common/schema/DnNormalizer;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 56
    const-string p1, "2.5.13.1"

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 63
    const-string v0, "1.3.6.1.4.1.1466.109.114.2"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 70
    const-string v0, "2.5.13.11"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 77
    const-string v0, "2.5.13.2"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 84
    const-string v0, "2.5.13.3"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 91
    const-string v0, "2.5.13.4"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 98
    const-string v0, "2.5.13.0"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 105
    const-string v0, "2.5.13.8"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 112
    const-string v0, "2.5.13.10"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 119
    const-string v0, "2.5.13.14"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 126
    const-string v0, "2.5.13.16"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 133
    const-string v0, "2.5.13.17"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 140
    const-string v0, "2.5.13.20"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 147
    const-string v0, "2.5.13.21"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 154
    const-string v0, "2.5.13.22"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 161
    const-string v0, "2.5.13.23"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 168
    const-string v0, "2.5.13.24"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 175
    const-string v0, "2.5.13.27"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 182
    const-string v0, "2.5.13.28"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 189
    const-string v0, "2.5.13.29"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 196
    const-string v0, "2.5.13.30"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    new-instance p1, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v0, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 203
    const-string v0, "1.3.6.1.4.1.1466.109.114.1"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    new-instance p1, Lorg/apache/ldap/common/schema/NoOpNormalizer;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/NoOpNormalizer;-><init>()V

    .line 215
    const-string v0, "2.5.13.13"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
