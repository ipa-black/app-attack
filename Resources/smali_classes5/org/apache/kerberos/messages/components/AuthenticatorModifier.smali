.class public Lorg/apache/kerberos/messages/components/AuthenticatorModifier;
.super Ljava/lang/Object;
.source "AuthenticatorModifier.java"


# instance fields
.field private _authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

.field private _checksum:Lorg/apache/kerberos/messages/value/Checksum;

.field private _clientMicroSecond:I

.field private _clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

.field private _clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _sequenceNumber:I

.field private _subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private _versionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    return-void
.end method


# virtual methods
.method public getAuthenticator()Lorg/apache/kerberos/messages/components/Authenticator;
    .locals 10

    .line 36
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->getKerberosPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v3

    .line 38
    new-instance v0, Lorg/apache/kerberos/messages/components/Authenticator;

    iget v2, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_versionNumber:I

    iget-object v4, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_checksum:Lorg/apache/kerberos/messages/value/Checksum;

    iget v5, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientMicroSecond:I

    iget-object v6, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v7, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    iget v8, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_sequenceNumber:I

    iget-object v9, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/kerberos/messages/components/Authenticator;-><init>(ILjavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/Checksum;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/EncryptionKey;ILorg/apache/kerberos/messages/value/AuthorizationData;)V

    return-object v0
.end method

.method public setAuthorizationData(Lorg/apache/kerberos/messages/value/AuthorizationData;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    return-void
.end method

.method public setChecksum(Lorg/apache/kerberos/messages/value/Checksum;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_checksum:Lorg/apache/kerberos/messages/value/Checksum;

    return-void
.end method

.method public setClientMicroSecond(I)V
    .locals 0

    .line 58
    iput p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientMicroSecond:I

    return-void
.end method

.method public setClientName(Lorg/apache/kerberos/messages/value/PrincipalName;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setPrincipalName(Lorg/apache/kerberos/messages/value/PrincipalName;)V

    return-void
.end method

.method public setClientRealm(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientModifier:Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;

    invoke-virtual {v0, p1}, Lorg/apache/kerberos/messages/value/KerberosPrincipalModifier;->setRealm(Ljava/lang/String;)V

    return-void
.end method

.method public setClientTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_sequenceNumber:I

    return-void
.end method

.method public setSubSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-void
.end method

.method public setVersionNumber(I)V
    .locals 0

    .line 43
    iput p1, p0, Lorg/apache/kerberos/messages/components/AuthenticatorModifier;->_versionNumber:I

    return-void
.end method
