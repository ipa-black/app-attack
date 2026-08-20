.class public Lantlr/ANTLRParser;
.super Lantlr/LLkParser;
.source "ANTLRParser.java"

# interfaces
.implements Lantlr/ANTLRTokenTypes;


# static fields
.field private static final DEBUG_PARSER:Z = false

.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_10:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_11:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_6:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_7:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_8:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_9:Lantlr/collections/impl/BitSet;


# instance fields
.field antlrTool:Lantlr/Tool;

.field behavior:Lantlr/ANTLRGrammarParseBehavior;

.field protected blockNesting:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    .line 2862
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

    const-string v2, "\"header\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STRING_LITERAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DOC_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"lexclass\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"class\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\"extends\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\"Lexer\""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\"TreeParser\""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ASSIGN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SEMI"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RCURLY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"charVocabulary\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CHAR_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "OR"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TOKENS"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TOKEN_REF"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "OPEN_ELEMENT_OPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CLOSE_ELEMENT_OPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "RULE_REF"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\"Parser\""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\"protected\""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\"public\""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\"private\""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "BANG"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ARG_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\"returns\""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "COLON"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\"throws\""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\"exception\""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\"catch\""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "NOT_OP"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "SEMPRED"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "TREE_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "QUESTION"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "STAR"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "IMPLIES"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "CARET"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "WILDCARD"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\"options\""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "SL_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ML_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "XDIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "NESTED_ARG_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "NESTED_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "WS_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "INTERNAL_RULE_REF"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "WS_OPT"

    aput-object v2, v0, v1

    sput-object v0, Lantlr/ANTLRParser;->_tokenNames:[Ljava/lang/String;

    .line 2933
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 2938
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 2943
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 2948
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 2953
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 2958
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 2963
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 2968
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    .line 2973
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    .line 2978
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_9()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    .line 2983
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_10()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    .line 2988
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRParser;->mk_tokenSet_11()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRParser;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x2

    .line 93
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lantlr/ANTLRParser;->blockNesting:I

    .line 94
    sget-object p1, Lantlr/ANTLRParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-direct {p0, p1, v0}, Lantlr/ANTLRParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lantlr/ANTLRParser;->blockNesting:I

    .line 76
    sget-object p1, Lantlr/ANTLRParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;Lantlr/ANTLRGrammarParseBehavior;Lantlr/Tool;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lantlr/ANTLRParser;->blockNesting:I

    .line 40
    sget-object p1, Lantlr/ANTLRParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    .line 42
    iput-object p3, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x2

    .line 89
    invoke-direct {p0, p1, v0}, Lantlr/ANTLRParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lantlr/ANTLRParser;->blockNesting:I

    .line 85
    sget-object p1, Lantlr/ANTLRParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private checkForMissingEndRule(Lantlr/Token;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v3, "did you forget to terminate previous rule?"

    invoke-virtual {v0, v3, v1, v2, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private lastInRule()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 62
    iget v0, p0, Lantlr/ANTLRParser;->blockNesting:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    .line 2930
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x391000100L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_1()[J
    .locals 1

    const/4 v0, 0x2

    .line 2935
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7f91004080L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_10()[J
    .locals 1

    const/4 v0, 0x2

    .line 2980
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff2c3b69c0c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_11()[J
    .locals 1

    const/4 v0, 0x2

    .line 2985
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x61c0c190800c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_2()[J
    .locals 1

    const/4 v0, 0x2

    .line 2940
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x41c00190800c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_3()[J
    .locals 1

    const/4 v0, 0x2

    .line 2945
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x41d0c3b2900c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_4()[J
    .locals 1

    const/4 v0, 0x2

    .line 2950
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x4040019080040L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_5()[J
    .locals 1

    const/4 v0, 0x2

    .line 2955
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x61d2c3b6940c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_6()[J
    .locals 1

    const/4 v0, 0x2

    .line 2960
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x61d0c3b6940c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_7()[J
    .locals 1

    const/4 v0, 0x2

    .line 2965
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x4000001080040L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_8()[J
    .locals 1

    const/4 v0, 0x2

    .line 2970
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x61d0c3b2900c0L
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_9()[J
    .locals 1

    const/4 v0, 0x2

    .line 2975
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x41d04392800c0L
        0x0
    .end array-data
.end method


# virtual methods
.method public final alternative()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1661
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x28

    const/16 v4, 0x15

    const/16 v5, 0x10

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1689
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1664
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1665
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :pswitch_0
    move v1, v0

    .line 1693
    :goto_0
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 1694
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v1}, Lantlr/ANTLRGrammarParseBehavior;->beginAlt(Z)V

    .line 1699
    :cond_2
    :goto_1
    sget-object v1, Lantlr/ANTLRParser;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1700
    invoke-virtual {p0}, Lantlr/ANTLRParser;->element()V

    goto :goto_1

    .line 1709
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_5

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_4

    .line 1712
    invoke-virtual {p0}, Lantlr/ANTLRParser;->exceptionSpecNoLabel()V

    goto :goto_2

    .line 1723
    :cond_4
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1727
    :cond_5
    :goto_2
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_6

    .line 1728
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->endAlt()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ast_type_spec()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2816
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_2

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    const/16 v2, 0x19

    if-eq v1, v2, :cond_2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 2854
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 2819
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2820
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 2827
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2828
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    :goto_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final block()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1610
    iget v0, p0, Lantlr/ANTLRParser;->blockNesting:I

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/ANTLRParser;->blockNesting:I

    .line 1612
    :cond_0
    invoke-virtual {p0}, Lantlr/ANTLRParser;->alternative()V

    .line 1616
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1

    .line 1617
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1618
    invoke-virtual {p0}, Lantlr/ANTLRParser;->alternative()V

    goto :goto_0

    .line 1626
    :cond_1
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_2

    .line 1627
    iget v0, p0, Lantlr/ANTLRParser;->blockNesting:I

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/ANTLRParser;->blockNesting:I

    :cond_2
    return-void
.end method

.method public final charSet()Lantlr/collections/impl/BitSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 978
    invoke-virtual {p0}, Lantlr/ANTLRParser;->setBlockElement()Lantlr/collections/impl/BitSet;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 982
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 983
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 984
    invoke-virtual {p0}, Lantlr/ANTLRParser;->setBlockElement()Lantlr/collections/impl/BitSet;

    move-result-object v1

    .line 985
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_0

    .line 986
    invoke-virtual {v0, v1}, Lantlr/collections/impl/BitSet;->orInPlace(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final classDef()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x8

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    .line 229
    :try_start_0
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 247
    new-instance v5, Lantlr/NoViableAltException;

    goto/16 :goto_9

    .line 232
    :pswitch_0
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v5

    const/4 v6, 0x7

    .line 233
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 234
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_0

    .line 235
    iget-object v6, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v6, v5}, Lantlr/ANTLRGrammarParseBehavior;->refPreambleAction(Lantlr/Token;)V

    .line 252
    :cond_0
    :pswitch_1
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 269
    new-instance v5, Lantlr/NoViableAltException;

    goto/16 :goto_8

    .line 255
    :pswitch_2
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v5

    .line 256
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 257
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_1

    .line 258
    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    :pswitch_3
    const/4 v5, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    const/16 v7, 0xb

    const/16 v8, 0x1c

    const/16 v9, 0x18

    const/4 v10, 0x2

    if-eq v6, v1, :cond_2

    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v3, :cond_3

    :cond_2
    invoke-virtual {p0, v10}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-eq v6, v9, :cond_4

    invoke-virtual {p0, v10}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v8, :cond_3

    goto :goto_1

    :cond_3
    move v11, v2

    goto :goto_4

    .line 276
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lantlr/Parser;->mark()I

    move-result v6

    .line 278
    iget-object v11, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v12, v11, Lantlr/ParserSharedInputState;->guessing:I

    add-int/2addr v12, v4

    iput v12, v11, Lantlr/ParserSharedInputState;->guessing:I
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 281
    :try_start_1
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v11

    if-eq v11, v1, :cond_6

    if-ne v11, v3, :cond_5

    .line 289
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 290
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    .line 291
    invoke-virtual {p0, v7}, Lantlr/Parser;->match(I)V

    const/16 v11, 0xc

    .line 292
    invoke-virtual {p0, v11}, Lantlr/Parser;->match(I)V

    goto :goto_2

    .line 297
    :cond_5
    new-instance v11, Lantlr/NoViableAltException;

    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v12

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v11

    .line 284
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v11, v4

    goto :goto_3

    :catch_0
    move v11, v2

    .line 305
    :goto_3
    :try_start_2
    invoke-virtual {p0, v6}, Lantlr/Parser;->rewind(I)V

    .line 306
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v12, v6, Lantlr/ParserSharedInputState;->guessing:I

    sub-int/2addr v12, v4

    iput v12, v6, Lantlr/ParserSharedInputState;->guessing:I

    :goto_4
    if-eqz v11, :cond_7

    .line 309
    invoke-virtual {p0, v5}, Lantlr/ANTLRParser;->lexerSpec(Ljava/lang/String;)V

    goto :goto_7

    .line 313
    :cond_7
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v3, :cond_9

    invoke-virtual {p0, v10}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-eq v6, v9, :cond_8

    invoke-virtual {p0, v10}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v8, :cond_9

    .line 314
    :cond_8
    invoke-virtual {p0}, Lantlr/Parser;->mark()I

    move-result v6

    .line 316
    iget-object v11, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v12, v11, Lantlr/ParserSharedInputState;->guessing:I

    add-int/2addr v12, v4

    iput v12, v11, Lantlr/ParserSharedInputState;->guessing:I
    :try_end_2
    .catch Lantlr/RecognitionException; {:try_start_2 .. :try_end_2} :catch_2

    .line 319
    :try_start_3
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 320
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    .line 321
    invoke-virtual {p0, v7}, Lantlr/Parser;->match(I)V

    const/16 v7, 0xd

    .line 322
    invoke-virtual {p0, v7}, Lantlr/Parser;->match(I)V
    :try_end_3
    .catch Lantlr/RecognitionException; {:try_start_3 .. :try_end_3} :catch_1

    move v7, v4

    goto :goto_5

    :catch_1
    move v7, v2

    .line 328
    :goto_5
    :try_start_4
    invoke-virtual {p0, v6}, Lantlr/Parser;->rewind(I)V

    .line 329
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v11, v6, Lantlr/ParserSharedInputState;->guessing:I

    sub-int/2addr v11, v4

    iput v11, v6, Lantlr/ParserSharedInputState;->guessing:I

    goto :goto_6

    :cond_9
    move v7, v2

    :goto_6
    if-eqz v7, :cond_a

    .line 332
    invoke-virtual {p0, v5}, Lantlr/ANTLRParser;->treeParserSpec(Ljava/lang/String;)V

    goto :goto_7

    .line 334
    :cond_a
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v3, :cond_c

    invoke-virtual {p0, v10}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-eq v6, v9, :cond_b

    invoke-virtual {p0, v10}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v8, :cond_c

    .line 335
    :cond_b
    invoke-virtual {p0, v5}, Lantlr/ANTLRParser;->parserSpec(Ljava/lang/String;)V

    .line 342
    :goto_7
    invoke-virtual {p0}, Lantlr/ANTLRParser;->rules()V

    .line 343
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_f

    .line 344
    iget-object v5, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v5}, Lantlr/ANTLRGrammarParseBehavior;->endGrammar()V

    goto/16 :goto_c

    .line 338
    :cond_c
    new-instance v5, Lantlr/NoViableAltException;

    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v6

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v5

    .line 269
    :goto_8
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v6

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v5

    .line 247
    :goto_9
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v6

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lantlr/RecognitionException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v5

    .line 348
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_12

    .line 350
    instance-of v6, v5, Lantlr/NoViableAltException;

    const-string v7, "rule classDef trapped:\n"

    if-eqz v6, :cond_e

    .line 351
    move-object v6, v5

    check-cast v6, Lantlr/NoViableAltException;

    .line 354
    iget-object v6, v6, Lantlr/NoViableAltException;->token:Lantlr/Token;

    invoke-virtual {v6}, Lantlr/Token;->getType()I

    move-result v6

    if-ne v6, v0, :cond_d

    .line 355
    const-string v0, "JAVADOC comments may only prefix rules and grammars"

    invoke-virtual {p0, v5, v0}, Lantlr/ANTLRParser;->reportError(Lantlr/RecognitionException;Ljava/lang/String;)V

    goto :goto_a

    .line 358
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lantlr/ANTLRParser;->reportError(Lantlr/RecognitionException;Ljava/lang/String;)V

    goto :goto_a

    .line 362
    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lantlr/ANTLRParser;->reportError(Lantlr/RecognitionException;Ljava/lang/String;)V

    .line 364
    :goto_a
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->abortGrammar()V

    move v0, v4

    :goto_b
    if-nez v0, :cond_10

    :cond_f
    :goto_c
    return-void

    .line 368
    :cond_10
    invoke-virtual {p0}, Lantlr/LLkParser;->consume()V

    .line 369
    invoke-virtual {p0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    if-eq v5, v4, :cond_11

    if-eq v5, v1, :cond_11

    if-eq v5, v3, :cond_11

    goto :goto_b

    :cond_11
    move v0, v2

    goto :goto_b

    .line 379
    :cond_12
    throw v5

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final ebnf(Lantlr/Token;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2576
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x1b

    .line 2577
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2578
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_0

    .line 2579
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, p1, v1, p2}, Lantlr/ANTLRGrammarParseBehavior;->beginSubRule(Lantlr/Token;Lantlr/Token;Z)V

    .line 2582
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    const/16 p2, 0xe

    const/16 v1, 0x25

    const/4 v2, 0x7

    if-ne p1, p2, :cond_4

    .line 2583
    invoke-virtual {p0}, Lantlr/ANTLRParser;->subruleOptionsSpec()V

    .line 2585
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 2601
    :cond_1
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2588
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p1

    .line 2589
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2590
    iget-object p2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p2, p2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p2, :cond_3

    .line 2591
    iget-object p2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p2, p1}, Lantlr/ANTLRGrammarParseBehavior;->refInitAction(Lantlr/Token;)V

    .line 2605
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    goto :goto_1

    .line 2607
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, v2, :cond_6

    invoke-virtual {p0, p2}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 2608
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p1

    .line 2609
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2610
    iget-object p2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p2, p2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p2, :cond_5

    .line 2611
    iget-object p2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p2, p1}, Lantlr/ANTLRGrammarParseBehavior;->refInitAction(Lantlr/Token;)V

    .line 2613
    :cond_5
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    goto :goto_1

    .line 2615
    :cond_6
    sget-object p1, Lantlr/ANTLRParser;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lantlr/ANTLRParser;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p2}, Lantlr/LLkParser;->LA(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2622
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->block()V

    const/16 p1, 0x1d

    .line 2623
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V

    .line 2625
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    const/16 p2, 0x19

    const/16 v1, 0x18

    const/16 v3, 0x32

    const/16 v4, 0x28

    const/16 v5, 0x15

    const/16 v6, 0x13

    const/16 v7, 0x10

    const/4 v8, 0x6

    const/16 v9, 0x22

    if-eq p1, v8, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v9, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, p2, :cond_7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 2743
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p1, 0x30

    .line 2735
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V

    .line 2736
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_a

    .line 2737
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->synPred()V

    goto/16 :goto_3

    .line 2647
    :cond_7
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v8, :cond_8

    if-eq p1, v2, :cond_8

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_8

    if-eq p1, v9, :cond_8

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_8

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 2693
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/16 p1, 0x2f

    .line 2666
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V

    .line 2667
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_8

    .line 2668
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->oneOrMoreSubRule()V

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x2e

    .line 2658
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V

    .line 2659
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_8

    .line 2660
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->zeroOrMoreSubRule()V

    goto :goto_2

    :pswitch_4
    const/16 p1, 0x2d

    .line 2650
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V

    .line 2651
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_8

    .line 2652
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->optionalSubRule()V

    .line 2698
    :cond_8
    :goto_2
    :pswitch_5
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v8, :cond_a

    if-eq p1, v2, :cond_a

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_a

    if-eq p1, v9, :cond_9

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_a

    if-eq p1, p2, :cond_a

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    .line 2727
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2701
    :cond_9
    invoke-virtual {p0, v9}, Lantlr/Parser;->match(I)V

    .line 2702
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_a

    .line 2703
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->noASTSubRule()V

    .line 2747
    :cond_a
    :goto_3
    :pswitch_6
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_b

    .line 2748
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->endSubRule()V

    :cond_b
    return-void

    .line 2618
    :cond_c
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1b
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2a
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final element()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1735
    invoke-virtual {p0}, Lantlr/ANTLRParser;->elementNoOptionSpec()V

    const/4 v0, 0x1

    .line 1737
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1762
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lantlr/ANTLRParser;->elementOptionSpec()V

    :cond_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final elementNoOptionSpec()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1883
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_22

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_21

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_20

    .line 1908
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v5, 0x25

    const/16 v6, 0x19

    const/16 v7, 0x32

    const/16 v8, 0x28

    const/16 v9, 0x15

    const/16 v10, 0x10

    const/4 v13, 0x6

    const/16 v14, 0x13

    const/16 v15, 0x1c

    const/4 v4, 0x2

    const/16 v12, 0x18

    const/16 v16, 0x0

    const/16 v23, 0x1

    if-eq v2, v12, :cond_0

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-ne v2, v15, :cond_e

    :cond_0
    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v11, 0xf

    if-ne v2, v11, :cond_e

    .line 1909
    invoke-virtual/range {p0 .. p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v25

    .line 1910
    invoke-virtual {v0, v11}, Lantlr/Parser;->match(I)V

    .line 1912
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v12, :cond_1

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-ne v2, v15, :cond_3

    :cond_1
    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1913
    invoke-virtual/range {p0 .. p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v2

    .line 1914
    invoke-virtual {v0, v5}, Lantlr/Parser;->match(I)V

    .line 1915
    iget-object v4, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v4, :cond_2

    .line 1916
    invoke-direct {v0, v2}, Lantlr/ANTLRParser;->checkForMissingEndRule(Lantlr/Token;)V

    :cond_2
    move-object/from16 v27, v2

    goto :goto_0

    .line 1919
    :cond_3
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v12, :cond_4

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-ne v2, v15, :cond_d

    :cond_4
    sget-object v2, Lantlr/ANTLRParser;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v27, v16

    .line 1927
    :goto_0
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v12, :cond_a

    if-ne v2, v15, :cond_9

    .line 1930
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v26

    .line 1931
    invoke-virtual {v0, v15}, Lantlr/Parser;->match(I)V

    .line 1933
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v13, :cond_6

    if-eq v2, v3, :cond_6

    if-eq v2, v10, :cond_6

    if-eq v2, v14, :cond_6

    if-eq v2, v9, :cond_6

    if-eq v2, v8, :cond_6

    if-eq v2, v7, :cond_6

    if-eq v2, v12, :cond_6

    if-eq v2, v6, :cond_6

    const/16 v4, 0x22

    if-eq v2, v4, :cond_6

    const/16 v4, 0x23

    if-eq v2, v4, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 1964
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 1936
    :cond_5
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 1937
    invoke-virtual {v0, v4}, Lantlr/Parser;->match(I)V

    .line 1938
    iget-object v4, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v4, :cond_6

    move-object/from16 v28, v2

    goto :goto_1

    :cond_6
    :pswitch_0
    move-object/from16 v28, v16

    .line 1969
    :goto_1
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v13, :cond_8

    if-eq v2, v3, :cond_8

    if-eq v2, v10, :cond_8

    if-eq v2, v14, :cond_8

    if-eq v2, v9, :cond_8

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    if-eq v2, v8, :cond_8

    if-eq v2, v7, :cond_8

    if-eq v2, v12, :cond_8

    if-eq v2, v6, :cond_8

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 1998
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    :cond_7
    move v1, v3

    .line 1972
    invoke-virtual {v0, v1}, Lantlr/Parser;->match(I)V

    .line 1973
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_8

    const/16 v29, 0x3

    goto :goto_2

    :cond_8
    :pswitch_1
    move/from16 v29, v23

    .line 2002
    :goto_2
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_23

    .line 2003
    iget-object v1, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    move-object/from16 v24, v1

    invoke-interface/range {v24 .. v29}, Lantlr/ANTLRGrammarParseBehavior;->refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V

    goto/16 :goto_7

    .line 2053
    :cond_9
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2009
    :cond_a
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v19

    .line 2010
    invoke-virtual {v0, v12}, Lantlr/Parser;->match(I)V

    .line 2012
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v13, :cond_c

    if-eq v2, v3, :cond_c

    if-eq v2, v10, :cond_c

    if-eq v2, v14, :cond_c

    if-eq v2, v9, :cond_c

    const/16 v3, 0x23

    if-eq v2, v3, :cond_b

    if-eq v2, v8, :cond_c

    if-eq v2, v7, :cond_c

    if-eq v2, v12, :cond_c

    if-eq v2, v6, :cond_c

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    .line 2042
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2015
    :cond_b
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x23

    .line 2016
    invoke-virtual {v0, v2}, Lantlr/Parser;->match(I)V

    .line 2017
    iget-object v2, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_c

    move-object/from16 v21, v1

    goto :goto_3

    :cond_c
    :pswitch_2
    move-object/from16 v21, v16

    .line 2046
    :goto_3
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_23

    .line 2047
    iget-object v1, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/16 v22, 0x0

    invoke-direct/range {p0 .. p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v24

    move-object/from16 v17, v1

    move-object/from16 v18, v25

    move-object/from16 v20, v27

    invoke-interface/range {v17 .. v24}, Lantlr/ANTLRGrammarParseBehavior;->refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    goto/16 :goto_7

    .line 1922
    :cond_d
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2058
    :cond_e
    sget-object v2, Lantlr/ANTLRParser;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v11

    invoke-virtual {v2, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v11

    if-eqz v11, :cond_1f

    sget-object v11, Lantlr/ANTLRParser;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    invoke-virtual {v11, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2060
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-eq v6, v12, :cond_f

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v15, :cond_10

    :cond_f
    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    if-ne v6, v5, :cond_10

    .line 2061
    invoke-virtual/range {p0 .. p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v2

    .line 2062
    invoke-virtual {v0, v5}, Lantlr/Parser;->match(I)V

    .line 2063
    iget-object v5, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_11

    .line 2064
    invoke-direct {v0, v2}, Lantlr/ANTLRParser;->checkForMissingEndRule(Lantlr/Token;)V

    goto :goto_4

    .line 2067
    :cond_10
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lantlr/ANTLRParser;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v2, v16

    .line 2075
    :cond_11
    :goto_4
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_1d

    if-eq v5, v15, :cond_18

    const/16 v3, 0x2a

    if-eq v5, v3, :cond_15

    .line 2185
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    if-eq v3, v13, :cond_12

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    if-eq v3, v14, :cond_12

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    if-ne v3, v12, :cond_13

    :cond_12
    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    const/16 v5, 0x16

    if-ne v3, v5, :cond_13

    .line 2186
    invoke-virtual {v0, v2}, Lantlr/ANTLRParser;->range(Lantlr/Token;)V

    goto/16 :goto_7

    .line 2188
    :cond_13
    sget-object v3, Lantlr/ANTLRParser;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lantlr/ANTLRParser;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2189
    invoke-virtual {v0, v2}, Lantlr/ANTLRParser;->terminal(Lantlr/Token;)V

    goto/16 :goto_7

    .line 2192
    :cond_14
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2157
    :cond_15
    invoke-virtual {v0, v3}, Lantlr/Parser;->match(I)V

    .line 2159
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    if-eq v3, v14, :cond_17

    if-eq v3, v12, :cond_17

    if-ne v3, v6, :cond_16

    .line 2168
    invoke-virtual {v0, v2, v1}, Lantlr/ANTLRParser;->ebnf(Lantlr/Token;Z)V

    goto/16 :goto_7

    .line 2173
    :cond_16
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2163
    :cond_17
    invoke-virtual {v0, v2}, Lantlr/ANTLRParser;->notTerminal(Lantlr/Token;)V

    goto/16 :goto_7

    .line 2078
    :cond_18
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v26

    .line 2079
    invoke-virtual {v0, v15}, Lantlr/Parser;->match(I)V

    .line 2081
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    if-eq v4, v13, :cond_1a

    if-eq v4, v3, :cond_1a

    if-eq v4, v10, :cond_1a

    if-eq v4, v14, :cond_1a

    if-eq v4, v9, :cond_1a

    if-eq v4, v8, :cond_1a

    if-eq v4, v7, :cond_1a

    if-eq v4, v12, :cond_1a

    const/16 v5, 0x19

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x23

    if-eq v4, v5, :cond_19

    packed-switch v4, :pswitch_data_6

    packed-switch v4, :pswitch_data_7

    .line 2112
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2084
    :cond_19
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 2085
    invoke-virtual {v0, v5}, Lantlr/Parser;->match(I)V

    .line 2086
    iget-object v5, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_1a

    move-object/from16 v28, v4

    goto :goto_5

    :cond_1a
    :pswitch_3
    move-object/from16 v28, v16

    .line 2117
    :goto_5
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    if-eq v4, v13, :cond_1c

    if-eq v4, v3, :cond_1c

    if-eq v4, v10, :cond_1c

    if-eq v4, v14, :cond_1c

    if-eq v4, v9, :cond_1c

    const/16 v3, 0x22

    if-eq v4, v3, :cond_1b

    if-eq v4, v8, :cond_1c

    if-eq v4, v7, :cond_1c

    if-eq v4, v12, :cond_1c

    const/16 v3, 0x19

    if-eq v4, v3, :cond_1c

    packed-switch v4, :pswitch_data_8

    packed-switch v4, :pswitch_data_9

    .line 2146
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    :cond_1b
    move v1, v3

    .line 2120
    invoke-virtual {v0, v1}, Lantlr/Parser;->match(I)V

    .line 2121
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_1c

    const/16 v29, 0x3

    goto :goto_6

    :cond_1c
    :pswitch_4
    move/from16 v29, v23

    .line 2150
    :goto_6
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_23

    .line 2151
    iget-object v1, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/16 v25, 0x0

    move-object/from16 v24, v1

    move-object/from16 v27, v2

    invoke-interface/range {v24 .. v29}, Lantlr/ANTLRGrammarParseBehavior;->refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V

    goto :goto_7

    :cond_1d
    const/4 v1, 0x0

    .line 2181
    invoke-virtual {v0, v2, v1}, Lantlr/ANTLRParser;->ebnf(Lantlr/Token;Z)V

    goto :goto_7

    .line 2070
    :cond_1e
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2198
    :cond_1f
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 1904
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lantlr/ANTLRParser;->tree()V

    goto :goto_7

    .line 1895
    :cond_21
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 1896
    invoke-virtual {v0, v4}, Lantlr/Parser;->match(I)V

    .line 1897
    iget-object v2, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_23

    .line 1898
    iget-object v2, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v1}, Lantlr/ANTLRGrammarParseBehavior;->refSemPred(Lantlr/Token;)V

    goto :goto_7

    .line 1886
    :cond_22
    invoke-virtual {v0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 1887
    invoke-virtual {v0, v3}, Lantlr/Parser;->match(I)V

    .line 1888
    iget-object v2, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_23

    .line 1889
    iget-object v2, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v1}, Lantlr/ANTLRGrammarParseBehavior;->refAction(Lantlr/Token;)V

    :cond_23
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1b
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1b
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final elementOptionSpec()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x19

    .line 2209
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 2210
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 2211
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 2212
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v2

    .line 2213
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 2214
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v3, v0, v2}, Lantlr/ANTLRGrammarParseBehavior;->refElementOption(Lantlr/Token;Lantlr/Token;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 2219
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    .line 2220
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2221
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    .line 2222
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 2223
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v2

    .line 2224
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 2225
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v3, v0, v2}, Lantlr/ANTLRGrammarParseBehavior;->refElementOption(Lantlr/Token;Lantlr/Token;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    .line 2234
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void
.end method

.method public final exceptionGroup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_0

    .line 1635
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->beginExceptionGroup()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 1641
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    .line 1642
    invoke-virtual {p0}, Lantlr/ANTLRParser;->exceptionSpec()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lt v0, v1, :cond_3

    .line 1651
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_2

    .line 1652
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->endExceptionGroup()V

    :cond_2
    return-void

    .line 1645
    :cond_3
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0
.end method

.method public final exceptionHandler()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x29

    .line 1856
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    const/4 v0, 0x1

    .line 1857
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x23

    .line 1858
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1859
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    const/4 v2, 0x7

    .line 1860
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1861
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_0

    .line 1862
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v1, v0}, Lantlr/ANTLRGrammarParseBehavior;->refExceptionHandler(Lantlr/Token;Lantlr/Token;)V

    :cond_0
    return-void
.end method

.method public final exceptionSpec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 1797
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    const/4 v1, 0x1

    .line 1799
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v1, :cond_1

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    const/16 v4, 0x1c

    if-eq v2, v4, :cond_1

    const/16 v4, 0x23

    if-eq v2, v4, :cond_0

    if-eq v2, v0, :cond_1

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 1826
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1802
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 1803
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 1804
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :pswitch_0
    const/4 v0, 0x0

    .line 1830
    :goto_0
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 1831
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v0}, Lantlr/ANTLRGrammarParseBehavior;->beginExceptionSpec(Lantlr/Token;)V

    .line 1836
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1837
    invoke-virtual {p0}, Lantlr/ANTLRParser;->exceptionHandler()V

    goto :goto_1

    .line 1845
    :cond_3
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_4

    .line 1846
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->endExceptionSpec()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final exceptionSpecNoLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 1771
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 1772
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_0

    .line 1773
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lantlr/ANTLRGrammarParseBehavior;->beginExceptionSpec(Lantlr/Token;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1778
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    .line 1779
    invoke-virtual {p0}, Lantlr/ANTLRParser;->exceptionHandler()V

    goto :goto_0

    .line 1787
    :cond_1
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_2

    .line 1788
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->endExceptionSpec()V

    :cond_2
    return-void
.end method

.method public final fileOptionsSpec()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 199
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    :goto_0
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    .line 218
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 204
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 205
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 206
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 208
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-virtual {p0}, Lantlr/Parser;->getInputState()Lantlr/ParserSharedInputState;

    move-result-object v3

    iget-object v3, v3, Lantlr/ParserSharedInputState;->filename:Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3}, Lantlr/ANTLRGrammarParseBehavior;->setFileOption(Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x10

    .line 210
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    goto :goto_0
.end method

.method public final grammar()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 106
    :try_start_0
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x7

    if-ne v3, v4, :cond_4

    .line 107
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_1

    move-object v1, v0

    .line 113
    :cond_1
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 115
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 132
    :goto_1
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v3

    .line 133
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 134
    iget-object v4, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v4, :cond_0

    .line 138
    iget-object v4, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v4, v1, v3}, Lantlr/ANTLRGrammarParseBehavior;->refHeaderAction(Lantlr/Token;Lantlr/Token;)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 165
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_5
    invoke-virtual {p0}, Lantlr/ANTLRParser;->fileOptionsSpec()V

    .line 172
    :cond_6
    :goto_2
    :pswitch_0
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    if-lt v0, v5, :cond_7

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_7

    .line 173
    invoke-virtual {p0}, Lantlr/ANTLRParser;->classDef()V

    goto :goto_2

    .line 181
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 184
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_8

    .line 186
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "rule grammar trapped:\n"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lantlr/ANTLRParser;->reportError(Lantlr/RecognitionException;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v2}, Lantlr/Parser;->consumeUntil(I)V

    :goto_3
    return-void

    .line 190
    :cond_8
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final id()Lantlr/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 404
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 405
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_2

    goto :goto_0

    .line 412
    :cond_0
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 395
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 396
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final lexerOptionsSpec()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 932
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 936
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0xf

    const/16 v3, 0x12

    if-eq v0, v3, :cond_3

    const/16 v3, 0x18

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_1

    const/16 v0, 0x11

    .line 967
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 951
    :cond_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    .line 952
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 953
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v2

    .line 954
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_2

    .line 955
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v3, v0, v2}, Lantlr/ANTLRGrammarParseBehavior;->setGrammarOption(Lantlr/Token;Lantlr/Token;)V

    .line 957
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 940
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 941
    invoke-virtual {p0}, Lantlr/ANTLRParser;->charSet()Lantlr/collections/impl/BitSet;

    move-result-object v0

    .line 942
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 943
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_0

    .line 944
    iget-object v1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v1, v0}, Lantlr/ANTLRGrammarParseBehavior;->setCharVocabulary(Lantlr/collections/impl/BitSet;)V

    goto :goto_0
.end method

.method public final lexerSpec(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 447
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 448
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v1

    const/16 v3, 0xb

    .line 449
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    const/16 v3, 0xc

    .line 450
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 452
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_0

    .line 455
    invoke-virtual {p0}, Lantlr/ANTLRParser;->superClass()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 464
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_1
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 434
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 435
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v3

    .line 436
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_3

    .line 438
    iget-object v5, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lantlr/Token;->getLine()I

    move-result v7

    invoke-virtual {v1}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v8, "lexclass\' is deprecated; use \'class X extends Lexer\'"

    invoke-virtual {v5, v8, v6, v7, v1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    move-object v1, v3

    .line 476
    :cond_4
    :goto_0
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_5

    .line 477
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1, v4, p1}, Lantlr/ANTLRGrammarParseBehavior;->startLexer(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 481
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    const/16 v1, 0x17

    const/16 v2, 0x18

    const/16 v3, 0x1c

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    const/16 v6, 0xe

    if-eq p1, v6, :cond_6

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_7

    packed-switch p1, :pswitch_data_0

    .line 500
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 484
    :cond_6
    invoke-virtual {p0}, Lantlr/ANTLRParser;->lexerOptionsSpec()V

    .line 504
    :cond_7
    :pswitch_0
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_8

    .line 505
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->endOptions()V

    .line 508
    :cond_8
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v2, :cond_a

    if-eq p1, v3, :cond_a

    packed-switch p1, :pswitch_data_1

    .line 526
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 511
    :cond_9
    invoke-virtual {p0}, Lantlr/ANTLRParser;->tokensSpec()V

    .line 531
    :cond_a
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_c

    if-eq p1, v2, :cond_c

    if-eq p1, v3, :cond_c

    packed-switch p1, :pswitch_data_2

    .line 552
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 534
    :cond_b
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p1

    .line 535
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 536
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_c

    .line 537
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0, p1}, Lantlr/ANTLRGrammarParseBehavior;->refMemberAction(Lantlr/Token;)V

    :cond_c
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final notTerminal(Lantlr/Token;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2507
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x13

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 2553
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v6

    .line 2554
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2555
    invoke-virtual {p0}, Lantlr/ANTLRParser;->ast_type_spec()I

    move-result v10

    .line 2556
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_4

    .line 2557
    iget-object v4, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/4 v9, 0x1

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v11

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    invoke-interface/range {v4 .. v11}, Lantlr/ANTLRGrammarParseBehavior;->refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    goto/16 :goto_0

    .line 2563
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2510
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2511
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2513
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    if-eq v4, v3, :cond_3

    const/16 v3, 0x15

    if-eq v4, v3, :cond_3

    const/16 v3, 0x22

    if-eq v4, v3, :cond_2

    const/16 v3, 0x28

    if-eq v4, v3, :cond_3

    const/16 v3, 0x32

    if-eq v4, v3, :cond_3

    if-eq v4, v2, :cond_3

    const/16 v2, 0x19

    if-eq v4, v2, :cond_3

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 2542
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2516
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2517
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_3

    const/4 v0, 0x3

    :cond_3
    :pswitch_0
    move v6, v0

    .line 2546
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_4

    .line 2547
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/4 v5, 0x1

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v7

    move-object v3, v1

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lantlr/ANTLRGrammarParseBehavior;->refCharLiteral(Lantlr/Token;Lantlr/Token;ZIZ)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final optionValue()Lantlr/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 834
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 861
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 862
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 863
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_4

    goto :goto_0

    .line 870
    :cond_0
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 852
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 853
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 854
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_4

    goto :goto_0

    .line 838
    :cond_2
    invoke-virtual {p0}, Lantlr/ANTLRParser;->qualifiedID()Lantlr/Token;

    move-result-object v0

    goto :goto_0

    .line 843
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 844
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 845
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final parserOptionsSpec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 880
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    :goto_0
    const/4 v0, 0x1

    .line 884
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    .line 899
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 885
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 886
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 887
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v1

    .line 888
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 889
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v0, v1}, Lantlr/ANTLRGrammarParseBehavior;->setGrammarOption(Lantlr/Token;Lantlr/Token;)V

    :cond_2
    const/16 v0, 0x10

    .line 891
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    goto :goto_0
.end method

.method public final parserSpec(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 681
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 682
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/4 v1, 0x1

    .line 684
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0x10

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    .line 710
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_3

    .line 712
    iget-object v2, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lantlr/Token;->getLine()I

    move-result v5

    invoke-virtual {v0}, Lantlr/Token;->getColumn()I

    move-result v6

    const-string v7, "use \'class X extends Parser\'"

    invoke-virtual {v2, v7, v3, v5, v6}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 721
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 687
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    const/16 v2, 0x1e

    .line 688
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 690
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_2

    .line 693
    invoke-virtual {p0}, Lantlr/ANTLRParser;->superClass()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 702
    :cond_2
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 725
    :goto_1
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_4

    .line 726
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0, v2, p1}, Lantlr/ANTLRGrammarParseBehavior;->startParser(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_4
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 730
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    const/16 v0, 0x17

    const/16 v2, 0x18

    const/16 v3, 0x1c

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    const/16 v6, 0xe

    if-eq p1, v6, :cond_5

    if-eq p1, v3, :cond_6

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 749
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 733
    :cond_5
    invoke-virtual {p0}, Lantlr/ANTLRParser;->parserOptionsSpec()V

    .line 753
    :cond_6
    :pswitch_0
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_7

    .line 754
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->endOptions()V

    .line 757
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_9

    if-eq p1, v0, :cond_8

    if-eq p1, v2, :cond_9

    if-eq p1, v3, :cond_9

    packed-switch p1, :pswitch_data_1

    .line 775
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 760
    :cond_8
    invoke-virtual {p0}, Lantlr/ANTLRParser;->tokensSpec()V

    .line 780
    :cond_9
    :pswitch_1
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_b

    if-eq p1, v2, :cond_b

    if-eq p1, v3, :cond_b

    packed-switch p1, :pswitch_data_2

    .line 801
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 783
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p1

    .line 784
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 785
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_b

    .line 786
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0, p1}, Lantlr/ANTLRGrammarParseBehavior;->refMemberAction(Lantlr/Token;)V

    :cond_b
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final qualifiedID()Lantlr/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1031
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1035
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v1

    .line 1036
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_0

    .line 1037
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 1042
    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1

    .line 1043
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 1044
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v1

    .line 1045
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    .line 1046
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 1059
    new-instance v2, Lantlr/CommonToken;

    const/16 v3, 0x18

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    .line 1060
    invoke-virtual {v1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {v2, v0}, Lantlr/Token;->setLine(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public final range(Lantlr/Token;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2253
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x16

    const/16 v3, 0x18

    const/4 v4, 0x6

    if-eq v1, v4, :cond_4

    const/16 v5, 0x13

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    .line 2364
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2256
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2257
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 2258
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2259
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v6

    .line 2260
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 2262
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_3

    const/16 v4, 0x15

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    const/16 v3, 0x19

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 2291
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2265
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 2266
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_3

    const/4 v0, 0x3

    .line 2295
    :cond_3
    :pswitch_0
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_b

    .line 2296
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v7

    move-object v3, v1

    move-object v4, v6

    move-object v5, p1

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lantlr/ANTLRGrammarParseBehavior;->refCharRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V

    goto/16 :goto_5

    .line 2304
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_6

    if-ne v1, v3, :cond_5

    .line 2307
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2308
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2309
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_7

    goto :goto_1

    .line 2325
    :cond_5
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2316
    :cond_6
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2317
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 2318
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_7

    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_7
    move-object v8, v5

    .line 2329
    :goto_2
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2331
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v4, :cond_9

    if-ne v1, v3, :cond_8

    .line 2334
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 2335
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2336
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_a

    goto :goto_3

    .line 2352
    :cond_8
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 2343
    :cond_9
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 2344
    invoke-virtual {p0, v4}, Lantlr/Parser;->match(I)V

    .line 2345
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_a

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_a
    move-object v9, v5

    .line 2356
    :goto_4
    invoke-virtual {p0}, Lantlr/ANTLRParser;->ast_type_spec()I

    move-result v11

    .line 2357
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_b

    .line 2358
    iget-object v7, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v12

    move-object v10, p1

    invoke-interface/range {v7 .. v12}, Lantlr/ANTLRGrammarParseBehavior;->refTokenRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V

    :cond_b
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lantlr/RecognitionException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lantlr/ANTLRParser;->reportError(Lantlr/RecognitionException;Ljava/lang/String;)V

    return-void
.end method

.method public reportError(Lantlr/RecognitionException;Ljava/lang/String;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p1}, Lantlr/RecognitionException;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/RecognitionException;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/RecognitionException;->getColumn()I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final rootNode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2793
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1

    .line 2794
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    .line 2795
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2796
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_2

    .line 2797
    invoke-direct {p0, v0}, Lantlr/ANTLRParser;->checkForMissingEndRule(Lantlr/Token;)V

    goto :goto_0

    .line 2800
    :cond_1
    sget-object v1, Lantlr/ANTLRParser;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lantlr/ANTLRParser;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 2807
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRParser;->terminal(Lantlr/Token;)V

    return-void

    .line 2803
    :cond_3
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1
.end method

.method public final rule()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1306
    iput v0, p0, Lantlr/ANTLRParser;->blockNesting:I

    const/4 v0, 0x1

    .line 1310
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x1c

    const/16 v4, 0x18

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 1330
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1313
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 1314
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1315
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_1

    .line 1316
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    :pswitch_0
    const/4 v1, 0x0

    .line 1335
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_1

    .line 1370
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1356
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v5, 0x21

    .line 1357
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 1358
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_2

    .line 1359
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1347
    :pswitch_2
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v5, 0x20

    .line 1348
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 1349
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_2

    .line 1350
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1338
    :pswitch_3
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v5, 0x1f

    .line 1339
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 1340
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_2

    .line 1341
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1374
    :cond_2
    const-string v2, "public"

    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v5

    .line 1376
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v6

    const/16 v7, 0xe

    const/4 v8, 0x7

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_3

    packed-switch v6, :pswitch_data_2

    .line 1396
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    :pswitch_4
    const/16 v6, 0x22

    .line 1379
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 1380
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :pswitch_5
    move v6, v0

    .line 1400
    :goto_2
    iget-object v9, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v9, v9, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v9, :cond_4

    .line 1402
    iget-object v9, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v9, v5, v2, v6, v1}, Lantlr/ANTLRGrammarParseBehavior;->defineRuleName(Lantlr/Token;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1406
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_5

    packed-switch v1, :pswitch_data_3

    .line 1426
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1409
    :pswitch_6
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 1410
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1411
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_5

    .line 1412
    iget-object v6, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v6, v1}, Lantlr/ANTLRGrammarParseBehavior;->refArgAction(Lantlr/Token;)V

    .line 1431
    :cond_5
    :pswitch_7
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_6

    packed-switch v1, :pswitch_data_4

    .line 1451
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    :pswitch_8
    const/16 v1, 0x24

    .line 1434
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 1435
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 1436
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1437
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_6

    .line 1438
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v1}, Lantlr/ANTLRGrammarParseBehavior;->refReturnAction(Lantlr/Token;)V

    .line 1456
    :cond_6
    :pswitch_9
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_8

    if-eq v1, v2, :cond_8

    const/16 v6, 0x26

    if-ne v1, v6, :cond_7

    .line 1459
    invoke-virtual {p0}, Lantlr/ANTLRParser;->throwsSpec()V

    goto :goto_3

    .line 1470
    :cond_7
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1475
    :cond_8
    :goto_3
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v8, :cond_b

    if-eq v1, v7, :cond_a

    if-ne v1, v2, :cond_9

    goto :goto_4

    .line 1488
    :cond_9
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1478
    :cond_a
    invoke-virtual {p0}, Lantlr/ANTLRParser;->ruleOptionsSpec()V

    .line 1493
    :cond_b
    :goto_4
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v8, :cond_d

    if-ne v1, v2, :cond_c

    goto :goto_5

    .line 1509
    :cond_c
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1496
    :cond_d
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 1497
    invoke-virtual {p0, v8}, Lantlr/Parser;->match(I)V

    .line 1498
    iget-object v6, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v6, v6, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v6, :cond_e

    .line 1499
    iget-object v6, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v6, v1}, Lantlr/ANTLRGrammarParseBehavior;->refInitAction(Lantlr/Token;)V

    .line 1513
    :cond_e
    :goto_5
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1514
    invoke-virtual {p0}, Lantlr/ANTLRParser;->block()V

    const/16 v1, 0x10

    .line 1515
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 1517
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    if-eq v1, v0, :cond_10

    if-eq v1, v4, :cond_10

    if-eq v1, v3, :cond_10

    const/16 v2, 0x28

    if-eq v1, v2, :cond_f

    packed-switch v1, :pswitch_data_5

    packed-switch v1, :pswitch_data_6

    .line 1538
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 1520
    :cond_f
    invoke-virtual {p0}, Lantlr/ANTLRParser;->exceptionGroup()V

    .line 1542
    :cond_10
    :pswitch_a
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_11

    .line 1543
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lantlr/ANTLRGrammarParseBehavior;->endRule(Ljava/lang/String;)V

    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x23
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x24
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1f
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final ruleOptionsSpec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1584
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    :goto_0
    const/4 v0, 0x1

    .line 1588
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    .line 1603
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 1589
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 1590
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 1591
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v1

    .line 1592
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 1593
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v0, v1}, Lantlr/ANTLRGrammarParseBehavior;->setRuleOption(Lantlr/Token;Lantlr/Token;)V

    :cond_2
    const/16 v0, 0x10

    .line 1595
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    goto :goto_0
.end method

.method public final rules()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 814
    :goto_0
    sget-object v1, Lantlr/ANTLRParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lantlr/ANTLRParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {p0}, Lantlr/ANTLRParser;->rule()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    return-void

    .line 818
    :cond_1
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0
.end method

.method public final setBlockElement()Lantlr/collections/impl/BitSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1076
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x13

    .line 1077
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1078
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 1080
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v3

    .line 1081
    invoke-static {v3}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1085
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_4

    const/16 v6, 0x15

    if-eq v5, v6, :cond_4

    const/16 v6, 0x16

    if-ne v5, v6, :cond_3

    .line 1088
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 1089
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v5

    .line 1090
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1091
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_4

    .line 1093
    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1095
    iget-object v5, p0, Lantlr/ANTLRParser;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lantlr/Token;->getLine()I

    move-result v7

    invoke-virtual {v1}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v8, "Malformed range line "

    invoke-virtual {v5, v8, v6, v7, v1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    add-int/2addr v3, v0

    :goto_1
    if-le v3, v2, :cond_2

    goto :goto_2

    .line 1098
    :cond_2
    invoke-virtual {v4, v3}, Lantlr/collections/impl/BitSet;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1111
    :cond_3
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    return-object v4
.end method

.method public final subruleOptionsSpec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1002
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    :goto_0
    const/4 v0, 0x1

    .line 1006
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    .line 1021
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 1007
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 1008
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 1009
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v1

    .line 1010
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 1011
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v0, v1}, Lantlr/ANTLRGrammarParseBehavior;->setSubruleOption(Lantlr/Token;Lantlr/Token;)V

    :cond_2
    const/16 v0, 0x10

    .line 1013
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    goto :goto_0
.end method

.method public final superClass()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1266
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 1267
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1268
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1271
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0x18

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1

    .line 1279
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    goto :goto_1

    .line 1284
    :cond_1
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    :goto_1
    const/16 v1, 0x1d

    .line 1288
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    return-object v0
.end method

.method public final terminal(Lantlr/Token;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p1

    const/4 v1, 0x1

    .line 2383
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    const/16 v5, 0x19

    const/16 v6, 0x28

    const/16 v7, 0x15

    const/16 v8, 0x10

    const/4 v9, 0x7

    const/16 v10, 0x32

    const/16 v11, 0x18

    const/16 v12, 0x13

    if-eq v2, v12, :cond_4

    if-eq v2, v11, :cond_1

    if-ne v2, v10, :cond_0

    .line 2484
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2485
    invoke-virtual {p0, v10}, Lantlr/Parser;->match(I)V

    .line 2486
    invoke-virtual {p0}, Lantlr/ANTLRParser;->ast_type_spec()I

    move-result v2

    .line 2487
    iget-object v3, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_8

    .line 2488
    iget-object v3, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v3, v1, v4, v2}, Lantlr/ANTLRGrammarParseBehavior;->refWildcard(Lantlr/Token;Lantlr/Token;I)V

    goto/16 :goto_1

    .line 2494
    :cond_0
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2429
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v13

    .line 2430
    invoke-virtual {p0, v11}, Lantlr/Parser;->match(I)V

    .line 2431
    invoke-virtual {p0}, Lantlr/ANTLRParser;->ast_type_spec()I

    move-result v14

    .line 2433
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    if-eq v2, v3, :cond_3

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_3

    if-eq v2, v12, :cond_3

    if-eq v2, v7, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    if-eq v2, v6, :cond_3

    if-eq v2, v10, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v2, v5, :cond_3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 2463
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2436
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2437
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2438
    iget-object v2, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    .line 2467
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_8

    .line 2468
    iget-object v1, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/4 v6, 0x0

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v8

    const/4 v2, 0x0

    move-object v3, v13

    move-object/from16 v4, p1

    move v7, v14

    invoke-interface/range {v1 .. v8}, Lantlr/ANTLRGrammarParseBehavior;->refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    goto/16 :goto_1

    .line 2386
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 2387
    invoke-virtual {p0, v12}, Lantlr/Parser;->match(I)V

    .line 2389
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v13

    if-eq v13, v3, :cond_6

    if-eq v13, v9, :cond_6

    if-eq v13, v8, :cond_6

    if-eq v13, v12, :cond_6

    if-eq v13, v7, :cond_6

    const/16 v3, 0x22

    if-eq v13, v3, :cond_5

    if-eq v13, v6, :cond_6

    if-eq v13, v10, :cond_6

    if-eq v13, v11, :cond_6

    if-eq v13, v5, :cond_6

    packed-switch v13, :pswitch_data_2

    packed-switch v13, :pswitch_data_3

    .line 2418
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 2392
    :cond_5
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2393
    iget-object v3, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_6

    const/4 v1, 0x3

    :cond_6
    :pswitch_1
    move v5, v1

    .line 2422
    iget-object v1, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_8

    .line 2423
    iget-object v1, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    const/4 v6, 0x0

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v7

    move-object/from16 v3, p1

    move v4, v6

    move v6, v7

    invoke-interface/range {v1 .. v6}, Lantlr/ANTLRGrammarParseBehavior;->refCharLiteral(Lantlr/Token;Lantlr/Token;ZIZ)V

    goto :goto_1

    .line 2474
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 2475
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 2476
    invoke-virtual {p0}, Lantlr/ANTLRParser;->ast_type_spec()I

    move-result v2

    .line 2477
    iget-object v3, v0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_8

    .line 2478
    iget-object v3, v0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-direct {p0}, Lantlr/ANTLRParser;->lastInRule()Z

    move-result v5

    invoke-interface {v3, v1, v4, v2, v5}, Lantlr/ANTLRGrammarParseBehavior;->refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final throwsSpec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x26

    .line 1554
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 1555
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_0

    .line 1557
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1562
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 1563
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1564
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v1

    .line 1565
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_1

    .line 1566
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1575
    :cond_2
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_3

    .line 1576
    iget-object v1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v1, v0}, Lantlr/ANTLRGrammarParseBehavior;->setUserExceptions(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final tokensSpec()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x17

    .line 1124
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    .line 1129
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    const/16 v5, 0x18

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-lt v1, v3, :cond_1

    const/16 v0, 0x11

    .line 1222
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 1216
    :cond_1
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v4

    const/16 v7, 0x19

    const/16 v8, 0x10

    if-eq v4, v6, :cond_a

    if-ne v4, v5, :cond_9

    .line 1134
    iget-object v4, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v4, :cond_3

    move-object v2, v0

    .line 1137
    :cond_3
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 1138
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 1140
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    const/16 v9, 0xf

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_6

    if-ne v5, v7, :cond_4

    goto :goto_2

    .line 1155
    :cond_4
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_5
    invoke-virtual {p0, v9}, Lantlr/Parser;->match(I)V

    .line 1144
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 1145
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 1159
    :cond_6
    :goto_2
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_7

    .line 1160
    iget-object v5, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v5, v4, v2}, Lantlr/ANTLRGrammarParseBehavior;->defineToken(Lantlr/Token;Lantlr/Token;)V

    .line 1163
    :cond_7
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    if-eq v5, v8, :cond_d

    if-ne v5, v7, :cond_8

    .line 1166
    invoke-virtual {p0, v4}, Lantlr/ANTLRParser;->tokensSpecOptions(Lantlr/Token;)V

    goto :goto_3

    .line 1175
    :cond_8
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_9
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_a
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 1184
    invoke-virtual {p0, v6}, Lantlr/Parser;->match(I)V

    .line 1185
    iget-object v5, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v5, v5, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v5, :cond_b

    .line 1186
    iget-object v5, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v5, v0, v4}, Lantlr/ANTLRGrammarParseBehavior;->defineToken(Lantlr/Token;Lantlr/Token;)V

    .line 1189
    :cond_b
    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LA(I)I

    move-result v5

    if-eq v5, v8, :cond_d

    if-ne v5, v7, :cond_c

    .line 1192
    invoke-virtual {p0, v4}, Lantlr/ANTLRParser;->tokensSpecOptions(Lantlr/Token;)V

    goto :goto_3

    .line 1201
    :cond_c
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v3}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_d
    :goto_3
    invoke-virtual {p0, v8}, Lantlr/Parser;->match(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public final tokensSpecOptions(Lantlr/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x19

    .line 1233
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 1234
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 1235
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 1236
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v2

    .line 1237
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 1238
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v3, p1, v0, v2}, Lantlr/ANTLRGrammarParseBehavior;->refTokensSpecElementOption(Lantlr/Token;Lantlr/Token;Lantlr/Token;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1243
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    .line 1244
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 1245
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    .line 1246
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 1247
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v2

    .line 1248
    iget-object v3, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 1249
    iget-object v3, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v3, p1, v0, v2}, Lantlr/ANTLRGrammarParseBehavior;->refTokensSpecElementOption(Lantlr/Token;Lantlr/Token;Lantlr/Token;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x1a

    .line 1258
    invoke-virtual {p0, p1}, Lantlr/Parser;->match(I)V

    return-void
.end method

.method public final tree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2756
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x2c

    .line 2757
    invoke-virtual {p0, v2}, Lantlr/Parser;->match(I)V

    .line 2758
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_0

    .line 2759
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v1}, Lantlr/ANTLRGrammarParseBehavior;->beginTree(Lantlr/Token;)V

    .line 2761
    :cond_0
    invoke-virtual {p0}, Lantlr/ANTLRParser;->rootNode()V

    .line 2762
    iget-object v1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v1, :cond_1

    .line 2763
    iget-object v1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v1}, Lantlr/ANTLRGrammarParseBehavior;->beginChildList()V

    :cond_1
    const/4 v1, 0x0

    .line 2769
    :goto_0
    sget-object v2, Lantlr/ANTLRParser;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2770
    invoke-virtual {p0}, Lantlr/ANTLRParser;->element()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lt v1, v0, :cond_5

    .line 2779
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_3

    .line 2780
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->endChildList()V

    :cond_3
    const/16 v0, 0x1d

    .line 2782
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 2783
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_4

    .line 2784
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0}, Lantlr/ANTLRGrammarParseBehavior;->endTree()V

    :cond_4
    return-void

    .line 2773
    :cond_5
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1
.end method

.method public final treeParserOptionsSpec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 906
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    :goto_0
    const/4 v0, 0x1

    .line 910
    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    .line 925
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    return-void

    .line 911
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xf

    .line 912
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    .line 913
    invoke-virtual {p0}, Lantlr/ANTLRParser;->optionValue()Lantlr/Token;

    move-result-object v1

    .line 914
    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v2, :cond_2

    .line 915
    iget-object v2, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v2, v0, v1}, Lantlr/ANTLRGrammarParseBehavior;->setGrammarOption(Lantlr/Token;Lantlr/Token;)V

    :cond_2
    const/16 v0, 0x10

    .line 917
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    goto :goto_0
.end method

.method public final treeParserSpec(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 568
    invoke-virtual {p0, v0}, Lantlr/Parser;->match(I)V

    .line 569
    invoke-virtual {p0}, Lantlr/ANTLRParser;->id()Lantlr/Token;

    move-result-object v0

    const/16 v1, 0xb

    .line 570
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    const/16 v1, 0xd

    .line 571
    invoke-virtual {p0, v1}, Lantlr/Parser;->match(I)V

    const/4 v1, 0x1

    .line 573
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_0

    .line 576
    invoke-virtual {p0}, Lantlr/ANTLRParser;->superClass()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 585
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    .line 589
    :goto_0
    iget-object v4, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v4, :cond_2

    .line 590
    iget-object v4, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v2, p1}, Lantlr/ANTLRGrammarParseBehavior;->startTreeWalker(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/Parser;->match(I)V

    .line 594
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    const/16 v0, 0x17

    const/16 v2, 0x18

    const/16 v3, 0x1c

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    const/16 v6, 0xe

    if-eq p1, v6, :cond_3

    if-eq p1, v3, :cond_4

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 613
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 597
    :cond_3
    invoke-virtual {p0}, Lantlr/ANTLRParser;->treeParserOptionsSpec()V

    .line 617
    :cond_4
    :pswitch_0
    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-nez p1, :cond_5

    .line 618
    iget-object p1, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {p1}, Lantlr/ANTLRGrammarParseBehavior;->endOptions()V

    .line 621
    :cond_5
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    packed-switch p1, :pswitch_data_1

    .line 639
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 624
    :cond_6
    invoke-virtual {p0}, Lantlr/ANTLRParser;->tokensSpec()V

    .line 644
    :cond_7
    :pswitch_1
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LA(I)I

    move-result p1

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_9

    if-eq p1, v2, :cond_9

    if-eq p1, v3, :cond_9

    packed-switch p1, :pswitch_data_2

    .line 665
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 647
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object p1

    .line 648
    invoke-virtual {p0, v5}, Lantlr/Parser;->match(I)V

    .line 649
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v0, :cond_9

    .line 650
    iget-object v0, p0, Lantlr/ANTLRParser;->behavior:Lantlr/ANTLRGrammarParseBehavior;

    invoke-interface {v0, p1}, Lantlr/ANTLRGrammarParseBehavior;->refMemberAction(Lantlr/Token;)V

    :cond_9
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
