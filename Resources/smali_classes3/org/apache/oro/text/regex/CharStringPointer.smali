.class final Lorg/apache/oro/text/regex/CharStringPointer;
.super Ljava/lang/Object;


# static fields
.field static final _END_OF_STRING:C = '\uffff'


# instance fields
.field _array:[C

.field _offset:I


# direct methods
.method constructor <init>([C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/oro/text/regex/CharStringPointer;-><init>([CI)V

    return-void
.end method

.method constructor <init>([CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iput p2, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    return-void
.end method


# virtual methods
.method _decrement()C
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_decrement(I)C

    move-result v0

    return v0
.end method

.method _decrement(I)C
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    :cond_0
    iget-object p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    aget-char p1, p1, v0

    return p1
.end method

.method _getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    array-length v0, v0

    return v0
.end method

.method _getOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    return v0
.end method

.method _getValue()C
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v0

    return v0
.end method

.method _getValue(I)C
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    array-length v1, v0

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    aget-char p1, v0, p1

    return p1

    :cond_0
    const p1, 0xffff

    return p1
.end method

.method _getValueRelative(I)C
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result p1

    return p1
.end method

.method _increment()C
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment(I)C

    move-result v0

    return v0
.end method

.method _increment(I)C
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    array-length p1, p1

    iput p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    const p1, 0xffff

    return p1

    :cond_0
    iget-object p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    aget-char p1, p1, v0

    return p1
.end method

.method _isAtEnd()Z
    .locals 2

    iget v0, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    iget-object v1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method _postDecrement()C
    .locals 1

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/CharStringPointer;->_decrement()C

    return v0
.end method

.method _postIncrement()C
    .locals 1

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    return v0
.end method

.method _setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_offset:I

    return-void
.end method

.method _toString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    array-length v2, v1

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
