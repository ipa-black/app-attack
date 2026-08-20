.class public Lantlr/preprocessor/Preprocessor;
.super Lantlr/LLkParser;
.source "Preprocessor.java"

# interfaces
.implements Lantlr/preprocessor/PreprocessorTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_6:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_7:Lantlr/collections/impl/BitSet;


# instance fields
.field private antlrTool:Lantlr/Tool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x29

    .line 740
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

    const-string v2, "\"tokens\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HEADER_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"class\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"extends\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SEMI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TOKENS_SPEC"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "OPTIONS_START"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ASSIGN_RHS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RCURLY"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\"protected\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"private\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\"public\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BANG"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ARG_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\"returns\""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RULE_BLOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\"throws\""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\"exception\""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\"catch\""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SUBRULE_BLOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ALT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ELEMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ID_OR_KEYWORD"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CURLY_BLOCK_SCARF"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "NEWLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SL_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ML_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "CHAR_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "STRING_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "XDIGIT"

    aput-object v2, v0, v1

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    .line 788
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 793
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 798
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 803
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 808
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 813
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 818
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 823
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 109
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, v0}, Lantlr/preprocessor/Preprocessor;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 91
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, v0}, Lantlr/preprocessor/Preprocessor;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 100
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    .line 785
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_1()[J
    .locals 1

    const/4 v0, 0x2

    .line 790
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2389c2
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_2()[J
    .locals 1

    const/4 v0, 0x2

    .line 795
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x38100
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_3()[J
    .locals 1

    const/4 v0, 0x2

    .line 800
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0xc2
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_4()[J
    .locals 1

    const/4 v0, 0x2

    .line 805
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x381c2
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_5()[J
    .locals 1

    const/4 v0, 0x2

    .line 810
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x201040
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_6()[J
    .locals 1

    const/4 v0, 0x2

    .line 815
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x10381c2
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_7()[J
    .locals 1

    const/4 v0, 0x2

    .line 820
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x30381c2
        0x0
    .end array-data
.end method


# virtual methods
.method public final class_def(Ljava/lang/String;Lantlr/preprocessor/Hierarchy;)Lantlr/preprocessor/Grammar;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const-string v0, "redefinition of grammar "

    .line 250
    new-instance v1, Lantlr/collections/impl/IndexedVector;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lantlr/collections/impl/IndexedVector;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    :try_start_0
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 269
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 260
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 273
    :goto_0
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 274
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v5

    const/16 v7, 0x8

    .line 275
    invoke-virtual {p0, v7}, Lantlr/Parser;->match(I)V

    const/16 v8, 0x9

    .line 276
    invoke-virtual {p0, v8}, Lantlr/Parser;->match(I)V

    .line 277
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v8

    .line 278
    invoke-virtual {p0, v7}, Lantlr/Parser;->match(I)V

    const/16 v9, 0xa

    .line 279
    invoke-virtual {p0, v9}, Lantlr/Parser;->match(I)V

    .line 281
    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lantlr/preprocessor/Hierarchy;->getGrammar(Ljava/lang/String;)Lantlr/preprocessor/Grammar;

    move-result-object v9
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v9, :cond_b

    .line 288
    :try_start_1
    new-instance p1, Lantlr/preprocessor/Grammar;

    invoke-virtual {p2}, Lantlr/preprocessor/Hierarchy;->getTool()Lantlr/Tool;

    move-result-object p2

    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, p2, v0, v5, v1}, Lantlr/preprocessor/Grammar;-><init>(Lantlr/Tool;Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    .line 290
    :try_start_2
    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/preprocessor/Grammar;->setPreambleAction(Ljava/lang/String;)V

    .line 295
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result p2

    const/16 v0, 0xb

    if-eq p2, v6, :cond_4

    if-eq p2, v7, :cond_4

    if-eq p2, v0, :cond_4

    const/16 v1, 0xc

    if-eq p2, v1, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 312
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2

    .line 298
    :cond_3
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;

    move-result-object v3

    .line 318
    :cond_4
    :pswitch_0
    invoke-virtual {p1, v3}, Lantlr/preprocessor/Grammar;->setOptions(Lantlr/collections/impl/IndexedVector;)V

    .line 322
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result p2

    if-eq p2, v6, :cond_6

    if-eq p2, v7, :cond_6

    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_1

    .line 340
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2

    .line 325
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    .line 326
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 327
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/preprocessor/Grammar;->setTokenSection(Ljava/lang/String;)V

    .line 345
    :cond_6
    :pswitch_1
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result p2

    if-eq p2, v6, :cond_7

    if-eq p2, v7, :cond_8

    packed-switch p2, :pswitch_data_2

    .line 362
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2

    .line 348
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    .line 349
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 350
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/preprocessor/Grammar;->setMemberAction(Ljava/lang/String;)V

    :cond_8
    :pswitch_2
    const/4 p2, 0x0

    .line 370
    :goto_1
    sget-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 371
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->rule(Lantlr/preprocessor/Grammar;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    if-lt p2, v2, :cond_a

    goto :goto_3

    .line 374
    :cond_a
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Lantlr/RecognitionException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, v9

    goto :goto_2

    .line 285
    :cond_b
    :try_start_3
    new-instance p2, Lantlr/SemanticException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {v5}, Lantlr/Token;->getColumn()I

    move-result v2

    invoke-direct {p2, v0, p1, v1, v2}, Lantlr/SemanticException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p2
    :try_end_3
    .catch Lantlr/RecognitionException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 382
    :goto_2
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 383
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 384
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    move-object p1, v3

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final exceptionGroup()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 631
    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    .line 637
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    .line 638
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->exceptionSpec()Ljava/lang/String;

    move-result-object v1

    .line 639
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 649
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 650
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 651
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_0
    return-object v0
.end method

.method public final exceptionHandler()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x19

    .line 723
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    const/4 v0, 0x1

    .line 724
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x13

    .line 725
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 726
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    const/4 v2, 0x6

    .line 727
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 728
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 732
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 733
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 734
    sget-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final exceptionSpec()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 661
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    .line 665
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    const/4 v2, 0x1

    .line 667
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    const/16 v4, 0x19

    if-eq v3, v2, :cond_1

    const/16 v5, 0x13

    if-eq v3, v5, :cond_0

    const/4 v5, 0x6

    if-eq v3, v5, :cond_1

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    if-eq v3, v1, :cond_1

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 689
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 671
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 672
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 697
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->exceptionHandler()Ljava/lang/String;

    move-result-object v1

    .line 698
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 708
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 709
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 710
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getTool()Lantlr/Tool;
    .locals 1

    .line 47
    iget-object v0, p0, Lantlr/preprocessor/Preprocessor;->antlrTool:Lantlr/Tool;

    return-object v0
.end method

.method public final grammarFile(Lantlr/preprocessor/Hierarchy;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 126
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 129
    invoke-virtual {p1, p2}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v1

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lantlr/preprocessor/GrammarFile;->addHeaderAction(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v1, v0, :cond_3

    const/16 v5, 0xc

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/Preprocessor;->optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;

    move-result-object v4

    .line 159
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    goto :goto_3

    .line 160
    :cond_5
    :goto_2
    invoke-virtual {p0, p2, p1}, Lantlr/preprocessor/Preprocessor;->class_def(Ljava/lang/String;Lantlr/preprocessor/Hierarchy;)Lantlr/preprocessor/Grammar;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 163
    invoke-virtual {p1, p2}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v5

    invoke-virtual {v5, v4}, Lantlr/preprocessor/GrammarFile;->setOptions(Lantlr/collections/impl/IndexedVector;)V

    :cond_6
    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {v1, p2}, Lantlr/preprocessor/Grammar;->setFileName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, v1}, Lantlr/preprocessor/Hierarchy;->addGrammar(Lantlr/preprocessor/Grammar;)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 181
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 182
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_3
    return-void
.end method

.method public final optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 194
    new-instance v0, Lantlr/collections/impl/IndexedVector;

    invoke-direct {v0}, Lantlr/collections/impl/IndexedVector;-><init>()V

    const/16 v1, 0xc

    .line 198
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 202
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 203
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 204
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 205
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v3

    const/16 v4, 0xd

    .line 206
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 208
    new-instance v4, Lantlr/preprocessor/Option;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p1}, Lantlr/preprocessor/Option;-><init>(Ljava/lang/String;Ljava/lang/String;Lantlr/preprocessor/Grammar;)V

    .line 209
    invoke-virtual {v4}, Lantlr/preprocessor/Option;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lantlr/collections/impl/IndexedVector;->appendElement(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "importVocab"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    iput-boolean v1, p1, Lantlr/preprocessor/Grammar;->specifiedVocabulary:Z

    .line 212
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lantlr/preprocessor/Grammar;->importVocab:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "exportVocab"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    .line 218
    iget-object v1, p1, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 228
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 232
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 233
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_1
    return-object v0
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/RecognitionException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/RecognitionException;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RecognitionException;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RecognitionException;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lantlr/Parser;->reportError(Lantlr/RecognitionException;)V

    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lantlr/Parser;->reportError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lantlr/Parser;->reportWarning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final rule(Lantlr/preprocessor/Grammar;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 407
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 432
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x11

    .line 422
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 423
    const-string v1, "public"

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x10

    .line 416
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 417
    const-string v1, "private"

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xf

    .line 410
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 411
    const-string v1, "protected"

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 436
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 437
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 439
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v5, 0xc

    const/4 v6, 0x6

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    packed-switch v2, :pswitch_data_1

    .line 457
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const/16 v2, 0x12

    .line 442
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    move v2, v0

    goto :goto_1

    :cond_1
    :pswitch_4
    const/4 v2, 0x0

    .line 462
    :goto_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v7

    const/16 v8, 0x13

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_2

    packed-switch v7, :pswitch_data_2

    .line 479
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 465
    :pswitch_5
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v7

    .line 466
    invoke-virtual {p0, v8}, Lantlr/Parser;->match(I)V

    goto :goto_2

    :cond_2
    :pswitch_6
    move-object v7, v3

    .line 484
    :goto_2
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v9

    if-eq v9, v6, :cond_3

    if-eq v9, v5, :cond_3

    packed-switch v9, :pswitch_data_3

    .line 501
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_7
    const/16 v9, 0x14

    .line 487
    invoke-virtual {p0, v9}, Lantlr/Parser;->match(I)V

    .line 488
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v9

    .line 489
    invoke-virtual {p0, v8}, Lantlr/Parser;->match(I)V

    goto :goto_3

    :cond_3
    :pswitch_8
    move-object v9, v3

    .line 506
    :goto_3
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v8

    const/16 v10, 0x15

    if-eq v8, v6, :cond_5

    if-eq v8, v5, :cond_5

    if-eq v8, v10, :cond_5

    const/16 v11, 0x16

    if-ne v8, v11, :cond_4

    .line 509
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->throwsSpec()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 520
    :cond_4
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_5
    const-string v8, ""

    .line 525
    :goto_4
    :try_start_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v11

    if-eq v11, v6, :cond_8

    if-eq v11, v5, :cond_7

    if-ne v11, v10, :cond_6

    goto :goto_5

    .line 538
    :cond_6
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 528
    :cond_7
    invoke-virtual {p0, v3}, Lantlr/preprocessor/Preprocessor;->optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;

    move-result-object v5

    goto :goto_6

    :cond_8
    :goto_5
    move-object v5, v3

    .line 543
    :goto_6
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v11

    if-eq v11, v6, :cond_a

    if-ne v11, v10, :cond_9

    goto :goto_7

    .line 556
    :cond_9
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_a
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v3

    .line 547
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 560
    :goto_7
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 561
    invoke-virtual {p0, v10}, Lantlr/Parser;->match(I)V

    .line 562
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->exceptionGroup()Ljava/lang/String;

    move-result-object v6

    .line 564
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    new-instance v6, Lantlr/preprocessor/Rule;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v0, v5, p1}, Lantlr/preprocessor/Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;Lantlr/preprocessor/Grammar;)V

    .line 566
    invoke-virtual {v6, v8}, Lantlr/preprocessor/Rule;->setThrowsSpec(Ljava/lang/String;)V

    if-eqz v7, :cond_b

    .line 568
    invoke-virtual {v7}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lantlr/preprocessor/Rule;->setArgs(Ljava/lang/String;)V

    :cond_b
    if-eqz v9, :cond_c

    .line 571
    invoke-virtual {v9}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lantlr/preprocessor/Rule;->setReturnValue(Ljava/lang/String;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 574
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lantlr/preprocessor/Rule;->setInitAction(Ljava/lang/String;)V

    :cond_d
    if-eqz v2, :cond_e

    .line 577
    invoke-virtual {v6}, Lantlr/preprocessor/Rule;->setBang()V

    .line 579
    :cond_e
    invoke-virtual {v6, v1}, Lantlr/preprocessor/Rule;->setVisibility(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 581
    invoke-virtual {p1, v6}, Lantlr/preprocessor/Grammar;->addRule(Lantlr/preprocessor/Rule;)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 586
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 587
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 588
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_f
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lantlr/preprocessor/Preprocessor;->antlrTool:Lantlr/Tool;

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lantlr/preprocessor/Preprocessor;->antlrTool:Lantlr/Tool;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "antlr.Tool already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final throwsSpec()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const-string v0, "throws "

    const/16 v1, 0x16

    .line 600
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    const/4 v1, 0x1

    .line 601
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v3, 0x8

    .line 602
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 603
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v4, 0x17

    if-ne v2, v4, :cond_0

    .line 608
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 609
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 610
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 611
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 621
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 622
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 623
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/Parser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_0
    return-object v0
.end method
