.class public Lorg/apache/ldap/server/schema/bootstrap/SystemComparatorProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "SystemComparatorProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
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

    .line 52
    new-instance v0, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 53
    const-string v1, "2.5.13.0"

    invoke-interface {p2, p0, v1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lorg/apache/ldap/common/schema/DnComparator;

    new-instance v1, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;

    .line 60
    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    .line 59
    invoke-direct {v1, p1}, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;-><init>(Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/DnComparator;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    .line 61
    const-string p1, "2.5.13.1"

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 68
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 69
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 67
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 70
    const-string v0, "2.5.13.2"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 77
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 78
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 76
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 79
    const-string v0, "2.5.13.3"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 86
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 87
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 85
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 88
    const-string v0, "2.5.13.4"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 95
    const-string v0, "2.5.13.8"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 102
    const-string v0, "2.5.13.10"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 109
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 110
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 108
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 111
    const-string v0, "2.5.13.11"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 118
    const-string v0, "2.5.13.14"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 125
    const-string v0, "2.5.13.16"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 132
    const-string v0, "2.5.13.17"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 139
    const-string v0, "2.5.13.20"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 146
    const-string v0, "2.5.13.21"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 153
    const-string v0, "2.5.13.22"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 160
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 161
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 159
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 162
    const-string v0, "2.5.13.23"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 169
    const-string v0, "2.5.13.24"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 176
    const-string v0, "2.5.13.27"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 183
    const-string v0, "2.5.13.28"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 190
    const-string v0, "2.5.13.29"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 197
    const-string v0, "2.5.13.30"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 204
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 205
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 203
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 206
    const-string v0, "1.3.6.1.4.1.1466.109.114.1"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    new-instance p1, Lorg/apache/ldap/common/schema/NormalizingComparator;

    .line 213
    new-instance v0, Lorg/apache/ldap/common/schema/CachingNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    .line 214
    new-instance v1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 212
    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/schema/NormalizingComparator;-><init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V

    .line 215
    const-string v0, "1.3.6.1.4.1.1466.109.114.2"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 227
    const-string v0, "2.5.13.13"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
