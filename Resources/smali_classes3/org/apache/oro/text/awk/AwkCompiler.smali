.class public final Lorg/apache/oro/text/awk/AwkCompiler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/PatternCompiler;


# static fields
.field public static final CASE_INSENSITIVE_MASK:I = 0x1

.field public static final DEFAULT_MASK:I = 0x0

.field public static final MULTILINE_MASK:I = 0x2

.field static final _END_OF_INPUT:C = '\uffff'


# instance fields
.field private __beginAnchor:Z

.field private __bytesRead:I

.field private __caseSensitive:Z

.field private __closeParen:I

.field private __endAnchor:Z

.field private __expressionLength:I

.field private __inCharacterClass:Z

.field private __lookahead:C

.field private __multiline:Z

.field private __openParen:I

.field private __position:I

.field private __regularExpression:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private __atom()Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__openParen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__openParen:I

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__regex()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__closeParen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__closeParen:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__characterClass()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;-><init>(I)V

    iget-boolean v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__multiline:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__backslashToken()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__isMetachar(C)Z

    move-result v0

    if-nez v0, :cond_5

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->_newTokenNode(CI)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Parse error: unexpected character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private __backslashToken()Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/4 v1, 0x2

    const/16 v2, 0x78

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__parseUnsignedInteger(III)I

    move-result v0

    :goto_0
    int-to-char v0, v0

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->_newTokenNode(CI)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x63

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x40

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x40

    :goto_1
    int-to-char v0, v0

    new-instance v1, Lorg/apache/oro/text/awk/TokenNode;

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v1, v0, v2}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-direct {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    move-object v0, v1

    goto/16 :goto_9

    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-lt v0, v5, :cond_5

    if-gt v0, v4, :cond_5

    invoke-direct {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    if-lt v0, v5, :cond_3

    if-gt v0, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__putback()V

    const/4 v0, 0x3

    invoke-direct {p0, v3, v1, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__parseUnsignedInteger(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__putback()V

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    if-ne v0, v5, :cond_4

    invoke-direct {p0, v5}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v0, Lorg/apache/oro/text/awk/TokenNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    goto/16 :goto_9

    :cond_4
    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    :goto_2
    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->_newTokenNode(CI)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    :goto_3
    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    goto :goto_4

    :cond_5
    const/16 v1, 0x62

    if-ne v0, v1, :cond_6

    new-instance v0, Lorg/apache/oro/text/awk/TokenNode;

    iget v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v2, v3}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    :goto_4
    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    goto/16 :goto_9

    :cond_6
    const/16 v1, 0x66

    const/16 v2, 0x9

    const/16 v6, 0xd

    const/16 v7, 0xc

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x72

    if-eq v0, v1, :cond_8

    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v6

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v7

    :goto_5
    const/16 v1, 0x44

    if-eq v0, v1, :cond_10

    const/16 v1, 0x53

    const/16 v8, 0x20

    if-eq v0, v1, :cond_f

    const/16 v1, 0x57

    const/16 v9, 0x5f

    const/16 v10, 0x5a

    const/16 v11, 0x41

    const/16 v12, 0x7a

    const/16 v13, 0x61

    if-eq v0, v1, :cond_e

    const/16 v1, 0x64

    if-eq v0, v1, :cond_d

    const/16 v1, 0x73

    if-eq v0, v1, :cond_c

    const/16 v1, 0x77

    if-eq v0, v1, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Lorg/apache/oro/text/awk/CharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/CharacterClassNode;-><init>(I)V

    goto :goto_6

    :cond_c
    new-instance v0, Lorg/apache/oro/text/awk/CharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/CharacterClassNode;-><init>(I)V

    goto :goto_7

    :cond_d
    new-instance v0, Lorg/apache/oro/text/awk/CharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/CharacterClassNode;-><init>(I)V

    goto :goto_8

    :cond_e
    new-instance v0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;-><init>(I)V

    :goto_6
    invoke-virtual {v0, v5, v4}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addTokenRange(II)V

    invoke-virtual {v0, v13, v12}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addTokenRange(II)V

    invoke-virtual {v0, v11, v10}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addTokenRange(II)V

    invoke-virtual {v0, v9}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    goto/16 :goto_3

    :cond_f
    new-instance v0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;-><init>(I)V

    :goto_7
    invoke-virtual {v0, v8}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    invoke-virtual {v0, v7}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    invoke-virtual {v0, v3}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    invoke-virtual {v0, v6}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    invoke-virtual {v0, v2}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    goto/16 :goto_3

    :cond_10
    new-instance v0, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1}, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;-><init>(I)V

    :goto_8
    invoke-virtual {v0, v5, v4}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addTokenRange(II)V

    goto/16 :goto_3

    :goto_9
    return-object v0
.end method

.method private __branch()Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__piece()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const-string v2, "Parse error: close parenthesis without matching open parenthesis at position "

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__openParen:I

    iget v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__closeParen:I

    if-le v1, v3, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v4, 0x7c

    if-eq v1, v4, :cond_7

    const v5, 0xffff

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v1}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v0, v1, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    move-object v0, v1

    :goto_0
    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__piece()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v6

    iget-char v7, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    if-ne v7, v3, :cond_4

    iget v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__openParen:I

    iget v4, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__closeParen:I

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eq v7, v4, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v7, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v7}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v7, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object v0, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    check-cast v0, Lorg/apache/oro/text/awk/CatNode;

    iput-object v6, v0, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_0

    :cond_6
    :goto_1
    iput-object v6, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    return-object v1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private __characterClass()Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__inCharacterClass:Z

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v1, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v1, v2}, Lorg/apache/oro/text/awk/NegativeCharacterClassNode;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/oro/text/awk/CharacterClassNode;

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v1, v2}, Lorg/apache/oro/text/awk/CharacterClassNode;-><init>(I)V

    :cond_1
    :goto_0
    iget-char v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/4 v3, 0x0

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_d

    const v5, 0xffff

    if-ne v2, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_6

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__backslashToken()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v2

    iget v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    sub-int/2addr v6, v0

    iput v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    instance-of v6, v2, Lorg/apache/oro/text/awk/TokenNode;

    if-eqz v6, :cond_3

    check-cast v2, Lorg/apache/oro/text/awk/TokenNode;

    iget-char v2, v2, Lorg/apache/oro/text/awk/TokenNode;->_token:C

    invoke-virtual {v1, v2}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    iget-boolean v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__caseSensitive:Z

    if-nez v6, :cond_8

    invoke-static {v2}, Lorg/apache/oro/text/awk/AwkCompiler;->_toggleCase(C)C

    move-result v6

    invoke-virtual {v1, v6}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    goto :goto_2

    :cond_3
    move-object v6, v2

    check-cast v6, Lorg/apache/oro/text/awk/CharacterClassNode;

    :goto_1
    const/16 v2, 0x100

    if-lt v3, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v3}, Lorg/apache/oro/text/awk/CharacterClassNode;->_matches(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v3}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v2}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    iget-boolean v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__caseSensitive:Z

    if-nez v6, :cond_7

    iget-char v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-static {v6}, Lorg/apache/oro/text/awk/AwkCompiler;->_toggleCase(C)C

    move-result v6

    invoke-virtual {v1, v6}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    :cond_7
    iget-char v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-direct {p0, v6}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    :cond_8
    :goto_2
    iget-char v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v7}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget-char v6, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    if-ne v6, v4, :cond_9

    invoke-virtual {v1, v7}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    goto :goto_4

    :cond_9
    const-string v3, "Parse error: invalid range specified at position "

    if-ne v6, v5, :cond_b

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__backslashToken()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v4

    iget v5, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    sub-int/2addr v5, v0

    iput v5, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    instance-of v5, v4, Lorg/apache/oro/text/awk/TokenNode;

    if-eqz v5, :cond_a

    check-cast v4, Lorg/apache/oro/text/awk/TokenNode;

    iget-char v6, v4, Lorg/apache/oro/text/awk/TokenNode;->_token:C

    goto :goto_3

    :cond_a
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, v6}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    :goto_3
    if-lt v6, v2, :cond_c

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v6}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addTokenRange(II)V

    iget-boolean v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__caseSensitive:Z

    if-nez v3, :cond_1

    int-to-char v2, v2

    invoke-static {v2}, Lorg/apache/oro/text/awk/AwkCompiler;->_toggleCase(C)C

    move-result v2

    invoke-static {v6}, Lorg/apache/oro/text/awk/AwkCompiler;->_toggleCase(C)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addTokenRange(II)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    invoke-direct {p0, v4}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iput-boolean v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__inCharacterClass:Z

    return-object v1
.end method

.method private static __isMetachar(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private __match(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    iget v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__expressionLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__regularExpression:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    aget-char p1, v0, p1

    goto :goto_0

    :cond_0
    const p1, 0xffff

    :goto_0
    iput-char p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    return-void

    :cond_1
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " does not match lookahead: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " at position: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private __parseUnsignedInteger(III)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-char v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-lt v1, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-char v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v1, p2, :cond_2

    if-gt v1, p3, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Parse error: numeric value at position "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " is invalid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Parse error: unexpected number of digits at position "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private __piece()Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__atom()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__repetition(Lorg/apache/oro/text/awk/SyntaxNode;)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v1, Lorg/apache/oro/text/awk/QuestionNode;

    invoke-direct {v1, v0}, Lorg/apache/oro/text/awk/QuestionNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v1

    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v1, Lorg/apache/oro/text/awk/PlusNode;

    invoke-direct {v1, v0}, Lorg/apache/oro/text/awk/PlusNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v1

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v1, Lorg/apache/oro/text/awk/StarNode;

    invoke-direct {v1, v0}, Lorg/apache/oro/text/awk/StarNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v1
.end method

.method private __putback()V
    .locals 2

    iget-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    :cond_0
    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__regularExpression:[C

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    iput-char v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    return-void
.end method

.method private __regex()Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__branch()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    new-instance v1, Lorg/apache/oro/text/awk/OrNode;

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__regex()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/oro/text/awk/OrNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method private __repetition(Lorg/apache/oro/text/awk/SyntaxNode;)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-direct {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    const/16 v0, 0xa

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__parseUnsignedInteger(III)I

    move-result v3

    iget v4, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    filled-new-array {v4}, [I

    move-result-object v4

    iget-char v5, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const-string v6, ".  Number of occurences was set to zero."

    const-string v7, "Parse error: Superfluous interval specified at position "

    const/16 v8, 0x7d

    if-ne v5, v8, :cond_3

    invoke-direct {p0, v8}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v0}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object p1, v0, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    if-gt v3, v1, :cond_1

    iput-object p1, v2, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    goto/16 :goto_8

    :cond_1
    new-instance v5, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v5}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v5, v2, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object v2, v2, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    check-cast v2, Lorg/apache/oro/text/awk/CatNode;

    iput-object p1, v2, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v9, 0x2c

    if-ne v5, v9, :cond_13

    invoke-direct {p0, v9}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget-char v5, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    if-ne v5, v8, :cond_7

    invoke-direct {p0, v8}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    if-nez v3, :cond_4

    new-instance v0, Lorg/apache/oro/text/awk/StarNode;

    invoke-direct {v0, p1}, Lorg/apache/oro/text/awk/StarNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0

    :cond_4
    if-ne v3, v1, :cond_5

    new-instance v0, Lorg/apache/oro/text/awk/PlusNode;

    invoke-direct {v0, p1}, Lorg/apache/oro/text/awk/PlusNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0

    :cond_5
    new-instance v5, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v5}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object p1, v5, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    move-object v0, v5

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_6

    new-instance v1, Lorg/apache/oro/text/awk/StarNode;

    invoke-virtual {p1, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/oro/text/awk/StarNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    iput-object v1, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    move-object v0, v5

    goto/16 :goto_8

    :cond_6
    invoke-virtual {p1, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    new-instance v1, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v1}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v1, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object v0, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    check-cast v0, Lorg/apache/oro/text/awk/CatNode;

    iput-object p1, v0, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_1

    :cond_7
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/oro/text/awk/AwkCompiler;->__parseUnsignedInteger(III)I

    move-result v0

    invoke-direct {p0, v8}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    if-lt v0, v3, :cond_12

    if-eqz v0, :cond_11

    if-nez v3, :cond_a

    if-ne v0, v1, :cond_8

    new-instance v0, Lorg/apache/oro/text/awk/QuestionNode;

    invoke-direct {v0, p1}, Lorg/apache/oro/text/awk/QuestionNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0

    :cond_8
    new-instance v2, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v2}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    new-instance v3, Lorg/apache/oro/text/awk/QuestionNode;

    invoke-direct {v3, p1}, Lorg/apache/oro/text/awk/QuestionNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    iput-object v3, v2, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    move-object p1, v2

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gt v0, v1, :cond_9

    invoke-virtual {v3, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    :goto_3
    iput-object v0, p1, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    :goto_4
    move-object v0, v2

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v3, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v3

    new-instance v5, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v5}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v5, p1, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object p1, p1, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    check-cast p1, Lorg/apache/oro/text/awk/CatNode;

    iput-object v3, p1, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_2

    :cond_a
    if-ne v3, v0, :cond_d

    if-ne v3, v1, :cond_b

    return-object p1

    :cond_b
    new-instance v2, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v2}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object p1, v2, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    move-object v0, v2

    :goto_5
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    if-gt v3, v1, :cond_c

    iput-object p1, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_4

    :cond_c
    new-instance v5, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v5}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v5, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object v0, v0, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    check-cast v0, Lorg/apache/oro/text/awk/CatNode;

    iput-object p1, v0, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_5

    :cond_d
    new-instance v2, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v2}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object p1, v2, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    move v5, v1

    move-object v6, v2

    :goto_6
    if-lt v5, v3, :cond_10

    new-instance v5, Lorg/apache/oro/text/awk/QuestionNode;

    invoke-virtual {p1, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/apache/oro/text/awk/QuestionNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    sub-int/2addr v0, v3

    if-ne v0, v1, :cond_e

    iput-object v5, v6, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_4

    :cond_e
    new-instance p1, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {p1}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object p1, v6, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object p1, v6, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    :goto_7
    check-cast p1, Lorg/apache/oro/text/awk/CatNode;

    iput-object v5, p1, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    add-int/lit8 v0, v0, -0x1

    if-gt v0, v1, :cond_f

    invoke-virtual {v5, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    goto :goto_3

    :goto_8
    const/4 p1, 0x0

    aget p1, v4, p1

    iput p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    return-object v0

    :cond_f
    invoke-virtual {v5, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v5

    new-instance v3, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v3}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v3, p1, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object p1, p1, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    goto :goto_7

    :cond_10
    invoke-virtual {p1, v4}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    new-instance v7, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {v7}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    iput-object v7, v6, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    iget-object v6, v6, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    check-cast v6, Lorg/apache/oro/text/awk/CatNode;

    iput-object p1, v6, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_11
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Parse error: invalid interval; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Parse error: unexpected character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " in interval at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static _isLowerCase(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static _isUpperCase(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static _isWordCharacter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static _toggleCase(C)C
    .locals 1

    invoke-static {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->_isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->_isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p0, p0, -0x20

    goto :goto_0

    :cond_1
    return p0
.end method


# virtual methods
.method _newTokenNode(CI)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__inCharacterClass:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__caseSensitive:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/oro/text/awk/AwkCompiler;->_isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/oro/text/awk/AwkCompiler;->_isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/oro/text/awk/CharacterClassNode;

    invoke-direct {v0, p2}, Lorg/apache/oro/text/awk/CharacterClassNode;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    invoke-static {p1}, Lorg/apache/oro/text/awk/AwkCompiler;->_toggleCase(C)C

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/oro/text/awk/CharacterClassNode;->_addToken(I)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/oro/text/awk/TokenNode;

    invoke-direct {v0, p1, p2}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    return-object v0
.end method

.method _parse([C)Lorg/apache/oro/text/awk/SyntaxTree;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__closeParen:I

    iput v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__openParen:I

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__regularExpression:[C

    iput v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__bytesRead:I

    array-length v1, p1

    iput v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__expressionLength:I

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__inCharacterClass:Z

    iput v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    iget-char v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__lookahead:C

    const/16 v2, 0x5e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__beginAnchor:Z

    invoke-direct {p0, v1}, Lorg/apache/oro/text/awk/AwkCompiler;->__match(C)V

    :cond_0
    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__expressionLength:I

    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget-char p1, p1, v2

    const/16 v2, 0x24

    if-ne p1, v2, :cond_1

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__expressionLength:I

    iput-boolean v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__endAnchor:Z

    :cond_1
    iget p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__expressionLength:I

    const/16 v1, 0x100

    if-gt p1, v3, :cond_3

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__beginAnchor:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/oro/text/awk/SyntaxTree;

    new-instance v2, Lorg/apache/oro/text/awk/TokenNode;

    invoke-direct {v2, v1, v0}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    invoke-direct {p1, v2, v3}, Lorg/apache/oro/text/awk/SyntaxTree;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, Lorg/apache/oro/text/awk/CatNode;

    invoke-direct {p1}, Lorg/apache/oro/text/awk/CatNode;-><init>()V

    invoke-direct {p0}, Lorg/apache/oro/text/awk/AwkCompiler;->__regex()Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/oro/text/awk/CatNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    new-instance v0, Lorg/apache/oro/text/awk/TokenNode;

    iget v2, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, v1, v2}, Lorg/apache/oro/text/awk/TokenNode;-><init>(CI)V

    iput-object v0, p1, Lorg/apache/oro/text/awk/CatNode;->_right:Lorg/apache/oro/text/awk/SyntaxNode;

    new-instance v0, Lorg/apache/oro/text/awk/SyntaxTree;

    iget v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__position:I

    invoke-direct {v0, p1, v1}, Lorg/apache/oro/text/awk/SyntaxTree;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;I)V

    move-object p1, v0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/oro/text/awk/SyntaxTree;->_computeFollowPositions()V

    return-object p1
.end method

.method public compile(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__endAnchor:Z

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__beginAnchor:Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__caseSensitive:Z

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__multiline:Z

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->_parse([C)Lorg/apache/oro/text/awk/SyntaxTree;

    move-result-object v0

    new-instance v1, Lorg/apache/oro/text/awk/AwkPattern;

    invoke-direct {v1, p1, v0}, Lorg/apache/oro/text/awk/AwkPattern;-><init>(Ljava/lang/String;Lorg/apache/oro/text/awk/SyntaxTree;)V

    iput p2, v1, Lorg/apache/oro/text/awk/AwkPattern;->_options:I

    iget-boolean p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__beginAnchor:Z

    iput-boolean p1, v1, Lorg/apache/oro/text/awk/AwkPattern;->_hasBeginAnchor:Z

    iget-boolean p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__endAnchor:Z

    iput-boolean p1, v1, Lorg/apache/oro/text/awk/AwkPattern;->_hasEndAnchor:Z

    return-object v1
.end method

.method public compile([C)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/awk/AwkCompiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile([CI)Lorg/apache/oro/text/regex/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__endAnchor:Z

    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__beginAnchor:Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__caseSensitive:Z

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__multiline:Z

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/awk/AwkCompiler;->_parse([C)Lorg/apache/oro/text/awk/SyntaxTree;

    move-result-object v0

    new-instance v1, Lorg/apache/oro/text/awk/AwkPattern;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2, v0}, Lorg/apache/oro/text/awk/AwkPattern;-><init>(Ljava/lang/String;Lorg/apache/oro/text/awk/SyntaxTree;)V

    iput p2, v1, Lorg/apache/oro/text/awk/AwkPattern;->_options:I

    iget-boolean p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__beginAnchor:Z

    iput-boolean p1, v1, Lorg/apache/oro/text/awk/AwkPattern;->_hasBeginAnchor:Z

    iget-boolean p1, p0, Lorg/apache/oro/text/awk/AwkCompiler;->__endAnchor:Z

    iput-boolean p1, v1, Lorg/apache/oro/text/awk/AwkPattern;->_hasEndAnchor:Z

    return-object v1
.end method
