.class public Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;
.super Ljava/lang/Object;
.source "AuthorizationDataEntry.java"


# instance fields
.field private _authorizationData:[B

.field private _authorizationDataType:Lorg/apache/kerberos/messages/value/AuthorizationType;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/AuthorizationType;[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;->_authorizationDataType:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 29
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;->_authorizationData:[B

    return-void
.end method


# virtual methods
.method public getAuthorizationData()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;->_authorizationData:[B

    return-object v0
.end method

.method public getAuthorizationDataType()Lorg/apache/kerberos/messages/value/AuthorizationType;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;->_authorizationDataType:Lorg/apache/kerberos/messages/value/AuthorizationType;

    return-object v0
.end method
