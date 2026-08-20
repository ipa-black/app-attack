.class public Lorg/apache/ldap/server/schema/bootstrap/SystemMatchingRuleProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "SystemMatchingRuleProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->MATCHING_RULE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v1, "2.5.13.0"

    invoke-direct {v0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    const/4 v1, 0x1

    .line 63
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "objectIdentifierMatch"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 64
    const-string v2, "1.3.6.1.4.1.1466.115.121.1.38"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.1"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 68
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "distinguishedNameMatch"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 69
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.12"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.2"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 73
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "caseIgnoreMatch"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 74
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p0, v5, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v5, "2.5.13.3"

    invoke-direct {v0, v5, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 78
    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "caseIgnoreOrderingMatch"

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.4"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 83
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "caseIgnoreSubstringsMatch"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 84
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.58"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p0, v5, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v5, "2.5.13.8"

    invoke-direct {v0, v5, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 110
    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "numericStringMatch"

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 111
    const-string v5, "1.3.6.1.4.1.1466.115.121.1.36"

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p0, v5, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v5, "2.5.13.10"

    invoke-direct {v0, v5, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 115
    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "numericStringSubstringsMatch"

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p0, v5, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v5, "2.5.13.11"

    invoke-direct {v0, v5, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 120
    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "caseIgnoreListMatch"

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 121
    const-string v5, "1.3.6.1.4.1.1466.115.121.1.41"

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p0, v5, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v5, "2.5.13.14"

    invoke-direct {v0, v5, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 125
    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "integerMatch"

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 126
    const-string v5, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p0, v6, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v6, "2.5.13.16"

    invoke-direct {v0, v6, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 130
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "bitStringMatch"

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 131
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.6"

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p0, v6, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v6, "2.5.13.17"

    invoke-direct {v0, v6, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 135
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "octetStringMatch"

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 136
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.40"

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p0, v6, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v6, "2.5.13.20"

    invoke-direct {v0, v6, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 159
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "telephoneNumberMatch"

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 160
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.50"

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p0, v6, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v6, "2.5.13.21"

    invoke-direct {v0, v6, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 164
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "telephoneNumberSubstringsMatch"

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.22"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 169
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "presentationAddressMatch"

    aput-object v6, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 170
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.43"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.23"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 174
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "uniqueMemberMatch"

    aput-object v6, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 175
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.34"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.24"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 179
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "protocolInformationMatch"

    aput-object v6, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 180
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.42"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.27"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 207
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "generalizedTimeMatch"

    aput-object v6, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 208
    const-string v3, "1.3.6.1.4.1.1466.115.121.1.24"

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p0, v6, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v6, "2.5.13.28"

    invoke-direct {v0, v6, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 212
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "generalizedTimeOrderingMatch"

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.29"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 217
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "integerFirstComponentMatch"

    aput-object v6, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "2.5.13.30"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 222
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "objectIdentifierFirstComponentMatch"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v2, "1.3.6.1.4.1.1466.109.114.1"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 227
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "caseExactIA5Match"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 228
    const-string v2, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v3, "1.3.6.1.4.1.1466.109.114.2"

    invoke-direct {v0, v3, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 232
    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "caseIgnoreIA5Match"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;

    const-string v2, "2.5.13.13"

    invoke-direct {v0, v2, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 246
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "booleanMatch"

    aput-object v1, p1, v4

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setNames([Ljava/lang/String;)V

    .line 247
    const-string p1, "1.3.6.1.4.1.1466.115.121.1.7"

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->setSyntaxOid(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
