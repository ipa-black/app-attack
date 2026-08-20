.class Lorg/apache/oro/text/awk/TokenNode;
.super Lorg/apache/oro/text/awk/LeafNode;


# instance fields
.field _token:C


# direct methods
.method constructor <init>(CI)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/oro/text/awk/LeafNode;-><init>(I)V

    iput-char p1, p0, Lorg/apache/oro/text/awk/TokenNode;->_token:C

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 5

    new-instance v0, Lorg/apache/oro/text/awk/TokenNode;

    iget-char v1, p0, Lorg/apache/oro/text/awk/TokenNode;->_token:C

    const/4 v2, 0x0

    aget v3, p1, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, p1, v2

    invoke-direct {v0, v1, v3}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    return-object v0
.end method

.method _matches(C)Z
    .locals 1

    iget-char v0, p0, Lorg/apache/oro/text/awk/TokenNode;->_token:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
