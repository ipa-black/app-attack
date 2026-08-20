.class public Lorg/apache/kerberos/messages/components/EncKrbCredPart;
.super Ljava/lang/Object;
.source "EncKrbCredPart.java"


# instance fields
.field public _nonce:Ljava/lang/Integer;

.field public _rAddress:Lorg/apache/kerberos/messages/value/HostAddresses;

.field public _sAddress:Lorg/apache/kerberos/messages/value/HostAddress;

.field public _ticketInfo:[Lorg/apache/kerberos/messages/value/KrbCredInfo;

.field public _timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;

.field public _usec:Ljava/lang/Integer;


# direct methods
.method public constructor <init>([Lorg/apache/kerberos/messages/value/KrbCredInfo;Lorg/apache/kerberos/messages/value/KerberosTime;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/apache/kerberos/messages/value/HostAddress;Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncKrbCredPart;->_ticketInfo:[Lorg/apache/kerberos/messages/value/KrbCredInfo;

    .line 41
    iput-object p4, p0, Lorg/apache/kerberos/messages/components/EncKrbCredPart;->_nonce:Ljava/lang/Integer;

    .line 42
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/EncKrbCredPart;->_timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 43
    iput-object p3, p0, Lorg/apache/kerberos/messages/components/EncKrbCredPart;->_usec:Ljava/lang/Integer;

    .line 44
    iput-object p5, p0, Lorg/apache/kerberos/messages/components/EncKrbCredPart;->_sAddress:Lorg/apache/kerberos/messages/value/HostAddress;

    .line 45
    iput-object p6, p0, Lorg/apache/kerberos/messages/components/EncKrbCredPart;->_rAddress:Lorg/apache/kerberos/messages/value/HostAddresses;

    return-void
.end method
