.class public abstract Lorg/apache/ldap/server/AbstractCoreTest;
.super Ljunit/framework/TestCase;
.source "AbstractCoreTest.java"


# static fields
.field public static final LDIF:Ljava/lang/String; = "dn: uid=akarasulu,ou=users,ou=system\ncn: Alex Karasulu\nsn: Karasulu\ngivenname: Alex\nobjectclass: top\nobjectclass: person\nobjectclass: organizationalPerson\nobjectclass: inetOrgPerson\nou: Engineering\nou: People\nl: Bogusville\nuid: akarasulu\nmail: akarasulu@apache.org\ntelephonenumber: +1 408 555 4798\nfacsimiletelephonenumber: +1 408 555 9751\nroomnumber: 4612\nuserpassword: test\n"


# instance fields
.field protected doDelete:Z

.field protected extras:Ljava/util/Hashtable;

.field private list:Ljava/util/ArrayList;

.field protected overrides:Ljava/util/Hashtable;

.field protected sysRoot:Ljavax/naming/ldap/LdapContext;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->doDelete:Z

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->extras:Ljava/util/Hashtable;

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->overrides:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->list:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->list:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 93
    new-instance v1, Lorg/apache/ldap/common/ldif/LdifParserImpl;

    invoke-direct {v1}, Lorg/apache/ldap/common/ldif/LdifParserImpl;-><init>()V

    .line 97
    :try_start_0
    const-string v2, "dn: uid=akarasulu,ou=users,ou=system\ncn: Alex Karasulu\nsn: Karasulu\ngivenname: Alex\nobjectclass: top\nobjectclass: person\nobjectclass: organizationalPerson\nobjectclass: inetOrgPerson\nou: Engineering\nou: People\nl: Bogusville\nuid: akarasulu\nmail: akarasulu@apache.org\ntelephonenumber: +1 408 555 4798\nfacsimiletelephonenumber: +1 408 555 9751\nroomnumber: 4612\nuserpassword: test\n"

    invoke-virtual {v1, v0, v2}, Lorg/apache/ldap/common/ldif/LdifParserImpl;->parse(Ljavax/naming/directory/Attributes;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    iget-object v1, p0, Lorg/apache/ldap/server/AbstractCoreTest;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    .line 103
    new-instance v1, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected doDelete(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->doDelete:Z

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Failed to delete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method protected importLdif(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 248
    iget-object v1, p0, Lorg/apache/ldap/server/AbstractCoreTest;->sysRoot:Ljavax/naming/ldap/LdapContext;

    invoke-interface {v1}, Ljavax/naming/ldap/LdapContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 250
    new-instance v1, Ljavax/naming/ldap/InitialLdapContext;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    .line 252
    new-instance v0, Lorg/apache/ldap/common/ldif/LdifParserImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/ldif/LdifParserImpl;-><init>()V

    .line 256
    :try_start_0
    new-instance v2, Lorg/apache/ldap/common/ldif/LdifIterator;

    invoke-direct {v2, p1}, Lorg/apache/ldap/common/ldif/LdifIterator;-><init>(Ljava/io/InputStream;)V

    .line 258
    :goto_0
    invoke-virtual {v2}, Lorg/apache/ldap/common/ldif/LdifIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 262
    invoke-virtual {v2}, Lorg/apache/ldap/common/ldif/LdifIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    invoke-interface {v0, p1, v3}, Lorg/apache/ldap/common/ldif/LdifParser;->parse(Ljavax/naming/directory/Attributes;Ljava/lang/String;)V

    .line 266
    new-instance v3, Lorg/apache/ldap/common/name/LdapName;

    const-string v4, "dn"

    invoke-interface {p1, v4}, Ljavax/naming/directory/Attributes;->remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v4

    invoke-interface {v4}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 268
    invoke-interface {v3, v4}, Ljavax/naming/Name;->remove(I)Ljava/lang/Object;

    .line 270
    invoke-interface {v1, v3, p1}, Ljavax/naming/ldap/LdapContext;->createSubcontext(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/directory/DirContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    new-instance v0, Lorg/apache/ldap/common/exception/LdapConfigurationException;

    const-string v1, "failed while trying to parse system ldif file"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/exception/LdapConfigurationException;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 281
    throw v0
.end method

.method protected setSysRoot(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 168
    const-string v1, "java.naming.security.principal"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string p1, "java.naming.security.credentials"

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/AbstractCoreTest;->setSysRoot(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;

    move-result-object p1

    return-object p1
.end method

.method protected setSysRoot(Ljava/util/Hashtable;)Ljavax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 189
    iget-object v1, p0, Lorg/apache/ldap/server/AbstractCoreTest;->extras:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 191
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 193
    const-string p1, "java.naming.provider.url"

    const-string v1, "ou=system"

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "target"

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "apacheds"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "server.wkdir"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string p1, "java.naming.factory.initial"

    const-string v1, "org.apache.ldap.server.jndi.CoreContextFactory"

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p1, p0, Lorg/apache/ldap/server/AbstractCoreTest;->overrides:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 201
    new-instance p1, Ljavax/naming/ldap/InitialLdapContext;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    iput-object p1, p0, Lorg/apache/ldap/server/AbstractCoreTest;->sysRoot:Ljavax/naming/ldap/LdapContext;

    return-object p1
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->extras:Ljava/util/Hashtable;

    const-string v1, "server.test.entries"

    iget-object v2, p0, Lorg/apache/ldap/server/AbstractCoreTest;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->overrides:Ljava/util/Hashtable;

    const-string v1, "server.wkdir"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ldap/server/AbstractCoreTest;->overrides:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/AbstractCoreTest;->doDelete(Ljava/io/File;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "target"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "apacheds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/server/AbstractCoreTest;->doDelete(Ljava/io/File;)V

    .line 131
    :goto_0
    const-string v0, "uid=admin,ou=system"

    const-string v1, "secret"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ldap/server/AbstractCoreTest;->setSysRoot(Ljava/lang/String;Ljava/lang/String;)Ljavax/naming/ldap/LdapContext;

    return-void
.end method

.method protected tearDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 215
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 217
    const-string v1, "java.naming.provider.url"

    const-string v2, "ou=system"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "java.naming.factory.initial"

    const-string v2, "org.apache.ldap.server.jndi.CoreContextFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "server.operation.shutdown"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "java.naming.security.principal"

    const-string v2, "uid=admin,ou=system"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "java.naming.security.credentials"

    const-string v2, "secret"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :try_start_0
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1, v0}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lorg/apache/ldap/server/AbstractCoreTest;->sysRoot:Ljavax/naming/ldap/LdapContext;

    .line 231
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method
