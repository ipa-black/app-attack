.class public abstract Lorg/apache/kerberos/messages/value/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private _maxSize:I

.field private _options:Ljava/util/BitSet;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/apache/kerberos/messages/value/Options;->_maxSize:I

    .line 28
    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Lorg/apache/kerberos/messages/value/Options;->_maxSize:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lorg/apache/kerberos/messages/value/Options;->_options:Ljava/util/BitSet;

    return-void
.end method

.method private reversePosition(I)I
    .locals 1

    .line 71
    iget v0, p0, Lorg/apache/kerberos/messages/value/Options;->_maxSize:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public clear(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/Options;->_options:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public get(I)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/Options;->_options:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 7

    .line 53
    iget v0, p0, Lorg/apache/kerberos/messages/value/Options;->_maxSize:I

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 54
    :goto_0
    iget v3, p0, Lorg/apache/kerberos/messages/value/Options;->_maxSize:I

    if-ge v2, v3, :cond_1

    .line 55
    iget-object v3, p0, Lorg/apache/kerberos/messages/value/Options;->_options:Ljava/util/BitSet;

    invoke-direct {p0, v2}, Lorg/apache/kerberos/messages/value/Options;->reversePosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    div-int/lit8 v3, v2, 0x8

    sub-int v3, v0, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v5, v1, v3

    rem-int/lit8 v6, v2, 0x8

    shl-int/2addr v4, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public match(Lorg/apache/kerberos/messages/value/Options;I)Z
    .locals 0

    .line 32
    invoke-virtual {p1, p2}, Lorg/apache/kerberos/messages/value/Options;->get(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Lorg/apache/kerberos/messages/value/Options;->get(I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/Options;->_options:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method protected setBytes([B)V
    .locals 4

    const/4 v0, 0x0

    .line 63
    :goto_0
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_1

    .line 64
    array-length v1, p1

    div-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    rem-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 65
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/Options;->_options:Ljava/util/BitSet;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;->reversePosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
