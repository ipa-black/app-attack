.class public Lorg/apache/kerberos/messages/components/EncApRepPartModifier;
.super Ljava/lang/Object;
.source "EncApRepPartModifier.java"


# instance fields
.field private _clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

.field private _cusec:I

.field private _sequenceNumber:Ljava/lang/Integer;

.field private _subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncApRepPart()Lorg/apache/kerberos/messages/components/EncApRepPart;
    .locals 5

    .line 30
    new-instance v0, Lorg/apache/kerberos/messages/components/EncApRepPart;

    iget-object v1, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget v2, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_cusec:I

    iget-object v3, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    iget-object v4, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_sequenceNumber:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/kerberos/messages/components/EncApRepPart;-><init>(Lorg/apache/kerberos/messages/value/KerberosTime;ILorg/apache/kerberos/messages/value/EncryptionKey;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setClientMicroSecond(I)V
    .locals 0

    .line 37
    iput p1, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_cusec:I

    return-void
.end method

.method public setClientTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_clientTime:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setSequenceNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_sequenceNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setSubSessionKey(Lorg/apache/kerberos/messages/value/EncryptionKey;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/apache/kerberos/messages/components/EncApRepPartModifier;->_subSessionKey:Lorg/apache/kerberos/messages/value/EncryptionKey;

    return-void
.end method
