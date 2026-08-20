.class final Lorg/apache/oro/text/regex/Perl5MatchResult;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/MatchResult;


# instance fields
.field _beginGroupOffset:[I

.field _endGroupOffset:[I

.field _match:Ljava/lang/String;

.field _matchBeginOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    return-void
.end method


# virtual methods
.method public begin(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    aget p1, v1, p1

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public beginOffset(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    aget p1, v1, p1

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_matchBeginOffset:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public end(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    aget p1, v1, p1

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public endOffset(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    aget v1, v1, p1

    aget p1, v0, p1

    if-ltz v1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_matchBeginOffset:I

    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public group(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    aget p1, v1, p1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_match:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    if-ge v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_match:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-gt v0, p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public groups()I
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    array-length v0, v0

    return v0
.end method

.method public length()I
    .locals 3

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/regex/Perl5MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
