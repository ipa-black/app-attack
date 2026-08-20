.class public Lorg/apache/ldap/server/schema/bootstrap/ApacheComparatorProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "ApacheComparatorProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->COMPARATOR_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

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

    .line 57
    new-instance p1, Lorg/apache/ldap/common/schema/ComparableComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/schema/ComparableComparator;-><init>()V

    .line 58
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.2.1"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    new-instance p1, Lorg/apache/ldap/common/util/BigIntegerComparator;

    invoke-direct {p1}, Lorg/apache/ldap/common/util/BigIntegerComparator;-><init>()V

    .line 62
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.2.2"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance p1, Ljdbm/helper/StringComparator;

    invoke-direct {p1}, Ljdbm/helper/StringComparator;-><init>()V

    .line 66
    const-string v0, "1.2.6.1.4.1.18060.1.1.1.2.3"

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
