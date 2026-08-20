.class public Lorg/apache/ldap/server/jndi/PartitionConfigBuilder;
.super Ljava/lang/Object;
.source "PartitionConfigBuilder.java"


# static fields
.field private static final EMPTY:[Lorg/apache/ldap/server/ContextPartitionConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Lorg/apache/ldap/server/ContextPartitionConfig;

    sput-object v0, Lorg/apache/ldap/server/jndi/PartitionConfigBuilder;->EMPTY:[Lorg/apache/ldap/server/ContextPartitionConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContextPartitionConfig(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/ldap/server/ContextPartitionConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    new-instance v1, Lorg/apache/ldap/server/ContextPartitionConfig;

    invoke-direct {v1}, Lorg/apache/ldap/server/ContextPartitionConfig;-><init>()V

    .line 62
    new-instance v2, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v2}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 68
    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/ContextPartitionConfig;->setId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/ContextPartitionConfig;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 72
    const-string v3, "server.db.partition.suffix."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 78
    new-instance v4, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v4, v3}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_0
    invoke-virtual {v1, v3}, Lorg/apache/ldap/server/ContextPartitionConfig;->setSuffix(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 89
    const-string v4, "server.db.partition.class."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 95
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/ContextPartitionConfig;->setPartitionClass(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 104
    const-string v4, "server.db.partition.properties."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/ContextPartitionConfig;->setProperties(Ljava/lang/String;)V

    .line 117
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 119
    const-string v4, "server.db.partition.indices."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    const-string v5, " "

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {v4}, Lorg/apache/ldap/common/util/StringTools;->deepTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/ContextPartitionConfig;->setIndices([Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_4
    :goto_0
    sget-object v4, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/ldap/server/ContextPartitionConfig;->setIndices([Ljava/lang/String;)V

    .line 138
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 140
    const-string v4, "server.db.partition.attributes."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/naming/directory/Attributes;

    invoke-virtual {v1, p0}, Lorg/apache/ldap/server/ContextPartitionConfig;->setAttributes(Ljavax/naming/directory/Attributes;)V

    return-object v1

    .line 162
    :cond_5
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_7

    return-object v1

    .line 168
    :cond_7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 170
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 172
    new-instance v6, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    .line 184
    :cond_8
    invoke-static {v4}, Lorg/apache/ldap/common/util/StringTools;->deepTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v7, v3

    .line 188
    :goto_3
    array-length v8, v4

    if-lt v7, v8, :cond_9

    .line 193
    invoke-virtual {v2, v6}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_2

    .line 190
    :cond_9
    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 179
    :cond_a
    :goto_4
    invoke-virtual {v2, v6}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    goto :goto_2
.end method

.method public static getContextPartitionConfigs(Ljava/util/Hashtable;)[Lorg/apache/ldap/server/ContextPartitionConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 212
    const-string v0, "server.db.partitions"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/StringTools;->deepTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    array-length v1, v0

    new-array v2, v1, [Lorg/apache/ldap/server/ContextPartitionConfig;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    .line 225
    :cond_1
    aget-object v4, v0, v3

    invoke-static {v4, p0}, Lorg/apache/ldap/server/jndi/PartitionConfigBuilder;->getContextPartitionConfig(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/ldap/server/ContextPartitionConfig;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_2
    :goto_1
    sget-object p0, Lorg/apache/ldap/server/jndi/PartitionConfigBuilder;->EMPTY:[Lorg/apache/ldap/server/ContextPartitionConfig;

    return-object p0
.end method
