.class public Lorg/apache/ldap/common/filter/AntlrFilterParser;
.super Lantlr/LLkParser;
.source "AntlrFilterParser.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/AntlrFilterParserTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;


# instance fields
.field monitor:Lorg/apache/ldap/common/filter/FilterParserMonitor;

.field selector:Lantlr/TokenStreamSelector;

.field valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

.field valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2d

    .line 611
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<0>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EOF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<2>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NULL_TREE_LOOKAHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HEXDIG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "VALUEENCODING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NORMAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ESCAPED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UTF1SUBSET"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EXCLAMATION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AMPERSAND"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ASTERISK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "COLON"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "VERTBAR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TILDE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "UTF8"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UTFMB"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UTF0"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "UTF1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "UTF2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UTF3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "UTF4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "RANGLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "LANGLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EQUALS"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "AMPERSTAND"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "DN"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "COLONEQUALS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "APPROX"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "GREATEROREQUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "LESSOREQUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "LDIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ALPHA"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "NUMERICOID"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "DESCR"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "OID"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "OPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ATTRIBUTEDESCRIPTION"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenNames:[Ljava/lang/String;

    .line 663
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 668
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 673
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 678
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x5

    .line 134
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 135
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x5

    .line 121
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 117
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x5

    .line 130
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 126
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private matchedProduction(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->monitor:Lorg/apache/ldap/common/filter/FilterParserMonitor;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p1}, Lorg/apache/ldap/common/filter/FilterParserMonitor;->matchedProduction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    .line 660
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x6000
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_1()[J
    .locals 1

    const/4 v0, 0x2

    .line 665
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x4000
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_2()[J
    .locals 1

    const/4 v0, 0x2

    .line 670
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0xe20000000L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_3()[J
    .locals 1

    const/4 v0, 0x2

    .line 675
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x100180008000L
        0x0
    .end array-data
.end method


# virtual methods
.method public final and()Lorg/apache/ldap/common/filter/BranchNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1e

    .line 225
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 226
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 234
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    .line 248
    new-instance v1, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 241
    :cond_1
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 254
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final extensible()Lorg/apache/ldap/common/filter/ExtensibleNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const/16 v4, 0x3b

    const/16 v5, 0x20

    const/16 v6, 0x2c

    const/16 v7, 0x1f

    const/16 v8, 0xf

    const-string v9, "matchingRule OIDs cannot have options: "

    const/4 v10, 0x0

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_7

    if-ne v2, v6, :cond_6

    .line 491
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 492
    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 494
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v11

    if-eq v11, v8, :cond_2

    if-eq v11, v7, :cond_1

    if-ne v11, v5, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_1
    invoke-virtual {p0, v7}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    move v7, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v10

    .line 516
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v11

    if-eq v11, v8, :cond_4

    if-ne v11, v5, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 540
    :cond_3
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_4
    invoke-virtual {p0, v8}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 520
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 521
    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 523
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 544
    :goto_2
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 546
    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v4, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    invoke-virtual {v3, v4}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 547
    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v3, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->value(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 528
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    new-instance v3, Lantlr/RecognitionException;

    invoke-direct {v3, v2, v0, v10, v4}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v3

    .line 594
    :cond_6
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_7
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    if-eq v2, v8, :cond_9

    if-ne v2, v7, :cond_8

    .line 558
    invoke-virtual {p0, v7}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    move v7, v0

    goto :goto_3

    .line 568
    :cond_8
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    :cond_9
    move v7, v10

    .line 572
    :goto_3
    invoke-virtual {p0, v8}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 573
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 574
    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 576
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 585
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 587
    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    invoke-virtual {v2, v3}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 588
    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->value(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v1

    .line 599
    :goto_4
    new-instance v4, Lorg/apache/ldap/common/filter/ExtensibleNode;

    invoke-direct {v4, v2, v3, v0, v7}, Lorg/apache/ldap/common/filter/ExtensibleNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v4

    goto :goto_5

    .line 581
    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    new-instance v4, Lantlr/RecognitionException;

    invoke-direct {v4, v3, v0, v10, v2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v4
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 604
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 605
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_5
    return-object v1
.end method

.method public final filter()Lorg/apache/ldap/common/filter/ExprNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 149
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filtercomp()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 154
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 155
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final filtercomp()Lorg/apache/ldap/common/filter/ExprNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0xe

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 200
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->and()Lorg/apache/ldap/common/filter/BranchNode;

    move-result-object v1

    .line 175
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->or()Lorg/apache/ldap/common/filter/BranchNode;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    goto :goto_0

    .line 195
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->item()Lorg/apache/ldap/common/filter/LeafNode;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->not()Lorg/apache/ldap/common/filter/BranchNode;

    move-result-object v1

    .line 187
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 206
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 207
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final item()Lorg/apache/ldap/common/filter/LeafNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_0

    sget-object v2, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->simple()Lorg/apache/ldap/common/filter/LeafNode;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    const/16 v5, 0xf

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    const/16 v5, 0x1f

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    :cond_1
    sget-object v2, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->extensible()Lorg/apache/ldap/common/filter/ExtensibleNode;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 354
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 356
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    invoke-virtual {v0, v2}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 357
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->value(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v2, Lorg/apache/ldap/common/filter/ExtensibleNode;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v1, v3}, Lorg/apache/ldap/common/filter/ExtensibleNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    goto :goto_1

    .line 363
    :cond_3
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 369
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 370
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_1
    return-object v1
.end method

.method public final not()Lorg/apache/ldap/common/filter/BranchNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 319
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v0

    .line 321
    new-instance v2, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/apache/ldap/common/filter/BranchNode;->addNode(Lorg/apache/ldap/common/filter/ExprNode;)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    .line 326
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 328
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public final or()Lorg/apache/ldap/common/filter/BranchNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x10

    .line 272
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 273
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 281
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 282
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    .line 295
    new-instance v1, Lorg/apache/ldap/common/filter/BranchNode;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/filter/BranchNode;-><init>(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 288
    :cond_1
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 300
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 301
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public setFilterParserMonitor(Lorg/apache/ldap/common/filter/FilterParserMonitor;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->monitor:Lorg/apache/ldap/common/filter/FilterParserMonitor;

    return-void
.end method

.method public setSelector(Lantlr/TokenStreamSelector;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->selector:Lantlr/TokenStreamSelector;

    return-void
.end method

.method public setValueLexer(Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    return-void
.end method

.method public setValueParser(Lorg/apache/ldap/common/filter/AntlrFilterValueParser;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    return-void
.end method

.method public final simple()Lorg/apache/ldap/common/filter/LeafNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 390
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x2c

    .line 391
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    .line 393
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LA(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/16 v6, 0x1d

    if-eq v2, v6, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 431
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x23

    .line 415
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    move v0, v3

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x22

    .line 407
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    move v0, v4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x21

    .line 399
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    move v0, v5

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->match(I)V

    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v6, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    invoke-virtual {v2, v6}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 437
    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->value(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_1

    goto :goto_1

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expecting one of 4 types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_2
    :goto_1
    new-instance v3, Lorg/apache/ldap/common/filter/SimpleNode;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2, v0}, Lorg/apache/ldap/common/filter/SimpleNode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 447
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 449
    new-instance v3, Lorg/apache/ldap/common/filter/SimpleNode;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2, v0}, Lorg/apache/ldap/common/filter/SimpleNode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 453
    :cond_4
    move-object v3, v2

    check-cast v3, Lorg/apache/ldap/common/filter/LeafNode;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->reportError(Lantlr/RecognitionException;)V

    .line 463
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consume()V

    .line 464
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 v3, 0x0

    :goto_2
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
