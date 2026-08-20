.class public Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;
.super Ljava/lang/Object;
.source "EncryptedTimeStamp.java"


# instance fields
.field private microSeconds:I

.field private timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/KerberosTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;->timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 31
    iput p2, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;->microSeconds:I

    return-void
.end method


# virtual methods
.method public getMicroSeconds()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;->microSeconds:I

    return v0
.end method

.method public getTimeStamp()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/EncryptedTimeStamp;->timeStamp:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method
