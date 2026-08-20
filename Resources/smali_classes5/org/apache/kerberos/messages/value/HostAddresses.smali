.class public Lorg/apache/kerberos/messages/value/HostAddresses;
.super Ljava/lang/Object;
.source "HostAddresses.java"


# instance fields
.field private _addresses:[Lorg/apache/kerberos/messages/value/HostAddress;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lorg/apache/kerberos/messages/value/HostAddress;

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    .line 32
    new-instance v1, Lorg/apache/kerberos/messages/value/HostAddress;

    invoke-direct {v1}, Lorg/apache/kerberos/messages/value/HostAddress;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>([Lorg/apache/kerberos/messages/value/HostAddress;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/kerberos/messages/value/HostAddress;)Z
    .locals 4

    .line 36
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 37
    :goto_0
    iget-object v2, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 38
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/kerberos/messages/value/HostAddress;->equals(Lorg/apache/kerberos/messages/value/HostAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Lorg/apache/kerberos/messages/value/HostAddresses;)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p1, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p1, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    if-nez v2, :cond_2

    :cond_1
    return v1

    :cond_2
    if-eqz v0, :cond_5

    .line 48
    iget-object v2, p1, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    if-eqz v2, :cond_5

    .line 49
    array-length v0, v0

    array-length v2, v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    move v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 52
    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/kerberos/messages/value/HostAddress;->equals(Lorg/apache/kerberos/messages/value/HostAddress;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public getAddresses()[Lorg/apache/kerberos/messages/value/HostAddress;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/HostAddresses;->_addresses:[Lorg/apache/kerberos/messages/value/HostAddress;

    return-object v0
.end method
