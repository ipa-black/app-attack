.class public Lorg/apache/ldap/server/schema/bootstrap/CosineAttributeTypeProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "CosineAttributeTypeProducer.java"


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
    .locals 18
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
    const-string v4, "0.9.2342.19200300.100.1.21"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 64
    const-string v6, "RFC1274: DN of secretary"

    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 66
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

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
    const-string v10, "distinguishedNameMatch"

    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 72
    const-string v11, "1.3.6.1.4.1.1466.115.121.1.12"

    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    const-string v12, "secretary"

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
    const-string v4, "0.9.2342.19200300.100.1.43"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 84
    const-string v12, "RFC1274: friendly country name"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 86
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

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
    const-string v12, "caseIgnoreMatch"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 92
    const-string v13, "caseIgnoreSubstringsMatch"

    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    const-string v14, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 94
    const-string v15, "co"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v15, "friendlyCountryName"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 97
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v4, "0.9.2342.19200300.100.1.10"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 105
    const-string v15, "RFC1274: DN of manager"

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 107
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 108
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 109
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 110
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 111
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 112
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    const-string v15, "manager"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 117
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v4, "0.9.2342.19200300.100.1.2"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 125
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 126
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 127
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 128
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v15, 0x100

    .line 129
    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 130
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 131
    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 134
    const-string v15, "textEncodedORAddress"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 136
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v4, "0.9.2342.19200300.100.1.52"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 144
    const-string v15, "RFC1274: Subtree Maximun Quality"

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 146
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 147
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 148
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 149
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 150
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 151
    const-string v15, "1.3.6.1.4.1.1466.115.121.1.13"

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    const-string v8, "subtreeMaximumQuality"

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
    const-string v4, "0.9.2342.19200300.100.1.54"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 163
    const-string v8, "RFC1274: DIT Redirect"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 165
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

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
    const-string v8, "dITRedirect"

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
    const-string v4, "0.9.2342.19200300.100.1.9"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 183
    const-string v5, "RFC1274: host computer"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 185
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 186
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 187
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v5, 0x100

    .line 188
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 189
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 190
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 193
    const-string v5, "host"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 195
    const-string v5, "0.9.2342.19200300.100.1.9"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v4, "0.9.2342.19200300.100.1.50"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 203
    const-string v5, "RFC1274: Single Level Quality"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 205
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 206
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 207
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 208
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 209
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 210
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 212
    const-string v5, "singleLevelQuality"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 214
    const-string v5, "0.9.2342.19200300.100.1.50"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-string v4, "0.9.2342.19200300.100.1.30"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 222
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 223
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 224
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 225
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 226
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 227
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 228
    const-string v5, "caseIgnoreIA5Match"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 229
    const-string v8, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 231
    const-string v7, "sOARecord"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 233
    const-string v7, "0.9.2342.19200300.100.1.30"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const-string v4, "0.9.2342.19200300.100.1.41"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 241
    const-string v7, "RFC1274: mobile telephone number"

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 243
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 244
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 245
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 246
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 247
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 248
    const-string v7, "telephoneNumberMatch"

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 249
    const-string v6, "telephoneNumberSubstringsMatch"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    move-object/from16 v16, v6

    const-string v6, "1.3.6.1.4.1.1466.115.121.1.50"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v17, v6

    .line 251
    const-string v6, "mobile"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v6, "mobileTelephoneNumber"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 254
    const-string v6, "0.9.2342.19200300.100.1.41"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v4, "0.9.2342.19200300.100.1.29"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    const/4 v6, 0x1

    .line 262
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 263
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 264
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 265
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 266
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 267
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 268
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 271
    const-string v6, "nSRecord"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 273
    const-string v6, "0.9.2342.19200300.100.1.29"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string v4, "0.9.2342.19200300.100.1.22"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    const/4 v6, 0x1

    .line 281
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 282
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 283
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 284
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 285
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 286
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 287
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.39"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 289
    const-string v6, "otherMailbox"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 291
    const-string v6, "0.9.2342.19200300.100.1.22"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v4, "0.9.2342.19200300.100.1.44"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 299
    const-string v6, "RFC1274: unique identifer"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 300
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 301
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 302
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 303
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 304
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 305
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 306
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 309
    const-string v6, "uniqueIdentifier"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 311
    const-string v6, "0.9.2342.19200300.100.1.44"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    const-string v4, "0.9.2342.19200300.100.1.15"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 319
    const-string v6, "RFC1274: location of document original"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 320
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 321
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 322
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 323
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 324
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 325
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 326
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 329
    const-string v6, "documentLocation"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 331
    const-string v6, "0.9.2342.19200300.100.1.15"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    const-string v4, "0.9.2342.19200300.100.1.51"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 339
    const-string v6, "RFC1274: Subtree Mininum Quality"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 340
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 341
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v6, 0x0

    .line 342
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 343
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 344
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 345
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 346
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 348
    const-string v6, "subtreeMinimumQuality"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 350
    const-string v6, "0.9.2342.19200300.100.1.51"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const-string v4, "0.9.2342.19200300.100.1.49"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 358
    const-string v6, "RFC1274: DSA Quality"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 359
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 360
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v6, 0x0

    .line 361
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 362
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 363
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 364
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 365
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.19"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 367
    const-string v6, "dSAQuality"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 369
    const-string v6, "0.9.2342.19200300.100.1.49"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const-string v4, "0.9.2342.19200300.100.1.12"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 377
    const-string v6, "RFC1274: title of document"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 378
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 379
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 380
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 381
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 382
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 383
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 384
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 387
    const-string v6, "documentTitle"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 389
    const-string v6, "0.9.2342.19200300.100.1.12"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-string v4, "0.9.2342.19200300.100.1.40"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 397
    const-string v6, "RFC1274: personal title"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 398
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 399
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 400
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 401
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 402
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 403
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 404
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 407
    const-string v6, "personalTitle"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 409
    const-string v6, "0.9.2342.19200300.100.1.40"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    const-string v4, "0.9.2342.19200300.100.1.27"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    const/4 v6, 0x1

    .line 417
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 418
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 419
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 420
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 421
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 422
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 423
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 426
    const-string v6, "mDRecord"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 428
    const-string v6, "0.9.2342.19200300.100.1.27"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    const-string v4, "0.9.2342.19200300.100.1.8"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 436
    const-string v6, "RFC1274: categorory of user"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 437
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 438
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 439
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 440
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 441
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 442
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 443
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 446
    const-string v6, "userClass"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 448
    const-string v6, "0.9.2342.19200300.100.1.8"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    const-string v4, "0.9.2342.19200300.100.1.7"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 456
    const-string v6, "RFC1274: photo (G3 fax)"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 457
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 458
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 459
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 460
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x61a8

    .line 461
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 462
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 463
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.23"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 465
    const-string v6, "photo"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 467
    const-string v6, "0.9.2342.19200300.100.1.7"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    const-string v4, "0.9.2342.19200300.100.1.56"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 475
    const-string v6, "RFC1274: publisher of document"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 476
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 477
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 478
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 479
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 480
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 481
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 482
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 485
    const-string v6, "documentPublisher"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 487
    const-string v6, "0.9.2342.19200300.100.1.56"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    const-string v4, "0.9.2342.19200300.100.1.46"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 495
    const-string v6, "RFC1274: Janet mailbox"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 496
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 497
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 498
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 499
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 500
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 501
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 502
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 503
    const-string v6, "caseIgnoreIA5SubstringsMatch"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 505
    const-string v6, "janetMailbox"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 507
    const-string v6, "0.9.2342.19200300.100.1.46"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    const-string v4, "0.9.2342.19200300.100.1.13"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 515
    const-string v6, "RFC1274: version of document"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 516
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 517
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 518
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 519
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 520
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 521
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 522
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 525
    const-string v6, "documentVersion"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 527
    const-string v6, "0.9.2342.19200300.100.1.13"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    const-string v4, "0.9.2342.19200300.100.1.47"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 535
    const-string v6, "RFC1274: mail preference option"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 536
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 537
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 538
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 539
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 540
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 541
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 542
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 544
    const-string v6, "mailPreferenceOption"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 546
    const-string v6, "0.9.2342.19200300.100.1.47"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    const-string v4, "0.9.2342.19200300.100.1.55"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 554
    const-string v6, "RFC1274: audio (u-law)"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 555
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 556
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 557
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 558
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x61a8

    .line 559
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 560
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 561
    const-string v6, "1.3.6.1.4.1.1466.115.121.1.4"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 563
    const-string v6, "audio"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 565
    const-string v6, "0.9.2342.19200300.100.1.55"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    const-string v4, "0.9.2342.19200300.100.1.5"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 573
    const-string v6, "RFC1274: favorite drink"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 574
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 575
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 576
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 577
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 578
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 579
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 580
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 583
    const-string v6, "drink"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    const-string v6, "favouriteDrink"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 586
    const-string v6, "0.9.2342.19200300.100.1.5"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    const-string v4, "0.9.2342.19200300.100.1.14"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 594
    const-string v6, "RFC1274: DN of author of document"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 595
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 596
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 597
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 598
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 599
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 600
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 601
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 604
    const-string v6, "documentAuthor"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 606
    const-string v6, "0.9.2342.19200300.100.1.14"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    const-string v4, "0.9.2342.19200300.100.1.4"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 614
    const-string v6, "RFC1274: general information"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 615
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 616
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 617
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 618
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x800

    .line 619
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 620
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 621
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 624
    const-string v6, "info"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 626
    const-string v6, "0.9.2342.19200300.100.1.4"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    const-string v4, "0.9.2342.19200300.100.1.48"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 634
    const-string v6, "RFC1274: name of building"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 635
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 636
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 637
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 638
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 639
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 640
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 641
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 644
    const-string v6, "buildingName"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 646
    const-string v6, "0.9.2342.19200300.100.1.48"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    const-string v4, "0.9.2342.19200300.100.1.11"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 654
    const-string v6, "RFC1274: unique identifier of document"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 655
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 656
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 657
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 658
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v6, 0x100

    .line 659
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 660
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 661
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 664
    const-string v6, "documentIdentifier"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 666
    const-string v6, "0.9.2342.19200300.100.1.11"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    const-string v4, "0.9.2342.19200300.100.1.26"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    const/4 v6, 0x1

    .line 674
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 675
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 676
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 677
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 678
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 679
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 680
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 683
    const-string v6, "aRecord"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v6, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 685
    const-string v6, "0.9.2342.19200300.100.1.26"

    invoke-interface {v2, v0, v6, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    const-string v4, "0.9.2342.19200300.100.1.42"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 693
    const-string v6, "RFC1274: pager telephone number"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 694
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v6, 0x0

    .line 695
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 696
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 697
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v6, -0x1

    .line 698
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 699
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 700
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    move-object/from16 v6, v16

    .line 701
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    move-object/from16 v15, v17

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 703
    const-string v15, "pager"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    const-string v15, "pagerTelephoneNumber"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 706
    const-string v15, "0.9.2342.19200300.100.1.42"

    invoke-interface {v2, v0, v15, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    const-string v4, "0.9.2342.19200300.100.1.39"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 714
    const-string v15, "RFC1274: home postal address"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v15, 0x1

    .line 715
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v15, 0x0

    .line 716
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 717
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 718
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v15, -0x1

    .line 719
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 720
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 721
    const-string v15, "caseIgnoreListMatch"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 722
    const-string v15, "caseIgnoreListSubstringsMatch"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    const-string v15, "1.3.6.1.4.1.1466.115.121.1.41"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 724
    const-string v15, "homePostalAddress"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 726
    const-string v15, "0.9.2342.19200300.100.1.39"

    invoke-interface {v2, v0, v15, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    const-string v4, "0.9.2342.19200300.100.1.28"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    const/4 v15, 0x1

    .line 734
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v15, 0x0

    .line 735
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 736
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 737
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v15, -0x1

    .line 738
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 739
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 740
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 743
    const-string v15, "mXRecord"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 745
    const-string v15, "0.9.2342.19200300.100.1.28"

    invoke-interface {v2, v0, v15, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    const-string v4, "0.9.2342.19200300.100.1.45"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 753
    const-string v15, "RFC1274: organizational status"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v15, 0x1

    .line 754
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v15, 0x0

    .line 755
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 756
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 757
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v15, 0x100

    .line 758
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 759
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 760
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 763
    const-string v15, "organizationalStatus"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v15, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 765
    const-string v15, "0.9.2342.19200300.100.1.45"

    invoke-interface {v2, v0, v15, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    const-string v4, "0.9.2342.19200300.100.1.38"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 773
    const-string v15, "RFC1274: DN of entry associated with domain"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v15, 0x1

    .line 774
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v15, 0x0

    .line 775
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 776
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 777
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v15, -0x1

    .line 778
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 779
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 780
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 783
    const-string v10, "associatedName"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 785
    const-string v10, "0.9.2342.19200300.100.1.38"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    const-string v4, "0.9.2342.19200300.100.1.6"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 793
    const-string v10, "RFC1274: room number"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 794
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v10, 0x0

    .line 795
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 796
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 797
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v10, 0x100

    .line 798
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 799
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 800
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 803
    const-string v10, "roomNumber"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 805
    const-string v10, "0.9.2342.19200300.100.1.6"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    const-string v4, "0.9.2342.19200300.100.1.31"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    const/4 v10, 0x1

    .line 813
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v10, 0x0

    .line 814
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 815
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 816
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v10, -0x1

    .line 817
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 818
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 819
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 822
    const-string v5, "cNAMERecord"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 824
    const-string v5, "0.9.2342.19200300.100.1.31"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    const-string v4, "0.9.2342.19200300.100.1.53"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 832
    const-string v5, "RFC1274: Personal Signature (G3 fax)"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 833
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 834
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 835
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 836
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 837
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 838
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 839
    const-string v5, "1.3.6.1.4.1.1466.115.121.1.23"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 841
    const-string v5, "personalSignature"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 843
    const-string v5, "0.9.2342.19200300.100.1.53"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    const-string v4, "0.9.2342.19200300.100.1.20"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v1

    .line 851
    const-string v4, "RFC1274: home telephone number"

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 852
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v4, 0x0

    .line 853
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 854
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 855
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v4, -0x1

    .line 856
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 857
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 858
    invoke-virtual {v1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    move-object/from16 v4, v17

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 861
    const-string v4, "homePhone"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    const-string v4, "homeTelephoneNumber"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 864
    const-string v3, "0.9.2342.19200300.100.1.20"

    invoke-interface {v2, v0, v3, v1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
