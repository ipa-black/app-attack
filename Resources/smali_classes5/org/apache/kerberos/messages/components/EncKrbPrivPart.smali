.class public Lorg/apache/kerberos/messages/components/EncKrbPrivPart;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "EncKrbPrivPart.java"


# instance fields
.field private _recipientAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field private _senderAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field private _sequenceNumber:Ljava/lang/Integer;

.field private _timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _usec:Ljava/lang/Integer;

.field private _userData:[B


# direct methods
.method public constructor <init>([BLorg/apache/kerberos/messages/value/KerberosTime;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/apache/kerberos/messages/value/HostAddress;Lorg/apache/kerberos/messages/value/HostAddress;)V
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->ENC_PRIV_PART:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 39
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_userData:[B

    .line 40
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 41
    iput-object p3, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_usec:Ljava/lang/Integer;

    .line 42
    iput-object p4, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_sequenceNumber:Ljava/lang/Integer;

    .line 43
    iput-object p5, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_senderAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    .line 44
    iput-object p6, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_recipientAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-void
.end method


# virtual methods
.method public getMicroSecond()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_usec:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecipientAddress()Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_recipientAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-object v0
.end method

.method public getSenderAddress()Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_senderAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-object v0
.end method

.method public getSequenceNumber()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_sequenceNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimestamp()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncKrbPrivPart;->_userData:[B

    return-object v0
.end method
