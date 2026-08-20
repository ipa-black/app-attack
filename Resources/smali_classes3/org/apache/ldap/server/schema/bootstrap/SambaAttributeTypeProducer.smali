.class public Lorg/apache/ldap/server/schema/bootstrap/SambaAttributeTypeProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "SambaAttributeTypeProducer.java"


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
    const-string v4, "1.3.6.1.4.1.7165.2.1.49"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 64
    const-string v6, "Time of the last bad password attempt"

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
    const-string v12, "sambaBadPasswordTime"

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
    const-string v4, "1.3.6.1.4.1.7165.2.1.27"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 84
    const-string v12, "Timestamp of the last password update"

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
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 94
    const-string v12, "sambaPwdLastSet"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 96
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v4, "1.3.6.1.4.1.7165.2.1.19"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 104
    const-string v12, "NT Group Type"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 106
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 107
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 108
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 109
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 110
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 111
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    const-string v12, "sambaGroupType"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 116
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v4, "1.3.6.1.4.1.7165.2.1.43"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 124
    const-string v12, "A boolean option"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 126
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 127
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 128
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 129
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 130
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 131
    const-string v12, "booleanMatch"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 132
    const-string v12, "1.3.6.1.4.1.1466.115.121.1.7"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 134
    const-string v12, "sambaBoolOption"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 136
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v4, "1.3.6.1.4.1.7165.2.1.21"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 144
    const-string v12, "Next NT rid to give our for users"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

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

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 151
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    const-string v12, "sambaNextUserRid"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 156
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v4, "1.3.6.1.4.1.7165.2.1.50"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 164
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 165
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 166
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 167
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 168
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 169
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 170
    const-string v12, "name"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSuperiorId(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 172
    const-string v12, "sambaPrivName"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 174
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v4, "1.3.6.1.4.1.7165.2.1.40"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 182
    const-string v12, "Base at which the samba RID generation algorithm should operate"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 184
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 185
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 186
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 187
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 188
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 189
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 192
    const-string v12, "sambaAlgorithmicRidBase"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 194
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v4, "1.3.6.1.4.1.7165.2.1.29"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 202
    const-string v12, "Timestamp of when the password will expire"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 204
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 205
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 206
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 207
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 208
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 209
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 212
    const-string v12, "sambaPwdMustChange"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 214
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-string v4, "1.3.6.1.4.1.7165.2.1.39"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 222
    const-string v12, "Next NT rid to give out for anything"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 224
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 225
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 226
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 227
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 228
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 229
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 232
    const-string v12, "sambaNextRid"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 234
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const-string v4, "1.3.6.1.4.1.7165.2.1.28"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 242
    const-string v5, "Timestamp of when the user is allowed to update the password"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 244
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 245
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 246
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 247
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 248
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 249
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 252
    const-string v5, "sambaPwdCanChange"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 254
    const-string v5, "1.3.6.1.4.1.7165.2.1.28"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v4, "1.3.6.1.4.1.7165.2.1.55"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 262
    const-string v5, "Logon Hours"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 264
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 265
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 266
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v5, 0x2a

    .line 267
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 268
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 269
    const-string v5, "caseIgnoreIA5Match"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 270
    const-string v12, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 272
    const-string v13, "sambaLogonHours"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 274
    const-string v13, "1.3.6.1.4.1.7165.2.1.55"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    const-string v4, "1.3.6.1.4.1.7165.2.1.20"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 282
    const-string v13, "Security ID"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 284
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 285
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 286
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v13, 0x40

    .line 287
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 288
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 289
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 292
    const-string v14, "sambaSID"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 294
    const-string v14, "1.3.6.1.4.1.7165.2.1.20"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string v4, "1.3.6.1.4.1.7165.2.1.52"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 302
    const-string v14, "Privileges List"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 304
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 305
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 306
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 307
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 308
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 309
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 312
    const-string v14, "sambaPrivilegeList"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 314
    const-string v14, "1.3.6.1.4.1.7165.2.1.52"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    const-string v4, "1.3.6.1.4.1.7165.2.1.42"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 322
    const-string v14, "Option Name"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 324
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 325
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 326
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v14, 0x100

    .line 327
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 328
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 329
    const-string v14, "caseIgnoreMatch"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 330
    const-string v15, "caseIgnoreSubstringsMatch"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSubstrId(Ljava/lang/String;)V

    const-string v15, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 332
    const-string v13, "sambaOptionName"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 334
    const-string v13, "1.3.6.1.4.1.7165.2.1.42"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    const-string v4, "1.3.6.1.4.1.7165.2.1.48"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 342
    const-string v13, "Bad password attempt count"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 344
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 345
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 346
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 347
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 348
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 349
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 352
    const-string v13, "sambaBadPasswordCount"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 354
    const-string v13, "1.3.6.1.4.1.7165.2.1.48"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string v4, "1.3.6.1.4.1.7165.2.1.30"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 362
    const-string v13, "Timestamp of last logon"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 364
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 365
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 366
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 367
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 368
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 369
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 372
    const-string v13, "sambaLogonTime"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 374
    const-string v13, "1.3.6.1.4.1.7165.2.1.30"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    const-string v4, "1.3.6.1.4.1.7165.2.1.41"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 382
    const-string v13, "Share Name"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 384
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 385
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 386
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 387
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 388
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 389
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 392
    const-string v13, "sambaShareName"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 394
    const-string v13, "1.3.6.1.4.1.7165.2.1.41"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const-string v4, "1.3.6.1.4.1.7165.2.1.26"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 402
    const-string v13, "Account Flags"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 404
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 405
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 406
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v13, 0x10

    .line 407
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 408
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 409
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 412
    const-string v13, "sambaAcctFlags"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 414
    const-string v13, "1.3.6.1.4.1.7165.2.1.26"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string v4, "1.3.6.1.4.1.7165.2.1.38"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 422
    const-string v13, "Windows NT domain to which the user belongs"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 424
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 425
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 426
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v13, 0x80

    .line 427
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 428
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 429
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 432
    const-string v13, "sambaDomainName"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 434
    const-string v13, "1.3.6.1.4.1.7165.2.1.38"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    const-string v4, "1.3.6.1.4.1.7165.2.1.32"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 442
    const-string v13, "Timestamp of when the user will be logged off automatically"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 444
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 445
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 446
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 447
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 448
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 449
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 452
    const-string v13, "sambaKickoffTime"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 454
    const-string v13, "1.3.6.1.4.1.7165.2.1.32"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    const-string v4, "1.3.6.1.4.1.7165.2.1.54"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 462
    const-string v13, "Concatenated MD4 hashes of the unicode passwords used on this account"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 464
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 465
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 466
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v13, 0x20

    .line 467
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 468
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 469
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 472
    const-string v13, "sambaPasswordHistory"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 474
    const-string v13, "1.3.6.1.4.1.7165.2.1.54"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v4, "1.3.6.1.4.1.7165.2.1.44"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 482
    const-string v13, "An integer option"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 484
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 485
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 486
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 487
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 488
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 489
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 492
    const-string v13, "sambaIntegerOption"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 494
    const-string v13, "1.3.6.1.4.1.7165.2.1.44"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string v4, "1.3.6.1.4.1.7165.2.1.35"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 502
    const-string v13, "Roaming profile path"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 504
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 505
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 506
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v13, 0xff

    .line 507
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 508
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 509
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 512
    const-string v13, "sambaProfilePath"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 514
    const-string v13, "1.3.6.1.4.1.7165.2.1.35"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v4, "1.3.6.1.4.1.7165.2.1.53"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 522
    const-string v13, "Trust Password Flags"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 524
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 525
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 526
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 527
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 528
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 529
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 532
    const-string v13, "sambaTrustFlags"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 534
    const-string v13, "1.3.6.1.4.1.7165.2.1.53"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    const-string v4, "1.3.6.1.4.1.7165.2.1.24"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 542
    const-string v13, "LanManager Password"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 544
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 545
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 546
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v13, 0x20

    .line 547
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 548
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 549
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 552
    const-string v13, "sambaLMPassword"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 554
    const-string v13, "1.3.6.1.4.1.7165.2.1.24"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    const-string v4, "1.3.6.1.4.1.7165.2.1.46"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 562
    const-string v13, "A string list option"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 564
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 565
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 566
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 567
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 568
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 569
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 572
    const-string v13, "sambaStringListOption"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 574
    const-string v13, "1.3.6.1.4.1.7165.2.1.46"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    const-string v4, "1.3.6.1.4.1.7165.2.1.22"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 582
    const-string v13, "Next NT rid to give out for groups"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 584
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 585
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 586
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 587
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 588
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 589
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 592
    const-string v13, "sambaNextGroupRid"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 594
    const-string v13, "1.3.6.1.4.1.7165.2.1.22"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    const-string v4, "1.3.6.1.4.1.7165.2.1.33"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 602
    const-string v13, "Driver letter of home directory mapping"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 604
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 605
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 606
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v13, 0x4

    .line 607
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 608
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 609
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 612
    const-string v13, "sambaHomeDrive"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v13, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 614
    const-string v13, "1.3.6.1.4.1.7165.2.1.33"

    invoke-interface {v2, v0, v13, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    const-string v4, "1.3.6.1.4.1.7165.2.1.31"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 622
    const-string v13, "Timestamp of last logoff"

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 624
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 625
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 626
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 627
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 628
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 629
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 632
    const-string v10, "sambaLogoffTime"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 634
    const-string v10, "1.3.6.1.4.1.7165.2.1.31"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    const-string v4, "1.3.6.1.4.1.7165.2.1.25"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 642
    const-string v10, "MD4 hash of the unicode password"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 644
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 645
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 646
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v10, 0x20

    .line 647
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 648
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 649
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 652
    const-string v10, "sambaNTPassword"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 654
    const-string v10, "1.3.6.1.4.1.7165.2.1.25"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    const-string v4, "1.3.6.1.4.1.7165.2.1.45"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 662
    const-string v10, "A string option"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 664
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 665
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 666
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 667
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 668
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 669
    const-string v8, "caseExactIA5Match"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 672
    const-string v8, "sambaStringOption"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 674
    const-string v8, "1.3.6.1.4.1.7165.2.1.45"

    invoke-interface {v2, v0, v8, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    const-string v4, "1.3.6.1.4.1.7165.2.1.34"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 682
    const-string v8, "Logon script path"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 684
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 685
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 686
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v8, 0xff

    .line 687
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 688
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 689
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 692
    const-string v8, "sambaLogonScript"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 694
    const-string v8, "1.3.6.1.4.1.7165.2.1.34"

    invoke-interface {v2, v0, v8, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    const-string v4, "1.3.6.1.4.1.7165.2.1.36"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 702
    const-string v8, "List of user workstations the user is allowed to logon to"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 704
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 705
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 706
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v8, 0xff

    .line 707
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 708
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 709
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 712
    const-string v8, "sambaUserWorkstations"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 714
    const-string v8, "1.3.6.1.4.1.7165.2.1.36"

    invoke-interface {v2, v0, v8, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    const-string v4, "1.3.6.1.4.1.7165.2.1.47"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 722
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 723
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 724
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 725
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v8, 0x41a

    .line 726
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 727
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 728
    const-string v8, "caseExactMatch"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 731
    const-string v8, "sambaMungedDial"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 733
    const-string v8, "1.3.6.1.4.1.7165.2.1.47"

    invoke-interface {v2, v0, v8, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    const-string v4, "1.3.6.1.4.1.7165.2.1.23"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 741
    const-string v8, "Primary Group Security ID"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 743
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 744
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 745
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v8, 0x40

    .line 746
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 747
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 748
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 751
    const-string v8, "sambaPrimaryGroupSID"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 753
    const-string v8, "1.3.6.1.4.1.7165.2.1.23"

    invoke-interface {v2, v0, v8, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    const-string v4, "1.3.6.1.4.1.7165.2.1.37"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 761
    const-string v8, "Home directory UNC path"

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 763
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 764
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 765
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v8, 0x80

    .line 766
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 767
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 768
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 771
    const-string v8, "sambaHomePath"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 773
    const-string v8, "1.3.6.1.4.1.7165.2.1.37"

    invoke-interface {v2, v0, v8, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 780
    const-string v4, "1.3.6.1.4.1.7165.2.1.51"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v1

    .line 781
    const-string v4, "Security ID List"

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v1, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 783
    invoke-virtual {v1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 784
    invoke-virtual {v1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 785
    invoke-virtual {v1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/16 v4, 0x40

    .line 786
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 787
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 788
    invoke-virtual {v1, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v1, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 791
    const-string v4, "sambaSIDList"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 793
    const-string v3, "1.3.6.1.4.1.7165.2.1.51"

    invoke-interface {v2, v0, v3, v1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
