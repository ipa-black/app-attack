.class public Lorg/apache/ldap/server/schema/bootstrap/CoreObjectClassProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "CoreObjectClassProducer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->OBJECT_CLASS_PRODUCER:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;-><init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V

    return-void
.end method


# virtual methods
.method public produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const-string v4, "2.5.6.14"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v5, 0x0

    .line 62
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 63
    const-string v6, "RFC2256: a device"

    invoke-virtual {v4, v6}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 67
    const-string v6, "top"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 72
    const-string v7, "cn"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v8, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 77
    const-string v8, "serialNumber"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v8, "seeAlso"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v9, "owner"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v9, "ou"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v10, "o"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v10, "l"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v11, "description"

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 88
    const-string v12, "device"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 90
    const-string v12, "2.5.6.14"

    invoke-interface {v2, v0, v12, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v4, "2.5.6.8"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 99
    const-string v12, "RFC2256: an organizational role"

    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 103
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 108
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v12, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v4, v12}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 113
    const-string v12, "x121Address"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v13, "registeredAddress"

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v14, "destinationIndicator"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v15, "preferredDeliveryMethod"

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v5, "telexNumber"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v5

    .line 118
    const-string v5, "teletexTerminalIdentifier"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v5

    .line 119
    const-string v5, "telephoneNumber"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v5

    .line 120
    const-string v5, "internationaliSDNNumber"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v5

    .line 121
    const-string v5, "facsimileTelephoneNumber"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v5

    .line 123
    const-string v5, "roleOccupant"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v5, "street"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v5

    .line 126
    const-string v5, "postOfficeBox"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v5

    .line 127
    const-string v5, "postalCode"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v5

    .line 128
    const-string v5, "postalAddress"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v5

    .line 129
    const-string v5, "physicalDeliveryOfficeName"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v5

    .line 131
    const-string v5, "st"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v26, v10

    .line 134
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 138
    const-string v10, "organizationalRole"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 140
    const-string v10, "2.5.6.8"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v4, "2.5.6.17"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v10, 0x0

    .line 148
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 149
    const-string v10, "RFC2256: a group of unique names (DN and Unique Identifier)"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    const-string v10, "uniqueMember"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 164
    const-string v10, "businessCategory"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v10, "owner"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v10, "o"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 174
    const-string v10, "groupOfUniqueNames"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 176
    const-string v10, "2.5.6.17"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v4, "0.9.2342.19200300.100.4.19"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v10, 0x0

    .line 184
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 185
    const-string v10, "RFC1274: simple security object"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 189
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 194
    const-string v10, "userPassword"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 199
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 203
    const-string v10, "simpleSecurityObject"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 205
    const-string v10, "0.9.2342.19200300.100.4.19"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v4, "2.5.6.16.2"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v10, 0x0

    .line 213
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 216
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 217
    const-string v10, "certificationAuthority"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 222
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 226
    const-string v10, "deltaRevocationList"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 231
    const-string v10, "certificationAuthority-V2"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 233
    const-string v10, "2.5.6.16.2"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const-string v4, "2.5.6.22"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v10, 0x0

    .line 241
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 242
    const-string v10, "RFC2587: PKI certificate authority"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 251
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 255
    const-string v10, "authorityRevocationList"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v10, "certificateRevocationList"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v10, "cACertificate"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v10, "crossCertificatePair"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 263
    const-string v10, "pkiCA"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 265
    const-string v10, "2.5.6.22"

    invoke-interface {v2, v0, v10, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string v4, "2.5.6.7"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v10, 0x0

    .line 273
    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 274
    const-string v10, "RFC2256: an organizational person"

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 278
    const-string v10, "person"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 283
    sget-object v10, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v4, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 287
    const-string v10, "title"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v16

    .line 292
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v17

    .line 293
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v18

    .line 294
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v15

    move-object/from16 v15, v19

    .line 295
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v20

    .line 296
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v21

    .line 297
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v22

    .line 298
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v23

    .line 299
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v24

    .line 300
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v25

    .line 301
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v9

    move-object/from16 v9, v26

    .line 304
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 309
    const-string v9, "organizationalPerson"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 311
    const-string v9, "2.5.6.7"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    const-string v4, "2.5.6.16"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 319
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 320
    const-string v9, "RFC2256: a certificate authority"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 324
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 329
    const-string v9, "authorityRevocationList"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v9, "certificateRevocationList"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v9, "cACertificate"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 335
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 336
    const-string v9, "crossCertificatePair"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 340
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 341
    const-string v9, "certificationAuthority"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 343
    const-string v9, "2.5.6.16"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v4, "1.3.6.1.4.1.1466.344"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 351
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 352
    const-string v9, "RFC2247: domain component object"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 356
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 361
    const-string v9, "dc"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 366
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 370
    const-string v9, "dcObject"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 372
    const-string v9, "1.3.6.1.4.1.1466.344"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    const-string v4, "2.5.6.6"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 380
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 381
    const-string v9, "RFC2256: a person"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 385
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 390
    const-string v9, "sn"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 395
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 396
    const-string v9, "userPassword"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 403
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 404
    const-string v9, "person"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 406
    const-string v9, "2.5.6.6"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    const-string v4, "2.5.6.4"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 414
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 415
    const-string v9, "RFC2256: an organization"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 419
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 424
    const-string v9, "o"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 429
    const-string v9, "userPassword"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v9, "searchGuide"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v9, "businessCategory"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v18

    .line 436
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v16

    .line 437
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    .line 438
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v10

    move-object/from16 v10, v19

    .line 440
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v20

    .line 441
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v21

    .line 442
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v9

    move-object/from16 v9, v22

    .line 443
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v23

    .line 444
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v24

    .line 445
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v15

    move-object/from16 v15, v26

    .line 448
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v26, v9

    .line 450
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 453
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    const-string v9, "organization"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 456
    const-string v9, "2.5.6.4"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    const-string v4, "2.5.6.19"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 464
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 467
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 468
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 473
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 477
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 478
    const-string v9, "certificateRevocationList"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v9, "authorityRevocationList"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v9, "deltaRevocationList"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 484
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 485
    const-string v9, "cRLDistributionPoint"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 487
    const-string v9, "2.5.6.19"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    const-string v4, "1.3.6.1.4.1.250.3.15"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 495
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 496
    const-string v9, "RFC2079: object that contains the URI attribute type"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 500
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 504
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 505
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 508
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 509
    const-string v9, "labeledURI"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 514
    const-string v9, "labeledURIObject"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 516
    const-string v9, "1.3.6.1.4.1.250.3.15"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v4, "2.5.6.23"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 524
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 525
    const-string v9, "RFC2587: PKI user"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 529
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 533
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 534
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 537
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 538
    const-string v9, "deltaRevocationList"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 542
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 543
    const-string v9, "deltaCRL"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 545
    const-string v9, "2.5.6.23"

    invoke-interface {v2, v0, v9, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    const-string v4, "2.5.6.9"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v9, 0x0

    .line 553
    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 554
    const-string v9, "RFC2256: a group of names (DNs)"

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 558
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 563
    const-string v9, "member"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 568
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 569
    const-string v9, "businessCategory"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const-string v9, "owner"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v25

    .line 572
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v14

    .line 573
    const-string v14, "o"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 578
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 579
    const-string v14, "groupOfNames"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 581
    const-string v14, "2.5.6.9"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    const-string v4, "2.5.6.13"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 589
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 590
    const-string v14, "RFC2256: a directory system agent (a server)"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 594
    const-string v14, "applicationEntity"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 598
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 599
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 602
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 603
    const-string v14, "knowledgeInformation"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 607
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 608
    const-string v14, "dSA"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 610
    const-string v14, "2.5.6.13"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    const-string v4, "2.5.6.2"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 618
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 619
    const-string v14, "RFC2256: a country"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 623
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 627
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 628
    const-string v14, "c"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 633
    const-string v14, "searchGuide"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 638
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 639
    const-string v14, "country"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 641
    const-string v14, "2.5.6.2"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const-string v4, "2.5.6.11"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 649
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 650
    const-string v14, "RFC2256: an application process"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 654
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 658
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 659
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 663
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 664
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 672
    const-string v14, "applicationProcess"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 674
    const-string v14, "2.5.6.11"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    const-string v4, "2.5.6.21"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 682
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 683
    const-string v14, "RFC2587: a PKI user"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 687
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 691
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 692
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 695
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 696
    const-string v14, "userCertificate"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 700
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 701
    const-string v14, "pkiUser"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 703
    const-string v14, "2.5.6.21"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    const-string v4, "1.3.6.1.1.3.1"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 711
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 712
    const-string v14, "RFC2377: uid object"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 716
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 720
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 721
    const-string v14, "uid"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 725
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 726
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 729
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 730
    const-string v14, "uidObject"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 732
    const-string v14, "1.3.6.1.1.3.1"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    const-string v4, "2.5.6.3"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 740
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 741
    const-string v14, "RFC2256: a locality"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 745
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 749
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 750
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 753
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 754
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v14, "searchGuide"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 763
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 764
    const-string v14, "locality"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 766
    const-string v14, "2.5.6.3"

    invoke-interface {v2, v0, v14, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    const-string v4, "2.5.6.12"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v14, 0x0

    .line 774
    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 775
    const-string v14, "RFC2256: an application entity"

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 779
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v14, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 783
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 784
    const-string v14, "presentationAddress"

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 789
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 790
    const-string v7, "supportedApplicationContext"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    const-string v7, "o"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 799
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 800
    const-string v7, "applicationEntity"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 802
    const-string v7, "2.5.6.12"

    invoke-interface {v2, v0, v7, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    const-string v4, "2.5.6.20"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v7, 0x0

    .line 810
    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 813
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 814
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 818
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 819
    const-string v7, "dmdName"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    sget-object v7, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 823
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 824
    const-string v7, "userPassword"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v7, "searchGuide"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    const-string v7, "businessCategory"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v25

    .line 830
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v18

    .line 831
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v16

    .line 832
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v21

    .line 833
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v17

    .line 834
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v19

    .line 835
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v20

    .line 836
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    .line 838
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v23

    .line 839
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v26

    .line 840
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v24

    .line 841
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v11

    .line 845
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 848
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 849
    const-string v11, "dmd"

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 851
    const-string v11, "2.5.6.20"

    invoke-interface {v2, v0, v11, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    const-string v4, "2.5.6.15"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v11, 0x0

    .line 859
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 860
    const-string v11, "RFC2256: a strong authentication user"

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 864
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 868
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 869
    const-string v11, "userCertificate"

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 873
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 874
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 877
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 878
    const-string v11, "strongAuthenticationUser"

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 880
    const-string v11, "2.5.6.15"

    invoke-interface {v2, v0, v11, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    const-string v4, "2.5.6.5"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v11, 0x0

    .line 888
    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 889
    const-string v11, "RFC2256: an organizational unit"

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 893
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 897
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 898
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 902
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 903
    const-string v9, "userPassword"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    const-string v9, "searchGuide"

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    const-string v8, "businessCategory"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v18

    .line 910
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v16

    .line 911
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v21

    .line 912
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    .line 913
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    .line 914
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v14

    move-object/from16 v14, v20

    .line 916
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v14

    move-object/from16 v14, v22

    .line 917
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v23

    .line 918
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v26

    .line 919
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v5

    move-object/from16 v5, v24

    .line 923
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 927
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 928
    const-string v5, "organizationalUnit"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 930
    const-string v5, "2.5.6.5"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    const-string v4, "2.5.6.10"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v4

    const/4 v5, 0x0

    .line 938
    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 939
    const-string v5, "RFC2256: an residential person"

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 943
    const-string v5, "person"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 947
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 948
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 952
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 953
    const-string v5, "businessCategory"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v18

    .line 960
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v17

    .line 962
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v21

    .line 964
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v22

    .line 965
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v23

    .line 966
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v19

    .line 969
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 974
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 975
    const-string v5, "residentialPerson"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    sget-object v5, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 977
    const-string v5, "2.5.6.10"

    invoke-interface {v2, v0, v5, v4}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    const-string v4, "2.5.6.18"

    invoke-static {v4, v1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    move-result-object v1

    const/4 v4, 0x0

    .line 985
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setObsolete(Z)V

    .line 986
    const-string v4, "RFC2256: a user security information"

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setDescription(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v4, v16

    .line 990
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setSuperClassIds([Ljava/lang/String;)V

    .line 994
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 995
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMustListIds([Ljava/lang/String;)V

    .line 998
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 999
    const-string v4, "supportedAlgorithms"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setMayListIds([Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1004
    const-string v4, "userSecurityInformation"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    sget-object v4, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->setNames([Ljava/lang/String;)V

    .line 1006
    const-string v3, "2.5.6.18"

    invoke-interface {v2, v0, v3, v1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
