.class public Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;
.super Ljava/lang/Object;
.source "PreAuthenticationDataModifier.java"


# instance fields
.field private dataType:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field private dataValue:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreAuthenticationData()Lorg/apache/kerberos/messages/value/PreAuthenticationData;
    .locals 3

    .line 28
    new-instance v0, Lorg/apache/kerberos/messages/value/PreAuthenticationData;

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->dataType:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    iget-object v2, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->dataValue:[B

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationData;-><init>(Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;[B)V

    return-object v0
.end method

.method public setDataType(Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->dataType:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    return-void
.end method

.method public setDataValue([B)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataModifier;->dataValue:[B

    return-void
.end method
