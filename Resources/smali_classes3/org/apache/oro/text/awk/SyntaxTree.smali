.class final Lorg/apache/oro/text/awk/SyntaxTree;
.super Ljava/lang/Object;


# instance fields
.field _followSet:[Ljava/util/BitSet;

.field _nodes:[Lorg/apache/oro/text/awk/LeafNode;

.field _positions:I

.field _root:Lorg/apache/oro/text/awk/SyntaxNode;


# direct methods
.method constructor <init>(Lorg/apache/oro/text/awk/SyntaxNode;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_root:Lorg/apache/oro/text/awk/SyntaxNode;

    iput p2, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    return-void
.end method

.method private __addToFastMap(Ljava/util/BitSet;[Z[Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-boolean v2, p3, v1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    aput-boolean v2, p3, v1

    move v2, v0

    :goto_1
    const/16 v3, 0x100

    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-boolean v3, p2, v2

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_nodes:[Lorg/apache/oro/text/awk/LeafNode;

    aget-object v3, v3, v1

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/oro/text/awk/LeafNode;->_matches(C)Z

    move-result v3

    aput-boolean v3, p2, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method _computeFollowPositions()V
    .locals 4

    iget v0, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    new-array v1, v0, [Ljava/util/BitSet;

    iput-object v1, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_followSet:[Ljava/util/BitSet;

    new-array v1, v0, [Lorg/apache/oro/text/awk/LeafNode;

    iput-object v1, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_nodes:[Lorg/apache/oro/text/awk/LeafNode;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_root:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object v1, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_followSet:[Ljava/util/BitSet;

    iget-object v2, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_nodes:[Lorg/apache/oro/text/awk/LeafNode;

    invoke-virtual {v0, v1, v2}, Lorg/apache/oro/text/awk/SyntaxNode;->_followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_followSet:[Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v0, v1

    move v0, v1

    goto :goto_0
.end method

.method createFastMap()[Z
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [Z

    iget v1, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_positions:I

    new-array v1, v1, [Z

    iget-object v2, p0, Lorg/apache/oro/text/awk/SyntaxTree;->_root:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v2}, Lorg/apache/oro/text/awk/SyntaxNode;->_firstPosition()Ljava/util/BitSet;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/oro/text/awk/SyntaxTree;->__addToFastMap(Ljava/util/BitSet;[Z[Z)V

    return-object v0
.end method
