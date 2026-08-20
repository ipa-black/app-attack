.class public final Lorg/apache/ldap/server/SystemPartition;
.super Lorg/apache/ldap/server/AbstractContextPartition;
.source "SystemPartition.java"


# static fields
.field public static final ADMIN_PRINCIPAL:Ljava/lang/String; = "uid=admin,ou=system"

.field public static final ADMIN_PW:[B

.field public static final ADMIN_UID:Ljava/lang/String; = "admin"

.field public static final GROUPS_BASE_DN:Ljava/lang/String; = "ou=groups,ou=system"

.field public static final SUFFIX:Ljava/lang/String; = "ou=system"

.field public static final USERS_BASE_DN:Ljava/lang/String; = "ou=users,ou=system"


# instance fields
.field private final suffix:Ljavax/naming/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "secret"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/SystemPartition;->ADMIN_PW:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 168
    const-string v0, "ou=system"

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ldap/server/AbstractContextPartition;-><init>(Lorg/apache/ldap/server/db/Database;Lorg/apache/ldap/server/db/SearchEngine;[Lorg/apache/ldap/common/schema/AttributeType;)V

    .line 169
    new-instance p2, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p2}, Lorg/apache/ldap/common/name/LdapName;-><init>()V

    iput-object p2, p0, Lorg/apache/ldap/server/SystemPartition;->suffix:Ljavax/naming/Name;

    .line 173
    :try_start_0
    invoke-interface {p2, v0}, Ljavax/naming/Name;->add(Ljava/lang/String;)Ljavax/naming/Name;
    :try_end_0
    .catch Ljavax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    invoke-interface {p1}, Lorg/apache/ldap/server/db/Database;->getSuffixEntry()Ljavax/naming/directory/Attributes;

    move-result-object p1

    if-nez p1, :cond_0

    .line 184
    new-instance p1, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 185
    const-string p2, "top"

    const-string p3, "objectClass"

    invoke-interface {p1, p3, p2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 186
    const-string p2, "organizationalUnit"

    invoke-interface {p1, p3, p2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 187
    const-string p2, "creatorsName"

    const-string p3, "uid=admin,ou=system"

    invoke-interface {p1, p2, p3}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 188
    const-string p2, "createTimestamp"

    invoke-static {}, Lorg/apache/ldap/common/util/DateUtils;->getGeneralizedTime()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 189
    invoke-static {v0}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {v0}, Lorg/apache/ldap/common/util/NamespaceTools;->getRdnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    invoke-interface {p1, p2, p3}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    .line 192
    invoke-virtual {p0}, Lorg/apache/ldap/server/SystemPartition;->getDb()Lorg/apache/ldap/server/db/Database;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/ldap/server/SystemPartition;->suffix:Ljavax/naming/Name;

    invoke-interface {p2, v0, p3, p1}, Lorg/apache/ldap/server/db/Database;->add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V

    :cond_0
    return-void
.end method

.method public static final getAdminDn()Ljavax/naming/Name;
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    const-string v1, "uid=admin,ou=system"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getGroupsBaseDn()Ljavax/naming/Name;
    .locals 2

    .line 109
    :try_start_0
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    const-string v1, "ou=groups,ou=system"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getUsersBaseDn()Ljavax/naming/Name;
    .locals 2

    .line 84
    :try_start_0
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    const-string v1, "ou=users,ou=system"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getSuffix(Z)Ljavax/naming/Name;
    .locals 0

    .line 211
    iget-object p1, p0, Lorg/apache/ldap/server/SystemPartition;->suffix:Ljavax/naming/Name;

    invoke-interface {p1}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/Name;

    return-object p1
.end method

.method public final isSuffix(Ljavax/naming/Name;)Z
    .locals 1

    .line 220
    const-string v0, "ou=system"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
