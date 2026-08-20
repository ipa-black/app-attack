.class public Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;
.super Ljava/lang/Object;
.source "EncKrbPrivPartModifier.java"


# instance fields
.field private _recipientAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field private _senderAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field private _sequenceNumber:Ljava/lang/Integer;

.field private _timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _usec:Ljava/lang/Integer;

.field private _userData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncKrbPrivPart()Lorg/apache/kerberos/messages/components/EncKrbPrivPart;
    .locals 8

    .line 32
    new-instance v7, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;

    iget-object v1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_userData:[B

    iget-object v2, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget-object v3, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_usec:Ljava/lang/Integer;

    iget-object v4, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_sequenceNumber:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_senderAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    iget-object v6, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_recipientAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;-><init>([BLorg/apache/kerberos/messages/value/KerberosTime;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/apache/kerberos/messages/value/HostAddress;Lorg/apache/kerberos/messages/value/HostAddress;)V

    return-object v7
.end method

.method public setMicroSecond(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_usec:Ljava/lang/Integer;

    return-void
.end method

.method public setRecipientAddress(Lorg/apache/kerberos/messages/value/HostAddress;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_recipientAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-void
.end method

.method public setSenderAddress(Lorg/apache/kerberos/messages/value/HostAddress;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_senderAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-void
.end method

.method public setSequenceNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_sequenceNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setTimestamp(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setUserData([B)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPartModifier;->_userData:[B

    return-void
.end method
