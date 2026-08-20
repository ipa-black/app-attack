.class public Lorg/apache/ldap/server/schema/bootstrap/SystemSyntaxProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "SystemSyntaxProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
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

    .line 114
    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    move-result-object p1

    .line 134
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v1, "1.3.6.1.4.1.1466.115.121.1.1"

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    const/4 v1, 0x1

    .line 135
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ACI Item"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 137
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.2"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 140
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Access Point"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 142
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.3"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 145
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Attribute Type Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 147
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.4"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 150
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Audio"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 152
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.5"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 155
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Binary"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 157
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.6"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 160
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Bit String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 162
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.7"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 165
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Boolean"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 167
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.8"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 170
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Certificate"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 172
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.9"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 175
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Certificate List"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 177
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.10"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 180
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Certificate Pair"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 182
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.11"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 199
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Country String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 201
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.12"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 204
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DN"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 206
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.13"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 209
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Data Quality Syntax"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 211
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.14"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 214
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Delivery Method"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 216
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 219
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Directory String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 221
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.16"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 224
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DIT Content Rule Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 226
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.17"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 229
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DIT Structure Rule Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 231
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.18"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 234
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DL Submit Permission"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 236
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.19"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 239
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DSA Quality Syntax"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 241
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.20"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 244
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DSE Type"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 246
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.21"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 263
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Enhanced Guide"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 265
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.22"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 268
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Facsimile Telephone Number"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 270
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.23"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 273
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Fax"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 275
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.24"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 278
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Generalized Time"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 280
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.25"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 283
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Guide"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 285
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 288
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "IA5 String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 290
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 293
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "INTEGER"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 295
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.28"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 298
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "JPEG"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 300
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.29"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 303
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Master And Shadow Access Points"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 305
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.30"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 308
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Matching Rule Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 310
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.31"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 327
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Matching Rule Use Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 329
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.32"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 332
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Mail Preference"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 334
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.33"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 337
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "MHS OR Address"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 339
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.34"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 342
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Name And Optional UID"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 344
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.35"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 347
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Name Form Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 349
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.36"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 352
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Numeric String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 354
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.37"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 357
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Object Class Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 359
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.38"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 362
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "OID"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 364
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.39"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 367
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Other Mailbox"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 369
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.40"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 372
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Octet String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 374
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.41"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 391
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Postal Address"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 393
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.42"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 396
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Protocol Information"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 398
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.43"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 401
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Presentation Address"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 403
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.44"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 406
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Printable String"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 408
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.45"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 411
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Subtree Specification"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 413
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.46"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 416
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Supplier Information"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 418
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.47"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 421
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Supplier Or Consumer"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 423
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.48"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 426
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Supplier And Consumer"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 428
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.49"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 431
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Supported Algorithm"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 433
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.50"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 436
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Telephone Number"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 438
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.51"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 453
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Teletex Terminal Identifier"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 455
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.52"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 458
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Telex Number"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 460
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.53"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 463
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "UTC Time"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 465
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.54"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 468
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "LDAP Syntax Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 470
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.55"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 473
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Modify Rights"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 475
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.56"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 478
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "LDAP BootstrapSchema Definition"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 480
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.57"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 483
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "LDAP BootstrapSchema Description"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 485
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    const-string v2, "1.3.6.1.4.1.1466.115.121.1.58"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    .line 488
    new-array p1, v1, [Ljava/lang/String;

    const-string v2, "Substring Assertion"

    aput-object v2, p1, v4

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setNames([Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->setHumanReadible(Z)V

    .line 490
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
