.class public Lorg/apache/kerberos/messages/application/SafeBody;
.super Ljava/lang/Object;
.source "SafeBody.java"


# instance fields
.field private _rAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field private _sAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field private _seqNumber:Ljava/lang/Integer;

.field private _timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _usec:Ljava/lang/Integer;

.field private _userData:[B


# direct methods
.method public constructor <init>([BLorg/apache/kerberos/messages/value/KerberosTime;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/apache/kerberos/messages/value/HostAddress;Lorg/apache/kerberos/messages/value/HostAddress;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_userData:[B

    .line 37
    iput-object p2, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 38
    iput-object p3, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_usec:Ljava/lang/Integer;

    .line 39
    iput-object p4, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_seqNumber:Ljava/lang/Integer;

    .line 40
    iput-object p5, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_sAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    .line 41
    iput-object p6, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_rAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-void
.end method


# virtual methods
.method public getRAddress()Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_rAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-object v0
.end method

.method public getSAddress()Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_sAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    return-object v0
.end method

.method public getSeqNumber()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_seqNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimestamp()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_timestamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method

.method public getUsec()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_usec:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/SafeBody;->_userData:[B

    return-object v0
.end method
