.class final Lorg/apache/oro/text/awk/NegativeCharacterClassNode;
.super Lorg/apache/oro/text/awk/CharacterClassNode;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/oro/text/awk/CharacterClassNode;-><init>(I)V

    iget-object p1, p0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;->_characterSet:Ljava/util/BitSet;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 4

    new-instance v0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;

    const/4 v1, 0x0

    aget v2, p1, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, p1, v1

    invoke-direct {v0, v2}, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;-><init>(I)V

    iget-object p1, p0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;->_characterSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    iput-object p1, v0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;->_characterSet:Ljava/util/BitSet;

    return-object v0
.end method

.method _matches(C)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;->_characterSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
