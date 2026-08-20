.class public Lorg/apache/kerberos/store/PrincipalStoreEntry;
.super Ljava/lang/Object;
.source "PrincipalStoreEntry.java"


# instance fields
.field private _commonName:Ljava/lang/String;

.field private _kdcFlags:I

.field private _key:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private _maxLife:I

.field private _maxRenew:I

.field private _passwordEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _realmName:Ljava/lang/String;

.field private _validEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _validStart:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private samType:Lorg/apache/kerberos/messages/value/SamType;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/security/auth/kerberos/KerberosPrincipal;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;IIII[BLjava/lang/String;Lorg/apache/kerberos/messages/value/SamType;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_commonName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 51
    iput-object p4, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_validStart:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 52
    iput-object p5, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_validEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 53
    iput-object p6, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_passwordEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 54
    iput p7, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_maxLife:I

    .line 55
    iput p8, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_maxRenew:I

    .line 56
    iput p9, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_kdcFlags:I

    .line 57
    iput-object p12, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_realmName:Ljava/lang/String;

    .line 59
    iput-object p13, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->samType:Lorg/apache/kerberos/messages/value/SamType;

    .line 61
    new-instance p1, Lorg/apache/kerberos/messages/value/EncryptionKey;

    invoke-static {p10}, Lorg/apache/kerberos/crypto/encryption/EncryptionType;->getTypeByOrdinal(I)Lorg/apache/kerberos/crypto/encryption/EncryptionType;

    move-result-object p2

    invoke-direct {p1, p2, p11, p3}, Lorg/apache/kerberos/messages/value/EncryptionKey;-><init>(Lorg/apache/kerberos/crypto/encryption/EncryptionType;[BI)V

    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-void
.end method


# virtual methods
.method public getCommonName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_commonName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_key:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-object v0
.end method

.method public getKDCFlags()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_kdcFlags:I

    return v0
.end method

.method public getMaxLife()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_maxLife:I

    return v0
.end method

.method public getMaxRenew()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_maxRenew:I

    return v0
.end method

.method public getPasswordEnd()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_passwordEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getRealmName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_realmName:Ljava/lang/String;

    return-object v0
.end method

.method public getSamType()Lorg/apache/kerberos/messages/value/SamType;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->samType:Lorg/apache/kerberos/messages/value/SamType;

    return-object v0
.end method

.method public getValidEnd()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_validEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getValidStart()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/kerberos/store/PrincipalStoreEntry;->_validStart:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method
