.class public Lorg/apache/ldap/server/schema/bootstrap/NisSyntaxProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "NisSyntaxProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->SYNTAX_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

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

    .line 54
    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    move-result-object p1

    .line 57
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v1, "1.3.6.1.1.1.0.0"

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 58
    const-string v1, "RFC2307 NIS Netgroup Triple"

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 59
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "NIS Netgroup Triple"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 61
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.1.1.0.1"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 65
    new-array p1, v1, [Ljava/lang/String;

    const-string v2, "NIS Boot Parameter"

    aput-object v2, p1, v4

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
