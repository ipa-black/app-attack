.class public Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;
.super Ljava/lang/Object;
.source "PrincipalStoreEntryModifier.java"


# instance fields
.field private _commonName:Ljava/lang/String;

.field private _encryptionType:I

.field private _kdcFlags:I

.field private _key:[B

.field private _keyVersionNumber:I

.field private _maxLife:I

.field private _maxRenew:I

.field private _passwordEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private _realmName:Ljava/lang/String;

.field private _validEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _validStart:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private samType:Lorg/apache/kerberos/messages/value/SamType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntry()Lorg/apache/kerberos/store/PrincipalStoreEntry;
    .locals 15

    .line 46
    new-instance v14, Lorg/apache/kerberos/store/PrincipalStoreEntry;

    iget-object v1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_commonName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    iget v3, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_keyVersionNumber:I

    iget-object v4, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_validStart:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v5, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_validEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v6, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_passwordEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget v7, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_maxLife:I

    iget v8, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_maxRenew:I

    iget v9, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_kdcFlags:I

    iget v10, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_encryptionType:I

    iget-object v11, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_key:[B

    iget-object v12, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_realmName:Ljava/lang/String;

    iget-object v13, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->samType:Lorg/apache/kerberos/messages/value/SamType;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lorg/apache/kerberos/store/PrincipalStoreEntry;-><init>(Ljava/lang/String;Ljavax/security/auth/kerberos/KerberosPrincipal;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;IIII[BLjava/lang/String;Lorg/apache/kerberos/messages/value/SamType;)V

    return-object v14
.end method

.method public setCommonName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_commonName:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_encryptionType:I

    return-void
.end method

.method public setKDCFlags(I)V
    .locals 0

    .line 58
    iput p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_kdcFlags:I

    return-void
.end method

.method public setKey([B)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_key:[B

    return-void
.end method

.method public setKeyVersionNumber(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_keyVersionNumber:I

    return-void
.end method

.method public setMaxLife(I)V
    .locals 0

    .line 67
    iput p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_maxLife:I

    return-void
.end method

.method public setMaxRenew(I)V
    .locals 0

    .line 70
    iput p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_maxRenew:I

    return-void
.end method

.method public setPasswordEnd(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_passwordEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setPrincipal(Ljavax/security/auth/kerberos/KerberosPrincipal;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_principal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-void
.end method

.method public setRealmName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_realmName:Ljava/lang/String;

    return-void
.end method

.method public setSamType(Lorg/apache/kerberos/messages/value/SamType;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->samType:Lorg/apache/kerberos/messages/value/SamType;

    return-void
.end method

.method public setValidEnd(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_validEnd:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setValidStart(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/apache/kerberos/store/PrincipalStoreEntryModifier;->_validStart:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method
