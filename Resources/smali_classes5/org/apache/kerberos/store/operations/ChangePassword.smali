.class public Lorg/apache/kerberos/store/operations/ChangePassword;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Lorg/apache/kerberos/store/ContextOperation;


# instance fields
.field protected newKey:Ljavax/security/auth/kerberos/KerberosKey;

.field protected principal:Ljavax/security/auth/kerberos/KerberosPrincipal;


# direct methods
.method public constructor <init>(Ljavax/security/auth/kerberos/KerberosPrincipal;Ljavax/security/auth/kerberos/KerberosKey;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/kerberos/store/operations/ChangePassword;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 57
    iput-object p2, p0, Lorg/apache/kerberos/store/operations/ChangePassword;->newKey:Ljavax/security/auth/kerberos/KerberosKey;

    return-void
.end method

.method private getRelativeName(Ljavax/naming/directory/DirContext;Ljava/lang/String;)Ljavax/naming/Name;
    .locals 3

    .line 117
    :try_start_0
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-interface {p1}, Ljavax/naming/directory/DirContext;->getNameInNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-interface {p1, v0}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    move v1, p2

    .line 123
    :goto_0
    invoke-virtual {v0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 125
    invoke-interface {p1, p2}, Ljavax/naming/Name;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 130
    :cond_1
    const-string p1, "Failed to create initial context for ApacheDS provider"

    .line 132
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Lorg/apache/ldap/common/util/NestableRuntimeException;

    const-string v0, "Failed to find search base for ApacheDS store"

    invoke-direct {p2, v0, p1}, Lorg/apache/ldap/common/util/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private search(Ljavax/naming/directory/DirContext;Ljavax/naming/Name;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 90
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "krb5PrincipalName"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    const-string v4, "krb5KeyVersionNumber"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "krb5EncryptionType"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "krb5Key"

    aput-object v4, v0, v3

    .line 93
    new-instance v3, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {v3, v1}, Ljavax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 94
    new-instance v1, Ljavax/naming/directory/BasicAttribute;

    invoke-direct {v1, v2, p3}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 97
    invoke-interface {p1, p2, v3, v0}, Ljavax/naming/directory/DirContext;->search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/SearchResult;

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljavax/naming/directory/SearchResult;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public execute(Ljavax/naming/directory/DirContext;Ljavax/naming/Name;)Ljava/lang/Object;
    .locals 5

    .line 62
    iget-object v0, p0, Lorg/apache/kerberos/store/operations/ChangePassword;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Ljavax/naming/directory/ModificationItem;

    .line 68
    new-instance v2, Ljavax/naming/directory/BasicAttribute;

    iget-object v3, p0, Lorg/apache/kerberos/store/operations/ChangePassword;->newKey:Ljavax/security/auth/kerberos/KerberosKey;

    invoke-virtual {v3}, Ljavax/security/auth/kerberos/KerberosKey;->getEncoded()[B

    move-result-object v3

    const-string v4, "krb5key"

    invoke-direct {v2, v4, v3}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    new-instance v3, Ljavax/naming/directory/ModificationItem;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2}, Ljavax/naming/directory/ModificationItem;-><init>(ILjavax/naming/directory/Attribute;)V

    const/4 v2, 0x0

    aput-object v3, v0, v2

    .line 75
    :try_start_0
    iget-object v2, p0, Lorg/apache/kerberos/store/operations/ChangePassword;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v2}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/kerberos/store/operations/ChangePassword;->search(Ljavax/naming/directory/DirContext;Ljavax/naming/Name;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/kerberos/store/operations/ChangePassword;->getRelativeName(Ljavax/naming/directory/DirContext;Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v2

    .line 77
    invoke-interface {p1, v2, v0}, Ljavax/naming/directory/DirContext;->modifyAttributes(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljavax/naming/NamingException;->printStackTrace()V

    return-object v1
.end method
