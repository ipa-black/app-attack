.class public Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;
.super Ljava/lang/Object;
.source "EncryptedTimeStampModifier.java"


# instance fields
.field private microSecond:I

.field private timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedTimestamp()Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;
    .locals 3

    .line 28
    new-instance v0, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    iget v2, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->microSecond:I

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;-><init>(Lorg/apache/kerberos/messages/value/KerberosTime;I)V

    return-object v0
.end method

.method public setKerberosTime(Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public setMicroSecond(I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStampModifier;->microSecond:I

    return-void
.end method
