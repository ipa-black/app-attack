.class public Lorg/apache/kerberos/messages/value/PreAuthenticationData;
.super Ljava/lang/Object;
.source "PreAuthenticationData.java"


# instance fields
.field private dataType:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field private dataValue:[B


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->dataType:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 29
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->dataValue:[B

    return-void
.end method


# virtual methods
.method public getDataType()Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->dataType:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    return-object v0
.end method

.method public getDataValue()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationData;->dataValue:[B

    return-object v0
.end method
