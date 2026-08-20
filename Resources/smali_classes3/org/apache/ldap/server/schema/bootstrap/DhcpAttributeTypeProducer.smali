.class public Lorg/apache/ldap/server/schema/bootstrap/DhcpAttributeTypeProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "DhcpAttributeTypeProducer.java"


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
    const-string v4, "2.16.840.1.113719.1.203.4.1"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 64
    const-string v6, "The DN of the dhcpServer which is the primary server for the configuration."

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
    const-string v10, "distinguishedNameMatch"

    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 72
    const-string v11, "1.3.6.1.4.1.1466.115.121.1.12"

    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    const-string v12, "dhcpPrimaryDN"

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
    const-string v4, "2.16.840.1.113719.1.203.4.31"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 84
    const-string v12, "The distinguished name of a \"dhcpClient\" that an address is reserved for.  This may not be the same as the \"dhcpAssignedToClient\" attribute if the address is being reassigned but the current lease has not yet expired."

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
    const-string v12, "dhcpReservedForClient"

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
    const-string v4, "2.16.840.1.113719.1.203.4.14"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 104
    const-string v12, "The distinguished name of a client address."

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
    const-string v12, "dhcpLeaseDN"

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
    const-string v4, "2.16.840.1.113719.1.203.4.8"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 124
    const-string v12, "Encoded text string or list of bytes expressed in hexadecimal, separated by colons.  Clients match subclasses based on matching the class data with the results of match or spawn with statements in the class name declarations."

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
    const-string v12, "caseIgnoreIA5Match"

    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 132
    const-string v13, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 134
    const-string v14, "dhcpClassData"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 136
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v4, "2.16.840.1.113719.1.203.4.29"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 144
    const-string v14, "This is the hostname that was requested by the client."

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

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

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 151
    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    const-string v14, "dhcpRequestedHostName"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 156
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v4, "2.16.840.1.113719.1.203.4.30"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 164
    const-string v14, "This is the actual hostname that was assigned to a client. It may not be the name that was requested by the client.  The fully qualified domain name can be determined by appending the value of \"dhcpDomainName\" (with a dot separator) to this name."

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 166
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 167
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 168
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 169
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 170
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 171
    invoke-virtual {v5, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 174
    const-string v14, "dhcpAssignedHostName"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 176
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v4, "2.16.840.1.113719.1.203.4.23"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 184
    const-string v14, "This is the time the current lease for an address expires."

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 186
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 187
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 188
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 189
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 190
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 191
    const-string v14, "integerMatch"

    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 192
    const-string v15, "1.3.6.1.4.1.1466.115.121.1.24"

    invoke-virtual {v5, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 194
    const-string v8, "dhcpExpirationTime"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 196
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v4, "2.16.840.1.113719.1.203.4.36"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 204
    const-string v8, "Delay in seconds corresponding to Delayed Service Parameter configuration, as defined in  DHC Load Balancing Algorithm [RFC 3074]. "

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 206
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 207
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 208
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v8, -0x1

    .line 209
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 210
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 211
    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 212
    const-string v8, "1.3.6.1.4.1.1466.115.121.1.27"

    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 214
    const-string v7, "dhcpDelayedServiceParameter"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 216
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string v4, "2.16.840.1.113719.1.203.4.9"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 224
    const-string v7, "The distinguished name(s) of the dhcpOption objects containing the configuration options provided by the server."

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 226
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 227
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 228
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 229
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 230
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 231
    invoke-virtual {v5, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v5, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 234
    const-string v7, "dhcpOptionsDN"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 236
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v4, "2.16.840.1.113719.1.203.4.37"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v5

    .line 244
    const-string v7, "Maximum Client Lead Time configuration in seconds, as defined in DHCP Failover Protocol [FAILOVR]"

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 246
    invoke-virtual {v5, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 247
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 248
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 249
    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 250
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 251
    invoke-virtual {v5, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 254
    const-string v7, "dhcpMaxClientLeadTime"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 256
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    const-string v4, "2.16.840.1.113719.1.203.4.20"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 264
    const-string v5, "The version attribute of this object."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 266
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 267
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 268
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 269
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 270
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 271
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 274
    const-string v5, "dhcpVersion"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 276
    const-string v5, "2.16.840.1.113719.1.203.4.20"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v4, "2.16.840.1.113719.1.203.4.21"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 284
    const-string v5, "Description of the DHCP Server implementation e.g. DHCP Servers vendor."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 286
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 287
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 288
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 289
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 290
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 291
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 294
    const-string v5, "dhcpImplementation"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 296
    const-string v5, "2.16.840.1.113719.1.203.4.21"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string v4, "2.16.840.1.113719.1.203.4.13"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 304
    const-string v5, "The distinguished name(s) of the subnets."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 306
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 307
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 308
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 309
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 310
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 311
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 314
    const-string v5, "dhcpSubnetDN"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 316
    const-string v5, "2.16.840.1.113719.1.203.4.13"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v4, "2.16.840.1.113719.1.203.4.35"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 324
    const-string v5, "HashBucketAssignment bit map for the DHCP Server, as defined in DHC Load Balancing Algorithm [RFC 3074]."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 326
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 327
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 328
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 329
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 330
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 331
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 332
    const-string v5, "1.3.6.1.4.1.1466.115.121.1.40"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 334
    const-string v7, "dhcpHashBucketAssignment"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 336
    const-string v7, "2.16.840.1.113719.1.203.4.35"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    const-string v4, "2.16.840.1.113719.1.203.4.2"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 344
    const-string v7, "The DN of dhcpServer(s) which provide backup service for the configuration."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 346
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 347
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 348
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 349
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 350
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 351
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 354
    const-string v7, "dhcpSecondaryDN"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 356
    const-string v7, "2.16.840.1.113719.1.203.4.2"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    const-string v4, "2.16.840.1.113719.1.203.4.32"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 364
    const-string v7, "This is the distinguished name of a \"dhcpClient\" that an address is currently assigned to.  This attribute is only present in the class when the address is leased."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 366
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 367
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 368
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 369
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 370
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 371
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 374
    const-string v7, "dhcpAssignedToClient"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 376
    const-string v7, "2.16.840.1.113719.1.203.4.32"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    const-string v4, "2.16.840.1.113719.1.203.4.10"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 384
    const-string v7, "the distinguished name(s) of the dhcpHost objects."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 386
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 387
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 388
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 389
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 390
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 391
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 394
    const-string v7, "dhcpHostDN"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 396
    const-string v7, "2.16.840.1.113719.1.203.4.10"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    const-string v4, "2.16.840.1.113719.1.203.4.15"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 404
    const-string v7, "The distinguished name(s) client addresses."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 406
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 407
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 408
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 409
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 410
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 411
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 414
    const-string v7, "dhcpLeasesDN"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 416
    const-string v7, "2.16.840.1.113719.1.203.4.15"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    const-string v4, "2.16.840.1.113719.1.203.4.7"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 424
    const-string v7, "Encoded option values to be sent to clients.  Each value represents a single option and contains (OptionTag, Length, OptionValue) encoded in the format used by DHCP."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 426
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 427
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 428
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 429
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 430
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 431
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 434
    const-string v7, "dhcpOption"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 436
    const-string v7, "2.16.840.1.113719.1.203.4.7"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v4, "2.16.840.1.113719.1.203.4.34"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 444
    const-string v7, "The clients hardware address that requested this IP address."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 446
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 447
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 448
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 449
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 450
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 451
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    const-string v7, "dhcpHWAddress"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 456
    const-string v7, "2.16.840.1.113719.1.203.4.34"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    const-string v4, "2.16.840.1.113719.1.203.4.5"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 464
    const-string v7, "This attribute contains the permit lists associated with a pool. Each permit list is defined as a separate value."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 466
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 467
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 468
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 469
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 470
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 471
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 474
    const-string v7, "dhcpPermitList"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 476
    const-string v7, "2.16.840.1.113719.1.203.4.5"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const-string v4, "2.16.840.1.113719.1.203.4.18"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 484
    const-string v7, "The distinguished name(s) of sharedNetworks."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 486
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 487
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 488
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 489
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 490
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 491
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 494
    const-string v7, "dhcpSharedNetworkDN"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 496
    const-string v7, "2.16.840.1.113719.1.203.4.18"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const-string v4, "2.16.840.1.113719.1.203.4.25"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 504
    const-string v7, "This is the last time a valid DHCP packet was received from the client."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 506
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 507
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 508
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 509
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 510
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 511
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 514
    const-string v7, "dhcpLastTransactionTime"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 516
    const-string v7, "2.16.840.1.113719.1.203.4.25"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v4, "2.16.840.1.113719.1.203.4.39"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 524
    const-string v7, "Generic error log attribute that allows logging error conditions within a dhcpService or a dhcpSubnet, like no IP addresses available for lease."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 526
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 527
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 528
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 529
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 530
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 531
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 534
    const-string v7, "dhcpErrorLog"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 536
    const-string v7, "2.16.840.1.113719.1.203.4.39"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    const-string v4, "2.16.840.1.113719.1.203.4.11"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 544
    const-string v7, "The distinguished name(s) of pools."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v7, 0x0

    .line 546
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 547
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 548
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 549
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 550
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 551
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 554
    const-string v7, "dhcpPoolDN"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 556
    const-string v7, "2.16.840.1.113719.1.203.4.11"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v4, "2.16.840.1.113719.1.203.4.22"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 564
    const-string v7, "This stores information about the current binding-status of an address.  For dynamic addresses managed by DHCP, the values should be restricted to the following: \"FREE\", \"ACTIVE\", \"EXPIRED\", \"RELEASED\", \"RESET\", \"ABANDONED\", \"BACKUP\".  For other addresses, it SHOULD be one of the following: \"UNKNOWN\", \"RESERVED\" (an address that is managed by DHCP that is reserved for a specific client), \"RESERVED-ACTIVE\" (same as reserved, but address is currently in use), \"ASSIGNED\" (assigned manually or by some other mechanism), \"UNASSIGNED\", \"NOTASSIGNABLE\"."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 566
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 567
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 568
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 569
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 570
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 571
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 574
    const-string v7, "dhcpAddressState"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 576
    const-string v7, "2.16.840.1.113719.1.203.4.22"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    const-string v4, "2.16.840.1.113719.1.203.4.33"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 584
    const-string v7, "If the client request was received via a relay agent, this contains information about the relay agent that was available from the DHCP request.  This is a hex-encoded option value."

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 586
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v7, 0x0

    .line 587
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 588
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v7, -0x1

    .line 589
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 590
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 591
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 594
    const-string v5, "dhcpRelayAgentInfo"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 596
    const-string v5, "2.16.840.1.113719.1.203.4.33"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    const-string v4, "2.16.840.1.113719.1.203.4.4"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 604
    const-string v5, "The starting & ending IP Addresses in the range (inclusive), separated by a hyphen; if the range only contains one address, then just the address can be specified with no hyphen.  Each range is defined as a separate value."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 606
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 607
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 608
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 609
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 610
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 611
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 614
    const-string v5, "dhcpRange"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 616
    const-string v5, "2.16.840.1.113719.1.203.4.4"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    const-string v4, "2.16.840.1.113719.1.203.4.12"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 624
    const-string v5, "The distinguished name(s)   of the groups."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 626
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 627
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 628
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 629
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 630
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 631
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 634
    const-string v5, "dhcpGroupDN"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 636
    const-string v5, "2.16.840.1.113719.1.203.4.12"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v4, "2.16.840.1.113719.1.203.4.17"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 644
    const-string v5, "The distinguished name(s) of subclass(es)."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 646
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 647
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 648
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 649
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 650
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 651
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 654
    const-string v5, "dhcpSubclassesDN"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 656
    const-string v5, "2.16.840.1.113719.1.203.4.17"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    const-string v4, "2.16.840.1.113719.1.203.4.28"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 664
    const-string v5, "This indicates the status of updating DNS resource records on behalf of the client by the DHCP server for this address.  The value is a 16-bit bitmask."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 666
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 667
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 668
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 669
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 670
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 671
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 674
    const-string v5, "dhcpDnsStatus"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 676
    const-string v5, "2.16.840.1.113719.1.203.4.28"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    const-string v4, "2.16.840.1.113719.1.203.4.3"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 684
    const-string v5, "Flexible storage for specific data depending on what object this exists in. Like conditional statements, server parameters, etc. This allows the standard to evolve without needing to adjust the schema."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 686
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 687
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 688
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 689
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 690
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 691
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 694
    const-string v5, "dhcpStatements"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 696
    const-string v5, "2.16.840.1.113719.1.203.4.3"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    const-string v4, "2.16.840.1.113719.1.203.4.27"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 704
    const-string v5, "This is the name of the domain sent to the client by the server.  It is essentially the same as the value for DHCP option 15 sent to the client, and represents only the domain - not the full FQDN.  To obtain the full FQDN assigned to the client you must prepend the \"dhcpAssignedHostName\" to this value with a \".\"."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 706
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 707
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 708
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 709
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 710
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 711
    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 714
    const-string v5, "dhcpDomainName"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 716
    const-string v5, "2.16.840.1.113719.1.203.4.27"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    const-string v4, "2.16.840.1.113719.1.203.4.16"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 724
    const-string v5, "The distinguished name(s) of a class(es) in a subclass."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 726
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 727
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 728
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 729
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 730
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 731
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 734
    const-string v5, "dhcpClassesDN"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 736
    const-string v5, "2.16.840.1.113719.1.203.4.16"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 743
    const-string v4, "2.16.840.1.113719.1.203.4.24"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 744
    const-string v5, "This is the time of the last state change for a leased address."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 746
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 747
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 748
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 749
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 750
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 751
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v4, v15}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 754
    const-string v5, "dhcpStartTimeOfState"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 756
    const-string v5, "2.16.840.1.113719.1.203.4.24"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    const-string v4, "2.16.840.1.113719.1.203.4.38"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 764
    const-string v5, "Server (Failover Endpoint) state, as defined in DHCP Failover Protocol [FAILOVR]"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 766
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 767
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 768
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 769
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 770
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 771
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v4, v13}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 774
    const-string v5, "dhcpFailOverEndpointState"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 776
    const-string v5, "2.16.840.1.113719.1.203.4.38"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    const-string v4, "2.16.840.1.113719.1.203.4.6"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 784
    const-string v5, "The subnet mask length for the subnet.  The mask can be easily computed from this length."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 786
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v5, 0x0

    .line 787
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 788
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 789
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 790
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 791
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 794
    const-string v5, "dhcpNetMask"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 796
    const-string v5, "2.16.840.1.113719.1.203.4.6"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string v4, "2.16.840.1.113719.1.203.4.19"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v4

    .line 804
    const-string v5, "The DN of dhcpService object(s)which contain the configuration information. Each dhcpServer object has this attribute identifying the DHCP configuration(s) that the server is associated with."

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    const/4 v5, 0x0

    .line 806
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 807
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 808
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 809
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 810
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 811
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 814
    const-string v5, "dhcpServiceDN"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 816
    const-string v5, "2.16.840.1.113719.1.203.4.19"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    const-string v4, "2.16.840.1.113719.1.203.4.26"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v1

    .line 824
    const-string v4, "This indicates whether the address was assigned via BOOTP."

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v1, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 826
    invoke-virtual {v1, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v4, 0x0

    .line 827
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 828
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v4, -0x1

    .line 829
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 830
    invoke-static {v9}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 831
    invoke-virtual {v1, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 832
    const-string v4, "1.3.6.1.4.1.1466.115.121.1.7"

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 834
    const-string v4, "dhcpBootpFlag"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 836
    const-string v3, "2.16.840.1.113719.1.203.4.26"

    invoke-interface {v2, v0, v3, v1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
