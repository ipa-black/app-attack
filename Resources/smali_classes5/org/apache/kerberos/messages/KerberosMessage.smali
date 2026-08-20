.class public Lorg/apache/kerberos/messages/KerberosMessage;
.super Ljava/lang/Object;
.source "KerberosMessage.java"


# static fields
.field public static final PVNO:I = 0x5


# instance fields
.field private _messageType:Lorg/apache/kerberos/messages/MessageType;

.field private _protocolVersionNumber:I


# direct methods
.method public constructor <init>(ILorg/apache/kerberos/messages/MessageType;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/apache/kerberos/messages/KerberosMessage;->_protocolVersionNumber:I

    .line 33
    iput-object p2, p0, Lorg/apache/kerberos/messages/KerberosMessage;->_messageType:Lorg/apache/kerberos/messages/MessageType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/MessageType;)V
    .locals 1

    const/4 v0, 0x5

    .line 28
    invoke-direct {p0, v0, p1}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(ILorg/apache/kerberos/messages/MessageType;)V

    return-void
.end method


# virtual methods
.method public getMessageType()Lorg/apache/kerberos/messages/MessageType;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/kerberos/messages/KerberosMessage;->_messageType:Lorg/apache/kerberos/messages/MessageType;

    return-object v0
.end method

.method public getProtocolVersionNumber()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/apache/kerberos/messages/KerberosMessage;->_protocolVersionNumber:I

    return v0
.end method

.method public setMessageType(Lorg/apache/kerberos/messages/MessageType;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/apache/kerberos/messages/KerberosMessage;->_messageType:Lorg/apache/kerberos/messages/MessageType;

    return-void
.end method

.method public setProtocolVersionNumber(I)V
    .locals 0

    .line 46
    iput p1, p0, Lorg/apache/kerberos/messages/KerberosMessage;->_protocolVersionNumber:I

    return-void
.end method
