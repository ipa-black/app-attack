.class Lorg/apache/oro/text/awk/StarNode;
.super Lorg/apache/oro/text/awk/SyntaxNode;


# instance fields
.field _left:Lorg/apache/oro/text/awk/SyntaxNode;


# direct methods
.method constructor <init>(Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/oro/text/awk/SyntaxNode;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/StarNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 2

    new-instance v0, Lorg/apache/oro/text/awk/StarNode;

    iget-object v1, p0, Lorg/apache/oro/text/awk/StarNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v1, p1}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/oro/text/awk/StarNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0
.end method

.method _firstPosition()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/StarNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0}, Lorg/apache/oro/text/awk/SyntaxNode;->_firstPosition()Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method _followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/oro/text/awk/StarNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/oro/text/awk/SyntaxNode;->_followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V

    invoke-virtual {p0}, Lorg/apache/oro/text/awk/StarNode;->_lastPosition()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/oro/text/awk/StarNode;->_firstPosition()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/BitSet;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method _lastPosition()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/StarNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v0}, Lorg/apache/oro/text/awk/SyntaxNode;->_lastPosition()Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method _nullable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
