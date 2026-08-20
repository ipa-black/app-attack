.class public Lorg/apache/kerberos/messages/components/EncApRepPart;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "EncApRepPart.java"


# instance fields
.field private _clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _cusec:I

.field private _sequenceNumber:Ljava/lang/Integer;

.field private _subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/KerberosTime;ILorg/apache/kerberos/messages/value/EncryptionKey;Ljava/lang/Integer;)V
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->ENC_AP_REP_PART:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 37
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 38
    iput p2, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_cusec:I

    .line 39
    iput-object p3, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    .line 40
    iput-object p4, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_sequenceNumber:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getClientMicroSecond()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_cusec:I

    return v0
.end method

.method public getClientTime()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getSequenceNumber()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_sequenceNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubSessionKey()Lorg/apache/kerberos/messages/value/EncryptionKey;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/kerberos/messages/components/EncApRepPart;->_subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-object v0
.end method
