.class public final Lorg/apache/oro/text/awk/AwkMatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/PatternMatcher;


# instance fields
.field private __awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

.field private __beginOffset:I

.field private __lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

.field private __lastMatchedBufferOffset:I

.field private __offsets:[I

.field private __scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

.field private __streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    new-instance v0, Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-direct {v0}, Lorg/apache/oro/text/awk/AwkStreamInput;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    return-void
.end method

.method private __streamMatchPrefix()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v2, v2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget v3, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    move v5, v2

    move v6, v3

    move v7, v4

    move v2, v0

    :cond_0
    :goto_0
    if-lt v0, v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object v8, v8, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    add-int/lit8 v9, v0, 0x1

    aget-char v0, v8, v0

    iget-object v8, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget v8, v8, Lorg/apache/oro/text/awk/AwkPattern;->_numStates:I

    if-ge v6, v8, :cond_7

    iget-object v8, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    invoke-virtual {v8, v6}, Lorg/apache/oro/text/awk/AwkPattern;->_getStateArray(I)[I

    move-result-object v8

    aget v10, v8, v0

    if-nez v10, :cond_2

    iget-object v10, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    invoke-virtual {v10, v6, v0, v8}, Lorg/apache/oro/text/awk/AwkPattern;->_createNewState(II[I)V

    aget v0, v8, v0

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    if-ne v6, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object v0, v0, Lorg/apache/oro/text/awk/AwkPattern;->_endStates:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v7, v9

    :cond_4
    if-ne v9, v5, :cond_6

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {v0, v2}, Lorg/apache/oro/text/awk/AwkStreamInput;->_reallocate(I)I

    move-result v0

    iget v5, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v5, v5, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget v8, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    add-int/2addr v5, v8

    if-eq v0, v5, :cond_0

    if-eq v7, v4, :cond_5

    sub-int/2addr v7, v2

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    move v0, v9

    goto :goto_0

    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aput v2, v0, v1

    add-int/lit8 v5, v7, -0x1

    aput v5, v0, v3

    if-ne v7, v4, :cond_8

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-boolean v0, v0, Lorg/apache/oro/text/awk/AwkPattern;->_matchesNullString:Z

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-boolean v0, v0, Lorg/apache/oro/text/awk/AwkPattern;->_hasEndAnchor:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-boolean v0, v0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v0, v0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    add-int/2addr v0, v1

    if-ge v7, v0, :cond_a

    :cond_9
    return v4

    :cond_a
    sub-int/2addr v7, v2

    return v7
.end method


# virtual methods
.method _search()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    :goto_0
    iget v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v2, v2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget v3, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-boolean v1, v1, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {v1}, Lorg/apache/oro/text/awk/AwkStreamInput;->read()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput v3, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    :cond_2
    iget v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    :goto_1
    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v2, v2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget v4, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    add-int/2addr v2, v4

    if-lt v1, v2, :cond_3

    iput v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aput v1, v2, v3

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object v2, v2, Lorg/apache/oro/text/awk/AwkPattern;->_fastMap:[Z

    iget-object v4, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object v4, v4, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    aget-char v4, v4, v1

    aget-boolean v2, v2, v4

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->__streamMatchPrefix()I

    move-result v2

    const/4 v5, -0x1

    if-le v2, v5, :cond_5

    new-instance v0, Lorg/apache/oro/text/awk/AwkMatchResult;

    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object v5, v5, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object v6, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget v6, v6, v3

    invoke-direct {v1, v5, v6, v2}, Ljava/lang/String;-><init>([CII)V

    iget-object v5, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget v5, v5, v3

    invoke-direct {v0, v1, v5}, Lorg/apache/oro/text/awk/AwkMatchResult;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    if-lez v2, :cond_4

    aget v0, v0, v4

    goto :goto_2

    :cond_4
    aget v0, v0, v3

    :goto_2
    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    return-void

    :cond_5
    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-boolean v2, v2, Lorg/apache/oro/text/awk/AwkPattern;->_matchesNullString:Z

    if-eqz v2, :cond_6

    new-instance v0, Lorg/apache/oro/text/awk/AwkMatchResult;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/apache/oro/text/awk/AwkMatchResult;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    add-int/2addr v1, v4

    iput v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    return-void

    :cond_6
    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget v1, v1, v3

    add-int/2addr v1, v4

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/awk/AwkMatcher;->contains([CLorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/apache/oro/text/awk/AwkStreamInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-boolean p2, p2, Lorg/apache/oro/text/awk/AwkPattern;->_hasBeginAnchor:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/oro/text/awk/AwkStreamInput;->read()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p2, Lorg/apache/oro/text/awk/AwkPattern;->_fastMap:[Z

    iget-object v2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    aget-char v2, v2, v0

    aget-boolean p2, p2, v2

    if-nez p2, :cond_1

    iput-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_0
    iput-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_1
    iget p2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_currentOffset:I

    iput p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    invoke-virtual {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->_search()V

    iget p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    iput p2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_currentOffset:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    if-eqz p2, :cond_2

    iget p1, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    invoke-virtual {p2, p1}, Lorg/apache/oro/text/awk/AwkMatchResult;->_incrementMatchBeginOffset(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public contains(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 3

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBuffer()[C

    move-result-object v0

    iput-object v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBeginOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getCurrentOffset()I

    move-result p2

    iput p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-boolean p2, p2, Lorg/apache/oro/text/awk/AwkPattern;->_hasBeginAnchor:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iget v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p2, Lorg/apache/oro/text/awk/AwkPattern;->_fastMap:[Z

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object v1, v1, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    aget-char v1, v1, v2

    aget-boolean p2, p2, v1

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_1
    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->length()I

    move-result v1

    iput v1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->_search()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    invoke-virtual {p1, p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setCurrentOffset(I)V

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/oro/text/awk/AwkMatchResult;->beginOffset(I)I

    move-result p2

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    invoke-virtual {v2, v0}, Lorg/apache/oro/text/awk/AwkMatchResult;->endOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setMatchOffsets(II)V

    return v1
.end method

.method public contains([CLorg/apache/oro/text/regex/Pattern;)Z
    .locals 2

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-boolean p2, p2, Lorg/apache/oro/text/awk/AwkPattern;->_hasBeginAnchor:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p2, Lorg/apache/oro/text/awk/AwkPattern;->_fastMap:[Z

    aget-char v1, p1, v0

    aget-boolean p2, p2, v1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_0
    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    array-length p1, p1

    iput p1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iput v0, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchedBufferOffset:I

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->_search()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    if-eqz p1, :cond_1

    move v0, p2

    :cond_1
    return v0
.end method

.method public getMatch()Lorg/apache/oro/text/regex/MatchResult;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return-object v0
.end method

.method public matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/awk/AwkMatcher;->matches([CLorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    return p1
.end method

.method public matches(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 5

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBuffer()[C

    move-result-object v0

    iput-object v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->length()I

    move-result v0

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBeginOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBeginOffset()I

    move-result p1

    const/4 v0, 0x0

    aput p1, p2, v0

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->__streamMatchPrefix()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v1, v1, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_0
    new-instance p1, Lorg/apache/oro/text/awk/AwkMatchResult;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object v2, v2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget v4, v4, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iget-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget v0, v2, v0

    invoke-direct {p1, v1, v0}, Lorg/apache/oro/text/awk/AwkMatchResult;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return p2
.end method

.method public matches([CLorg/apache/oro/text/regex/Pattern;)Z
    .locals 4

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    array-length v0, p1

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aput v0, p2, v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->__streamMatchPrefix()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, -0x1

    :goto_0
    array-length v2, p1

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_0
    new-instance v2, Lorg/apache/oro/text/awk/AwkMatchResult;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v2, v3, v0}, Lorg/apache/oro/text/awk/AwkMatchResult;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v1
.end method

.method public matchesPrefix(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/oro/text/awk/AwkMatcher;->matchesPrefix([CLorg/apache/oro/text/regex/Pattern;I)Z

    move-result p1

    return p1
.end method

.method public matchesPrefix(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 5

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBuffer()[C

    move-result-object v0

    iput-object v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getBeginOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getCurrentOffset()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->length()I

    move-result p1

    iput p1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->__streamMatchPrefix()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v1

    :cond_0
    new-instance v0, Lorg/apache/oro/text/awk/AwkMatchResult;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object v3, v3, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object v4, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget v4, v4, v1

    invoke-direct {v2, v3, v4, p1}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aget p1, p1, v1

    invoke-direct {v0, v2, p1}, Lorg/apache/oro/text/awk/AwkMatchResult;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return p2
.end method

.method public matchesPrefix([CLorg/apache/oro/text/regex/Pattern;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/oro/text/awk/AwkMatcher;->matchesPrefix([CLorg/apache/oro/text/regex/Pattern;I)Z

    move-result p1

    return p1
.end method

.method public matchesPrefix([CLorg/apache/oro/text/regex/Pattern;I)Z
    .locals 4

    check-cast p2, Lorg/apache/oro/text/awk/AwkPattern;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__awkPattern:Lorg/apache/oro/text/awk/AwkPattern;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    array-length v0, p1

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__beginOffset:I

    iput v0, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__scratchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iput-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__streamSearchBuffer:Lorg/apache/oro/text/awk/AwkStreamInput;

    iget-object p2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__offsets:[I

    aput p3, p2, v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkMatcher;->__streamMatchPrefix()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, -0x1

    :goto_0
    if-gez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v0

    :cond_0
    new-instance v2, Lorg/apache/oro/text/awk/AwkMatchResult;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v2, v3, p3}, Lorg/apache/oro/text/awk/AwkMatchResult;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/apache/oro/text/awk/AwkMatcher;->__lastMatchResult:Lorg/apache/oro/text/awk/AwkMatchResult;

    return v1
.end method
