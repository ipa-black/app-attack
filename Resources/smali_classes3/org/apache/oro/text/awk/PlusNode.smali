.class final Lorg/apache/oro/text/awk/PlusNode;
.super Lorg/apache/oro/text/awk/StarNode;


# direct methods
.method constructor <init>(Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/oro/text/awk/StarNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 2

    new-instance v0, Lorg/apache/oro/text/awk/PlusNode;

    iget-object v1, p0, Lorg/apache/oro/text/awk/PlusNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v1, p1}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/oro/text/awk/PlusNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0
.end method

.method _nullable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
