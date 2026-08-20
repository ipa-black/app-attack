.class abstract Lorg/apache/oro/text/awk/LeafNode;
.super Lorg/apache/oro/text/awk/SyntaxNode;


# static fields
.field static final _END_MARKER_TOKEN:I = 0x100

.field static final _NUM_TOKENS:I = 0x100


# instance fields
.field protected _position:I

.field protected _positionSet:Ljava/util/BitSet;


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/oro/text/awk/SyntaxNode;-><init>()V

    iput p1, p0, Lorg/apache/oro/text/awk/LeafNode;->_position:I

    new-instance v0, Ljava/util/BitSet;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/oro/text/awk/LeafNode;->_positionSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method


# virtual methods
.method final _firstPosition()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/LeafNode;->_positionSet:Ljava/util/BitSet;

    return-object v0
.end method

.method final _followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 0

    iget p1, p0, Lorg/apache/oro/text/awk/LeafNode;->_position:I

    aput-object p0, p2, p1

    return-void
.end method

.method final _lastPosition()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/LeafNode;->_positionSet:Ljava/util/BitSet;

    return-object v0
.end method

.method abstract _matches(C)Z
.end method

.method final _nullable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
