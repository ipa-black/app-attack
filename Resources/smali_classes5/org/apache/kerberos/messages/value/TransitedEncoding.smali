.class public Lorg/apache/kerberos/messages/value/TransitedEncoding;
.super Ljava/lang/Object;
.source "TransitedEncoding.java"


# instance fields
.field private _contents:[B

.field private _type:Lorg/apache/kerberos/messages/value/TransitedEncodingType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->NULL:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/TransitedEncoding;->_type:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/TransitedEncoding;->_contents:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/TransitedEncodingType;[B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/TransitedEncoding;->_type:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    .line 31
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/TransitedEncoding;->_contents:[B

    return-void
.end method


# virtual methods
.method public getContents()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/TransitedEncoding;->_contents:[B

    return-object v0
.end method

.method public getType()Lorg/apache/kerberos/messages/value/TransitedEncodingType;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/TransitedEncoding;->_type:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    return-object v0
.end method
