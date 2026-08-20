.class public Lorg/apache/ldap/server/schema/bootstrap/JavaAttributeTypeProducer;
.super Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.source "JavaAttributeTypeProducer.java"


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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.6"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v2

    .line 64
    const-string v3, "Fully qualified name of distinguished Java class or interface"

    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 65
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 66
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 68
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    const/4 v5, -0x1

    .line 69
    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 70
    const-string v6, "userApplications"

    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 71
    const-string v7, "caseExactMatch"

    invoke-virtual {v2, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 72
    const-string v8, "1.3.6.1.4.1.1466.115.121.1.15"

    invoke-virtual {v2, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    const-string v9, "javaClassName"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 76
    invoke-interface {p2, p0, v1, v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.10"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v2

    .line 84
    const-string v9, "Fully qualified Java class name of a JNDI object factory"

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 86
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 87
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 88
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 89
    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 90
    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 91
    invoke-virtual {v2, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    const-string v9, "javaFactory"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 96
    invoke-interface {p2, p0, v1, v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.7"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v2

    .line 104
    const-string v9, "URL(s) specifying the location of class definition"

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 106
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 107
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 108
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 109
    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 110
    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 111
    const-string v9, "caseExactIA5Match"

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 112
    const-string v10, "1.3.6.1.4.1.1466.115.121.1.26"

    invoke-virtual {v2, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    const-string v11, "javaCodebase"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v11, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v2, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 116
    invoke-interface {p2, p0, v1, v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.12"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v2

    .line 124
    const-string v11, "The Java documentation for the class"

    invoke-virtual {v2, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 126
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 127
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 128
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 129
    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 130
    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 131
    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v10}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    const-string v9, "javaDoc"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 136
    invoke-interface {p2, p0, v1, v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.11"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v2

    .line 144
    const-string v9, "Addresses associated with a JNDI Reference"

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 146
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 147
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 148
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 149
    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 150
    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 151
    invoke-virtual {v2, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    const-string v9, "javaReferenceAddress"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 156
    invoke-interface {p2, p0, v1, v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.8"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object v2

    .line 164
    const-string v9, "Serialized form of a Java object"

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 166
    invoke-virtual {v2, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 167
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 168
    invoke-virtual {v2, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 169
    invoke-virtual {v2, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 170
    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 171
    const-string v9, "1.3.6.1.4.1.1466.115.121.1.40"

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    const-string v9, "javaSerializedData"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v9, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 175
    invoke-interface {p2, p0, v1, v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v1, "1.3.6.1.4.1.42.2.27.4.1.13"

    invoke-static {v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    move-result-object p1

    .line 183
    const-string v2, "Fully qualified Java class or interface name"

    invoke-virtual {p1, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setDescription(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1, v3}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCanUserModify(Z)V

    .line 185
    invoke-virtual {p1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSingleValue(Z)V

    .line 186
    invoke-virtual {p1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setCollective(Z)V

    .line 187
    invoke-virtual {p1, v4}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setObsolete(Z)V

    .line 188
    invoke-virtual {p1, v5}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setLength(I)V

    .line 189
    invoke-static {v6}, Lorg/apache/ldap/common/schema/UsageEnum;->getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V

    .line 190
    invoke-virtual {p1, v7}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setEqualityId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v8}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setSyntaxId(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    const-string v2, "javaClassNames"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v2, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;->setNames([Ljava/lang/String;)V

    .line 195
    invoke-interface {p2, p0, v1, p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;->schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
