.class public Lorg/apache/kerberos/messages/components/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final AUTHENTICATOR_VNO:I = 0x5


# instance fields
.field private authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

.field private checksum:Lorg/apache/kerberos/messages/value/Checksum;

.field private clientMicroSecond:I

.field private clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

.field private clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private sequenceNumber:I

.field private subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

.field private versionNumber:I


# direct methods
.method public constructor <init>(ILjavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/Checksum;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/EncryptionKey;ILorg/apache/kerberos/messages/value/AuthorizationData;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lorg/apache/kerberos/messages/components/Authenticator;->versionNumber:I

    .line 54
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/Authenticator;->clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    .line 55
    iput-object p3, p0, Lorg/apache/kerberos/messages/components/Authenticator;->checksum:Lorg/apache/kerberos/messages/value/Checksum;

    .line 56
    iput p4, p0, Lorg/apache/kerberos/messages/components/Authenticator;->clientMicroSecond:I

    .line 57
    iput-object p5, p0, Lorg/apache/kerberos/messages/components/Authenticator;->clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 58
    iput-object p6, p0, Lorg/apache/kerberos/messages/components/Authenticator;->subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    .line 59
    iput p7, p0, Lorg/apache/kerberos/messages/components/Authenticator;->sequenceNumber:I

    .line 60
    iput-object p8, p0, Lorg/apache/kerberos/messages/components/Authenticator;->authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/Checksum;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/EncryptionKey;ILorg/apache/kerberos/messages/value/AuthorizationData;)V
    .locals 9

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 45
    invoke-direct/range {v0 .. v8}, Lorg/apache/kerberos/messages/components/Authenticator;-><init>(ILjavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/Checksum;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/EncryptionKey;ILorg/apache/kerberos/messages/value/AuthorizationData;)V

    return-void
.end method


# virtual methods
.method public getAuthorizationData()Lorg/apache/kerberos/messages/value/AuthorizationData;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->authorizationData:Lorg/apache/kerberos/messages/value/AuthorizationData;

    return-object v0
.end method

.method public getChecksum()Lorg/apache/kerberos/messages/value/Checksum;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->checksum:Lorg/apache/kerberos/messages/value/Checksum;

    return-object v0
.end method

.method public getClientMicroSecond()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->clientMicroSecond:I

    return v0
.end method

.method public getClientPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->clientPrincipal:Ljavax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->sequenceNumber:I

    return v0
.end method

.method public getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/kerberos/messages/components/Authenticator;->versionNumber:I

    return v0
.end method
