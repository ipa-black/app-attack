.class public Lorg/apache/ldap/server/schema/bootstrap/InetorgpersonComparatorProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "InetorgpersonComparatorProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->COMPARATOR_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 73
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 74
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 75
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 73
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 76
    const-string v0, "2.5.13.5"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 79
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 80
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 78
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 81
    const-string v0, "2.5.13.7"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 84
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 85
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 83
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 86
    const-string v0, "2.5.13.12"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 97
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 98
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 96
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 99
    const-string v0, "1.3.6.1.4.1.1466.109.114.3"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
