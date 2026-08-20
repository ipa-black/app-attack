.class public Lorg/apache/kerberos/messages/application/ApplicationReply;
.super Lorg/apache/kerberos/messages/KerberosMessage;
.source "ApplicationReply.java"


# instance fields
.field private _encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_AP_REP:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KerberosMessage;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    .line 28
    iput-object p1, p0, Lorg/apache/kerberos/messages/application/ApplicationReply;->_encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-void
.end method


# virtual methods
.method public getEncPart()Lorg/apache/kerberos/messages/value/EncryptedData;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/apache/kerberos/messages/application/ApplicationReply;->_encryptedPart:Lorg/apache/kerberos/messages/value/EncryptedData;

    return-object v0
.end method
