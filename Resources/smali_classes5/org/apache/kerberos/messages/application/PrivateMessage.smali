.class public Lorg/apache/kerberos/messages/application/PrivateMessage;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "PrivateMessage.java"


# instance fields
.field private _encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_PRIV:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_PRIV:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 33
    iput-object p1, p0, Lorg/apache/kerberos/messages/application/PrivateMessage;->_encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method


# virtual methods
.method public getEncryptedPart()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/PrivateMessage;->_encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method

.method public setEncryptedPart(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/kerberos/messages/application/PrivateMessage;->_encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method
