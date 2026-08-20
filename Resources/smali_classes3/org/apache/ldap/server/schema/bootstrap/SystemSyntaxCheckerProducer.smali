.class public Lorg/apache/ldap/server/schema/bootstrap/SystemSyntaxCheckerProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "SystemSyntaxCheckerProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
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

    .line 77
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.1"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.2"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.3"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.4"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lorg/apache/ldap/common/schema/BinarySyntaxChecker;->INSTANCE:Lorg/apache/ldap/common/schema/SyntaxChecker;

    .line 90
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.6"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.7"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.8"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.9"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.10"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.11"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.12"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.13"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.14"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.16"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.17"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.18"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.19"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.20"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.21"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.22"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.23"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.24"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.25"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.28"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.29"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.30"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.31"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.32"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.33"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.34"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.35"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.36"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.37"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.38"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.39"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.40"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.41"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.42"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.43"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.44"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.45"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.46"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.47"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.48"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.49"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.50"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.51"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.52"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.53"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.54"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.55"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.56"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.57"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    new-instance p1, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;

    const-string v0, "1.3.6.1.4.1.1466.115.121.1.58"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/schema/AcceptAllSyntaxChecker;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SyntaxChecker;->getSyntaxOid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
