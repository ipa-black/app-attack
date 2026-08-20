.class final Lorg/apache/oro/text/awk/AwkMatchResult;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/MatchResult;


# instance fields
.field private __length:I

.field private __match:Ljava/lang/String;

.field private __matchBeginOffset:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__match:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__length:I

    iput p2, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__matchBeginOffset:I

    return-void
.end method


# virtual methods
.method _incrementMatchBeginOffset(I)V
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__matchBeginOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__matchBeginOffset:I

    return-void
.end method

.method public begin(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public beginOffset(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__matchBeginOffset:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public end(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__length:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public endOffset(I)I
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__matchBeginOffset:I

    iget v0, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__length:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public group(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__match:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public groups()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/awk/AwkMatchResult;->__length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/awk/AwkMatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
