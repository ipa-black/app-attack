.class final Lorg/apache/oro/text/awk/EpsilonNode;
.super Lorg/apache/oro/text/awk/SyntaxNode;


# instance fields
.field _positionSet:Ljava/util/BitSet;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/oro/text/awk/SyntaxNode;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/oro/text/awk/EpsilonNode;->_positionSet:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 0

    new-instance p1, Lorg/apache/oro/text/awk/EpsilonNode;

    invoke-direct {p1}, Lorg/apache/oro/text/awk/EpsilonNode;-><init>()V

    return-object p1
.end method

.method _firstPosition()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/EpsilonNode;->_positionSet:Ljava/util/BitSet;

    return-object v0
.end method

.method _followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 0

    return-void
.end method

.method _lastPosition()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/EpsilonNode;->_positionSet:Ljava/util/BitSet;

    return-object v0
.end method

.method _nullable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
