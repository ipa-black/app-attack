.class public Lorg/apache/kerberos/store/operations/GetPrincipal;
.super Ljava/lang/Object;
.source "GetPrincipal.java"

# interfaces
.implements Lorg/apache/kerberos/store/ContextOperation;


# instance fields
.field private final principal:Ljavax/security/auth/kerberos/KerberosPrincipal;


# direct methods
.method public constructor <init>(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/kerberos/store/operations/GetPrincipal;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method private getEntry(Ljavax/naming/directory/Attributes;)Lorg/apache/kerberos/store/PrincipalStoreEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 131
    new-instance v0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;-><init>()V

    .line 133
    const-string v1, "krb5PrincipalName"

    invoke-interface {p1, v1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    const-string v2, "krb5EncryptionType"

    invoke-interface {p1, v2}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    const-string v3, "krb5KeyVersionNumber"

    invoke-interface {p1, v3}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    const-string v4, "apacheSamType"

    invoke-interface {p1, v4}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 141
    invoke-interface {p1, v4}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v4

    invoke-interface {v4}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/apache/kerberos/messages/value/SamType;->getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->setSamType(Lorg/apache/kerberos/messages/value/SamType;)V

    .line 146
    :cond_0
    const-string v4, "krb5Key"

    invoke-interface {p1, v4}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 148
    new-instance v4, Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-direct {v4, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->setPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->setEncryptionType(I)V

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->setKeyVersionNumber(I)V

    .line 154
    invoke-virtual {v0, p1}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->setKey([B)V

    .line 156
    invoke-virtual {v0}, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->getEntry()Lorg/apache/kerberos/store/PrincipalStoreEntry;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute(Ljavax/naming/directory/DirContext;Ljavax/naming/Name;)Ljava/lang/Object;
    .locals 6

    .line 73
    iget-object v0, p0, Lorg/apache/kerberos/store/operations/GetPrincipal;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x4

    .line 78
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "krb5PrincipalName"

    aput-object v3, v0, v2

    const/4 v4, 0x1

    const-string v5, "krb5KeyVersionNumber"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "krb5EncryptionType"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "krb5Key"

    aput-object v5, v0, v4

    .line 85
    new-instance v4, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {v4, v2}, Ljavax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 87
    new-instance v2, Ljavax/naming/directory/BasicAttribute;

    iget-object v5, p0, Lorg/apache/kerberos/store/operations/GetPrincipal;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v5}, Ljavax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 95
    :try_start_0
    invoke-interface {p1, p2, v4, v0}, Ljavax/naming/directory/DirContext;->search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 99
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/SearchResult;

    .line 101
    invoke-virtual {p1}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/kerberos/store/operations/GetPrincipal;->getEntry(Ljavax/naming/directory/Attributes;)Lorg/apache/kerberos/store/PrincipalStoreEntry;

    move-result-object v1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljavax/naming/NamingException;->printStackTrace()V

    return-object v1
.end method

.method protected getPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/kerberos/store/operations/GetPrincipal;->principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method
