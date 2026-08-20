.class public Lorg/apache/ldap/server/schema/bootstrap/NisSyntaxCheckerProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "NisSyntaxCheckerProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->SYNTAX_CHECKER_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

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

    .line 66
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.1.1.0.0"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.1.1.0.1"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
