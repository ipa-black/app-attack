.class public Lorg/apache/ldap/server/schema/bootstrap/ApachednsAttributeTypeProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "ApachednsAttributeTypeProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->ATTRIBUTE_TYPE_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.18"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 64
    const-string v6, "A 32 bit time interval before the zone should be refreshed"

    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 66
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 68
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 69
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 70
    const-string v9, "userApplications"

    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 71
    const-string v10, "integerMatch"

    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 72
    const-string v11, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    const-string v12, "apacheSOARefresh"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 76
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.15"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 84
    const-string v12, "A domain name of the name server that was the primary source of data for this zone"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 86
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 87
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 88
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 89
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 90
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 91
    const-string v12, "apacheDomainName"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSuperiorId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 93
    const-string v13, "apacheSOAMName"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 95
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.13"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 103
    const-string v13, "Sequence of labels usually comprising a domain name or host name"

    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 105
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 106
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 107
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 108
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 109
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 110
    const-string v13, "caseIgnoreIA5Match"

    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 111
    const-string v14, "caseIgnoreIA5SubstringsMatch"

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    const-string v15, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 113
    const-string v8, "apacheName"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 115
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.11"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 123
    const-string v8, "The class of a resource record"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 125
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 126
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 127
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 128
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 129
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 130
    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 133
    const-string v8, "apacheDNSClass"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 135
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.17"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 143
    const-string v8, "The unsigned 32 bit ver num of the original copy of the zone"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 145
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 146
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 147
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 148
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 149
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 150
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    const-string v8, "apacheSOASerial"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 155
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.21"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 163
    const-string v8, "The unsigned 32 bit minimum TTL field that should be exported with any RR from this zone."

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 165
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 166
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 167
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 168
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 169
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 170
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 173
    const-string v8, "apacheSOAMinimum"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 175
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.19"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 183
    const-string v8, "A 32 bit time interval that should elapse before a failed refresh should be retired"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 185
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 186
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 187
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 188
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 189
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 190
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 193
    const-string v8, "apacheSOARetry"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 195
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.12"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 203
    const-string v8, "The name of a zone, i.e. the name of the highest node in the zone"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 205
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 206
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 207
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 208
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 209
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 210
    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 213
    const-string v8, "apacheZoneName"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 215
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.14"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 223
    const-string v8, "A domain name or sequence dotted labels"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 225
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 226
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 227
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v8, 0x100

    .line 228
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 229
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 230
    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 233
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 235
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.20"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 243
    const-string v8, "A 32 bit time value that specifies the upper limit on the time interval that can elapse before the zone is no longer authoritative"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 245
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 246
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 247
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 248
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 249
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 250
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 253
    const-string v8, "apacheSOAExpire"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 255
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.16"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 263
    const-string v8, "The domain name which specifies the mailbox of the person responsible for this zone"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 265
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 266
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 267
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 268
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 269
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 270
    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSuperiorId(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 272
    const-string v8, "apacheSOARName"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 274
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    const-string v4, "1.2.6.1.4.1.18060.1.1.1.3.10"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v1

    .line 282
    const-string v5, "An integer denoting time to live"

    invoke-virtual {v1, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 284
    invoke-virtual {v1, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 285
    invoke-virtual {v1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 286
    invoke-virtual {v1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 287
    invoke-virtual {v1, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 288
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 289
    invoke-virtual {v1, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 292
    const-string v5, "apacheDNSTTL"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 294
    invoke-interface {v2, v0, v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
