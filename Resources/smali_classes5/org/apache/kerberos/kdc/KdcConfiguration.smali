.class public Lorg/apache/kerberos/kdc/KdcConfiguration;
.super Ljava/lang/Object;
.source "KdcConfiguration.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CHANGEPW_PORT:I = 0x1d0

.field private static final DEFAULTS:Ljava/lang/String; = "kerberos.properties"

.field private static final DEFAULT_PORT:I = 0x58

.field private static final KDC_PRIMARY_REALM:Ljava/lang/String; = "kdc.primary.realm"

.field private static final KDC_PRINCIPAL:Ljava/lang/String; = "kdc.principal"

.field private static final MINUTE:I = 0xea60


# instance fields
.field private _encryptionTypes:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private final properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    .line 49
    invoke-direct {p0}, Lorg/apache/kerberos/kdc/KdcConfiguration;->loadDefaults()V

    .line 50
    invoke-direct {p0}, Lorg/apache/kerberos/kdc/KdcConfiguration;->prepareEncryptionTypes()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    .line 56
    invoke-direct {p0}, Lorg/apache/kerberos/kdc/KdcConfiguration;->loadDefaults()V

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 58
    invoke-direct {p0}, Lorg/apache/kerberos/kdc/KdcConfiguration;->prepareEncryptionTypes()V

    return-void
.end method

.method private loadDefaults()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "kerberos.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private prepareEncryptionTypes()V
    .locals 7

    .line 260
    const-string v0, "kdc.encryption.types"

    .line 261
    iget-object v1, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 265
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 267
    aget-object v3, v0, v2

    .line 268
    sget-object v4, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->VALUES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 269
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 272
    invoke-virtual {v5}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    iput-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->_encryptionTypes:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.buffer.size"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x400

    return v0
.end method

.method public getChangepwPort()I
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "changepw.default.port"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1d0

    return v0
.end method

.method public getChangepwPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 3

    .line 245
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v1, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v2, "changepw.principal"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getClockSkew()J
    .locals 4

    .line 114
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.allowable.clockskew"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getDefaultPort()I
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.default.port"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x58

    return v0
.end method

.method public getEncryptionTypes()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->_encryptionTypes:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getKdcPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 3

    .line 85
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v1, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v2, "kdc.principal"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getKerberosKeysLocation()Ljava/lang/String;
    .locals 2

    .line 91
    const-string v0, "kdc.keys.location"

    .line 92
    iget-object v1, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLdapPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 3

    .line 251
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "ldap.principal"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v2, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaximumRenewableLifetime()J
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.maximum.renewable.lifetime"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method public getMaximumTicketLifetime()J
    .locals 4

    .line 125
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.maximum.ticket.lifetime"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getPrimaryRealm()Ljava/lang/String;
    .locals 2

    .line 77
    const-string v0, "kdc.primary.realm"

    .line 78
    iget-object v1, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Hashtable;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "java.naming.ldap.attributes.binary"

    const-string v2, "krb5Key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public isEmptyAddressesAllowed()Z
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.empty.addresses.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isForwardableAllowed()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.forwardable.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPaEncTimestampRequired()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.pa.enc.timestamp.required"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPostdateAllowed()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.postdate.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isProxiableAllowed()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.proxiable.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRenewableAllowed()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.renewable.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/kerberos/kdc/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
