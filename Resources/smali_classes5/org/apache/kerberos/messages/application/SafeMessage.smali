.class public Lorg/apache/kerberos/messages/application/SafeMessage;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "SafeMessage.java"


# instance fields
.field private _cksum:Lorg/apache/kerberos/messages/value/Checksum;

.field private _safeBody:Lorg/apache/kerberos/messages/application/SafeBody;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/application/SafeBody;Lorg/apache/kerberos/messages/value/Checksum;)V
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_SAFE:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 29
    iput-object p1, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    .line 30
    iput-object p2, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_cksum:Lorg/apache/kerberos/messages/value/Checksum;

    return-void
.end method


# virtual methods
.method public getCksum()Lorg/apache/kerberos/messages/value/Checksum;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_cksum:Lorg/apache/kerberos/messages/value/Checksum;

    return-object v0
.end method

.method public getRAddress()Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/application/SafeBody;->getRAddress()Lorg/apache/kerberos/messages/value/HostAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSAddress()Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/application/SafeBody;->getSAddress()Lorg/apache/kerberos/messages/value/HostAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSeqNumber()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/application/SafeBody;->getSeqNumber()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/application/SafeBody;->getTimestamp()Lorg/apache/kerberos/messages/value/KerberosTime;

    move-result-object v0

    return-object v0
.end method

.method public getUsec()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/application/SafeBody;->getUsec()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeMessage;->_safeBody:Lorg/apache/kerberos/messages/application/SafeBody;

    invoke-virtual {v0}, Lorg/apache/kerberos/messages/application/SafeBody;->getUserData()[B

    move-result-object v0

    return-object v0
.end method
