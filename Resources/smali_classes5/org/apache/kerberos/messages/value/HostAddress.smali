.class public Lorg/apache/kerberos/messages/value/HostAddress;
.super Ljava/lang/Object;
.source "HostAddress.java"


# static fields
.field public static final ADDR_LEN_APPLETALK:I = 0x3

.field public static final ADDR_LEN_CHAOS:I = 0x2

.field public static final ADDR_LEN_DECNET:I = 0x2

.field public static final ADDR_LEN_INET:I = 0x4

.field public static final ADDR_LEN_OSI:I = 0x0

.field public static final ADDR_LEN_XNS:I = 0x6

.field private static localInetAddress:[B


# instance fields
.field private _address:[B

.field private _addressType:Lorg/apache/kerberos/messages/value/HostAddressType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    sget-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_INET:Lorg/apache/kerberos/messages/value/HostAddressType;

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_addressType:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 50
    invoke-static {}, Lorg/apache/kerberos/messages/value/HostAddress;->getLocalInetAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_INET:Lorg/apache/kerberos/messages/value/HostAddressType;

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_addressType:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 63
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 64
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    const/4 v1, 0x0

    .line 65
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/HostAddressType;[B)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_addressType:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 58
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    return-void
.end method

.method public static getLocalInetAddress()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/apache/kerberos/messages/value/HostAddress;->localInetAddress:[B

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddress;->localInetAddress:[B

    .line 87
    :cond_0
    sget-object v0, Lorg/apache/kerberos/messages/value/HostAddress;->localInetAddress:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 88
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public equals(Lorg/apache/kerberos/messages/value/HostAddress;)Z
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_addressType:Lorg/apache/kerberos/messages/value/HostAddressType;

    iget-object v1, p1, Lorg/apache/kerberos/messages/value/HostAddress;->_addressType:Lorg/apache/kerberos/messages/value/HostAddressType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    if-eqz v1, :cond_5

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p1, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    .line 73
    iget-object v1, p1, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    if-eqz v1, :cond_4

    .line 74
    array-length v0, v0

    array-length v1, v1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    move v0, v2

    .line 76
    :goto_0
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 77
    aget-byte v1, v1, v0

    iget-object v3, p1, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public getAddress()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_address:[B

    return-object v0
.end method

.method public getAddressType()Lorg/apache/kerberos/messages/value/HostAddressType;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddress;->_addressType:Lorg/apache/kerberos/messages/value/HostAddressType;

    return-object v0
.end method
