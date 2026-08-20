.class public final Lorg/apache/oro/text/regex/PatternMatcherInput;
.super Ljava/lang/Object;


# instance fields
.field _beginOffset:I

.field _currentOffset:I

.field _endOffset:I

.field _matchBeginOffset:I

.field _matchEndOffset:I

.field _originalBuffer:[C

.field _originalCharInput:[C

.field _originalStringInput:Ljava/lang/String;

.field _toLowerBuffer:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/oro/text/regex/PatternMatcherInput;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchBeginOffset:I

    iput v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchEndOffset:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setInput(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/oro/text/regex/PatternMatcherInput;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchBeginOffset:I

    iput v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchEndOffset:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setInput([CII)V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public endOfInput()Z
    .locals 2

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    iget v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBeginOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    return v0
.end method

.method public getBuffer()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    return-object v0
.end method

.method public getCurrentOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    return v0
.end method

.method public getEndOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    return v0
.end method

.method public getInput()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalStringInput:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalCharInput:[C

    :cond_0
    return-object v0
.end method

.method public getMatchBeginOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchBeginOffset:I

    return v0
.end method

.method public getMatchEndOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchEndOffset:I

    return v0
.end method

.method public length()I
    .locals 2

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    iget v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public match()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchBeginOffset:I

    iget v3, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchEndOffset:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public postMatch()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchEndOffset:I

    iget v3, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public preMatch()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    iget v3, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchBeginOffset:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setBeginOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setMatchOffsets(II)V

    return-void
.end method

.method public setEndOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setInput(Ljava/lang/String;II)V

    return-void
.end method

.method public setInput(Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalStringInput:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalCharInput:[C

    iput-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setCurrentOffset(I)V

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setBeginOffset(I)V

    iget p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setEndOffset(I)V

    return-void
.end method

.method public setInput([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setInput([CII)V

    return-void
.end method

.method public setInput([CII)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalStringInput:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    iput-object p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalCharInput:[C

    iput-object p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setCurrentOffset(I)V

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setBeginOffset(I)V

    iget p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setEndOffset(I)V

    return-void
.end method

.method public setMatchOffsets(II)V
    .locals 0

    iput p1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchBeginOffset:I

    iput p2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_matchEndOffset:I

    return-void
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iget v2, p0, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    invoke-virtual {p0}, Lorg/apache/oro/text/regex/PatternMatcherInput;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
