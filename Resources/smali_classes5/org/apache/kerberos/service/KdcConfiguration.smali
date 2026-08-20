.class public Lorg/apache/kerberos/service/KdcConfiguration;
.super Ljava/lang/Object;
.source "KdcConfiguration.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final CHANGEPW_PORT_KEY:Ljava/lang/String; = "changepw.default.port"

.field public static final DEFAULT_CHANGEPW_PORT:I = 0x1d0

.field private static final DEFAULT_CHANGEPW_PRINCIPAL:Ljava/lang/String; = "kadmin/changepw@EXAMPLE.COM"

.field public static final DEFAULT_KERBEROS_PORT:I = 0x58

.field private static final DEFAULT_PRINCIPAL:Ljava/lang/String; = "krbtgt/EXAMPLE.COM@EXAMPLE.COM"

.field private static final DEFAULT_REALM:Ljava/lang/String; = "EXAMPLE.COM"

.field private static final KDC_PRIMARY_REALM:Ljava/lang/String; = "kdc.primary.realm"

.field private static final KDC_PRINCIPAL:Ljava/lang/String; = "kdc.principal"

.field public static final KERBEROS_PORT_KEY:Ljava/lang/String; = "kdc.default.port"

.field private static final MINUTE:I = 0xea60


# instance fields
.field private _encryptionTypes:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

.field private final properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    .line 72
    invoke-direct {p0}, Lorg/apache/kerberos/service/KdcConfiguration;->prepareEncryptionTypes()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 80
    invoke-direct {p0}, Lorg/apache/kerberos/service/KdcConfiguration;->prepareEncryptionTypes()V

    return-void
.end method

.method private prepareEncryptionTypes()V
    .locals 7

    .line 301
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.encryption.types"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 307
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "des-cbc-md5"

    aput-object v1, v0, v2

    .line 310
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 314
    aget-object v3, v0, v2

    .line 316
    sget-object v4, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->VALUES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 318
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    .line 322
    invoke-virtual {v5}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    iput-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->_encryptionTypes:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.buffer.size"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x400

    return v0
.end method

.method public getChangepwPort()I
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "changepw.default.port"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1d0

    return v0
.end method

.method public getChangepwPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "changepw.principal"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v2, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    const-string v1, "kadmin/changepw@EXAMPLE.COM"

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getClockSkew()J
    .locals 4

    .line 130
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.allowable.clockskew"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 169
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.default.port"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x58

    return v0
.end method

.method public getEncryptionTypes()[Lorg/apache/kerberos/crypto/encryption/EncryptionType;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->_encryptionTypes:[Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    return-object v0
.end method

.method public getKdcPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.principal"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget-object v2, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljavax/security/auth/kerberos/KerberosPrincipal;

    const-string v1, "krbtgt/EXAMPLE.COM@EXAMPLE.COM"

    invoke-direct {v0, v1}, Ljavax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMaximumRenewableLifetime()J
    .locals 4

    .line 156
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.maximum.renewable.lifetime"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 143
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.maximum.ticket.lifetime"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 88
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.primary.realm"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "EXAMPLE.COM"

    return-object v0
.end method

.method public getProperties()Ljava/util/Hashtable;
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "java.naming.ldap.attributes.binary"

    const-string v2, "krb5Key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public isEmptyAddressesAllowed()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.empty.addresses.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 221
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.forwardable.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 195
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "kdc.pa.enc.timestamp.required"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 247
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.postdate.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 234
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.proxiable.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 260
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    const-string v1, "tgs.renewable.allowed"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/apache/kerberos/service/KdcConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
