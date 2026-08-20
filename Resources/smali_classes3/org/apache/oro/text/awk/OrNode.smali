.class Lorg/apache/oro/text/awk/OrNode;
.super Lorg/apache/oro/text/awk/SyntaxNode;


# instance fields
.field _left:Lorg/apache/oro/text/awk/SyntaxNode;

.field _right:Lorg/apache/oro/text/awk/SyntaxNode;


# direct methods
.method constructor <init>(Lorg/apache/oro/text/awk/SyntaxNode;Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/oro/text/awk/SyntaxNode;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/OrNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    iput-object p2, p0, Lorg/apache/oro/text/awk/OrNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 3

    new-instance v0, Lorg/apache/oro/text/awk/OrNode;

    iget-object v1, p0, Lorg/apache/oro/text/awk/OrNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v1, p1}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/oro/text/awk/OrNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v2, p1}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/oro/text/awk/OrNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0
.end method

.method _firstPosition()Ljava/util/BitSet;
    .locals 5

    iget-object v0, p0, Lorg/apache/oro/text/awk/OrNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0}, Lorg/apache/oro/text/awk/SyntaxNode;->_firstPosition()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/oro/text/awk/OrNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v1}, Lorg/apache/oro/text/awk/SyntaxNode;->_firstPosition()Ljava/util/BitSet;

    move-result-object v1

    new-instance v2, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object v2
.end method

.method _followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/OrNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/oro/text/awk/SyntaxNode;->_followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V

    iget-object v0, p0, Lorg/apache/oro/text/awk/OrNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/oro/text/awk/SyntaxNode;->_followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-void
.end method

.method _lastPosition()Ljava/util/BitSet;
    .locals 5

    iget-object v0, p0, Lorg/apache/oro/text/awk/OrNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0}, Lorg/apache/oro/text/awk/SyntaxNode;->_lastPosition()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/oro/text/awk/OrNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v1}, Lorg/apache/oro/text/awk/SyntaxNode;->_lastPosition()Ljava/util/BitSet;

    move-result-object v1

    new-instance v2, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object v2
.end method

.method _nullable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/OrNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0}, Lorg/apache/oro/text/awk/SyntaxNode;->_nullable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/oro/text/awk/OrNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0}, Lorg/apache/oro/text/awk/SyntaxNode;->_nullable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
