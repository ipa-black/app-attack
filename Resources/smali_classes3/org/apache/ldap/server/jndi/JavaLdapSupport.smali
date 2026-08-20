.class public Lorg/apache/ldap/server/jndi/JavaLdapSupport;
.super Ljava/lang/Object;
.source "JavaLdapSupport.java"


# static fields
.field public static final JCLASSNAMES_ATTR:Ljava/lang/String; = "javaClassNames"

.field public static final JCLASSNAME_ATTR:Ljava/lang/String; = "javaClassName"

.field public static final JCONTAINER_ATTR:Ljava/lang/String; = "javaContainer"

.field public static final JOBJECT_ATTR:Ljava/lang/String; = "javaObject"

.field public static final JSERIALDATA_ATTR:Ljava/lang/String; = "javaSerializedData"

.field public static final JSERIALIZEDOBJ_ATTR:Ljava/lang/String; = "javaSerializedObject"

.field public static final OBJECTCLASS_ATTR:Ljava/lang/String; = "objectClass"

.field public static final TOP_ATTR:Ljava/lang/String; = "top"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deserialize(Ljavax/naming/directory/Attributes;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 75
    const-string v0, "object deserialization stream close() failure"

    .line 76
    const-string v1, "javaClassName"

    invoke-interface {p0, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 80
    :try_start_0
    const-string v3, "javaSerializedData"

    invoke-interface {p0, v3}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p0

    invoke-interface {p0}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 81
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 99
    :catch_0
    new-instance p0, Ljavax/naming/NamingException;

    invoke-direct {p0, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 86
    :goto_0
    :try_start_3
    new-instance v3, Ljavax/naming/NamingException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "De-serialization of \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "\' instance failed:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, p0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 89
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    throw p0

    .line 99
    :catch_3
    new-instance p0, Ljavax/naming/NamingException;

    invoke-direct {p0, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static serialize(Ljavax/naming/directory/Attributes;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 161
    const-string v0, "top"

    const-string v1, "objectClass"

    invoke-interface {p0, v1, v0}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 163
    const-string v0, "javaObject"

    invoke-interface {p0, v1, v0}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 165
    const-string v0, "javaContainer"

    invoke-interface {p0, v1, v0}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 167
    const-string v0, "javaSerializedObject"

    invoke-interface {p0, v1, v0}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClassName"

    invoke-interface {p0, v1, v0}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 172
    const-string v0, "javaSerializedData"

    invoke-static {p1}, Lorg/apache/ldap/server/jndi/JavaLdapSupport;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 179
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javaClassNames"

    invoke-interface {p0, v2, v1}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static serialize(Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 114
    const-string v0, "object serialization stream close() failure"

    const/4 v1, 0x0

    .line 119
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 139
    :catch_0
    new-instance p0, Ljavax/naming/NamingException;

    invoke-direct {p0, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 126
    :goto_0
    :try_start_3
    new-instance v2, Ljavax/naming/NamingException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Serialization of \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v4, "\' failed:\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 129
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    move-object v1, v3

    .line 135
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 132
    throw p0

    .line 139
    :catch_3
    new-instance p0, Ljavax/naming/NamingException;

    invoke-direct {p0, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
