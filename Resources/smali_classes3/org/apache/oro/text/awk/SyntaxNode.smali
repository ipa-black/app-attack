.class abstract Lorg/apache/oro/text/awk/SyntaxNode;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
.end method

.method abstract _firstPosition()Ljava/util/BitSet;
.end method

.method abstract _followPosition([Ljava/util/BitSet;[Lorg/apache/oro/text/awk/SyntaxNode;)V
.end method

.method abstract _lastPosition()Ljava/util/BitSet;
.end method

.method abstract _nullable()Z
.end method
