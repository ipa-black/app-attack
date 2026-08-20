.class public final Lorg/apache/oro/text/regex/Perl5Compiler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/PatternCompiler;


# static fields
.field public static final CASE_INSENSITIVE_MASK:I = 0x1

.field public static final DEFAULT_MASK:I = 0x0

.field public static final EXTENDED_MASK:I = 0x20

.field public static final MULTILINE_MASK:I = 0x8

.field public static final READ_ONLY_MASK:I = 0x8000

.field public static final SINGLELINE_MASK:I = 0x10

.field private static final __CASE_INSENSITIVE:C = '\u0001'

.field private static final __EXTENDED:C = ' '

.field private static final __GLOBAL:C = '\u0002'

.field private static final __HEX_DIGIT:Ljava/lang/String; = "0123456789abcdef0123456789ABCDEFx"

.field private static final __KEEP:C = '\u0004'

.field private static final __MULTILINE:C = '\u0008'

.field private static final __NONNULL:I = 0x1

.field private static final __READ_ONLY:C = '\u8000'

.field private static final __SIMPLE:I = 0x2

.field private static final __SINGLELINE:C = '\u0010'

.field private static final __SPSTART:I = 0x4

.field private static final __TRYAGAIN:I = 0x8

.field private static final __WORSTCASE:I

.field private static final __hashPOSIX:Ljava/util/HashMap;


# instance fields
.field private __cost:I

.field private __input:Lorg/apache/oro/text/regex/CharStringPointer;

.field private __modifierFlags:[C

.field private __numParentheses:I

.field private __program:[C

.field private __programSize:I

.field private __sawBackreference:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__hashPOSIX:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "alnum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "word"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "blank"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "cntrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "digit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "graph"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "lower"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "print"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "punct"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "space"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "upper"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "xdigit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "ascii"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char v1, v0, v1

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    return-void
.end method

.method private __emitArgNode(CC)I
    .locals 4

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-nez v1, :cond_0

    add-int/lit8 p1, v0, 0x3

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aput-char p1, v1, v0

    add-int/lit8 p1, v0, 0x2

    const/4 v3, 0x0

    aput-char v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    iput v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    aput-char p2, v1, p1

    :goto_0
    return v0
.end method

.method private __emitCode(C)V
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    aput-char p1, v0, v1

    :cond_0
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    return-void
.end method

.method private __emitNode(C)I
    .locals 3

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-nez v1, :cond_0

    add-int/lit8 p1, v0, 0x2

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aput-char p1, v1, v0

    add-int/lit8 p1, v0, 0x2

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    const/4 p1, 0x0

    aput-char p1, v1, v2

    :goto_0
    return v0
.end method

.method private __getNextChar()C
    .locals 6

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_postIncrement()C

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v1}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v1

    const/16 v2, 0x28

    const v3, 0xffff

    const/16 v4, 0x23

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v2

    const/16 v5, 0x3f

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    :goto_1
    if-eq v1, v3, :cond_2

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v1}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    const/4 v5, 0x0

    aget-char v2, v2, v5

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v1}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_5

    :goto_3
    if-eq v1, v3, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v1}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result v1

    goto :goto_3

    :cond_5
    return v0
.end method

.method private static __isComplexRepetitionOp([CI)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    aget-char v0, p0, p1

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_1

    invoke-static {p0, p1}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseRepetition([CI)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static __isSimpleRepetitionOp(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

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

.method private __parseAlternation([I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    aput v0, p1, v0

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v1

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2, v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_setOffset(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_decrement()C

    :goto_0
    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v2

    move v4, v3

    :goto_1
    const v5, 0xffff

    if-eq v2, v5, :cond_4

    const/16 v5, 0x7c

    if-eq v2, v5, :cond_4

    const/16 v5, 0x29

    if-ne v2, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseBranch([I)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v3

    :cond_2
    aget v5, p1, v0

    aput v5, p1, v0

    if-ne v4, v3, :cond_3

    aput v5, p1, v0

    goto :goto_2

    :cond_3
    iget v5, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    invoke-direct {p0, v4, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    :goto_2
    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v4}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v4

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_1

    :cond_4
    :goto_3
    if-ne v4, v3, :cond_5

    const/16 p1, 0xf

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    :cond_5
    return v1
.end method

.method private __parseAtom([I)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v2

    aput v0, p1, v0

    const/4 v3, -0x1

    move v4, v3

    :goto_0
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v5

    const/16 v9, 0x47

    const/16 v10, 0x44

    const/16 v11, 0x5c

    const/16 v12, 0x5b

    const/16 v13, 0x7c

    const/16 v14, 0x5e

    const/16 v15, 0x2e

    const/16 v6, 0x24

    const/16 v7, 0x23

    const/4 v8, 0x1

    if-eq v5, v7, :cond_1e

    if-eq v5, v6, :cond_1b

    const/16 v6, 0x8

    if-eq v5, v15, :cond_19

    const/16 v7, 0x3f

    if-eq v5, v7, :cond_18

    if-eq v5, v14, :cond_15

    if-eq v5, v13, :cond_13

    if-eq v5, v12, :cond_12

    if-eq v5, v11, :cond_2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    invoke-direct {v1, v8, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseExpression(Z[I)I

    move-result v4

    if-ne v4, v3, :cond_1

    aget v5, v2, v0

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    aget v3, p1, v0

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x5

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto/16 :goto_5

    :cond_2
    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result v2

    if-eqz v2, :cond_10

    if-eq v2, v10, :cond_f

    if-eq v2, v9, :cond_e

    const/16 v3, 0x53

    if-eq v2, v3, :cond_d

    const/16 v3, 0x57

    if-eq v2, v3, :cond_c

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_b

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_3

    const v3, 0xffff

    if-eq v2, v3, :cond_10

    const/16 v3, 0x41

    if-eq v2, v3, :cond_a

    const/16 v3, 0x42

    if-eq v2, v3, :cond_9

    const/16 v3, 0x77

    if-eq v2, v3, :cond_8

    const/16 v3, 0x78

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_4

    :pswitch_1
    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x3

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto/16 :goto_3

    :cond_3
    :pswitch_2
    const/4 v5, 0x2

    goto/16 :goto_b

    :pswitch_3
    const/4 v3, 0x3

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto/16 :goto_3

    :pswitch_4
    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x2

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto/16 :goto_3

    :pswitch_5
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v3, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v3

    move v5, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_7

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    iget v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    if-lt v2, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    if-ge v2, v3, :cond_6

    iput-boolean v8, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__sawBackreference:Z

    const/16 v3, 0x1a

    int-to-char v2, v2

    invoke-direct {v1, v3, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitArgNode(CC)I

    move-result v4

    aget v2, p1, v0

    or-int/2addr v2, v8

    aput v2, p1, v0

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v2

    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_decrement()C

    goto :goto_3

    :cond_5
    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result v2

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Invalid backreference: \\"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unexpected number format exception.  Please report this bug.NumberFormatException message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v5, v8

    iget-object v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v3, v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v3

    goto :goto_1

    :cond_8
    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x3

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto :goto_3

    :cond_9
    const/4 v3, 0x3

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v5, 0x2

    or-int/2addr v2, v5

    aput v2, p1, v0

    goto :goto_3

    :cond_a
    const/4 v3, 0x3

    const/4 v5, 0x2

    invoke-direct {v1, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    or-int/2addr v2, v5

    aput v2, p1, v0

    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    goto :goto_5

    :cond_b
    const/4 v5, 0x2

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    or-int/2addr v2, v5

    aput v2, p1, v0

    goto :goto_3

    :cond_c
    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x3

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto :goto_3

    :cond_d
    const/4 v3, 0x3

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto :goto_3

    :cond_e
    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x2

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto :goto_3

    :cond_f
    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x3

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto :goto_3

    :cond_10
    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result v2

    if-nez v2, :cond_11

    :goto_4
    goto/16 :goto_b

    :cond_11
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Trailing \\ in expression."

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseUnicodeClass()I

    move-result v4

    aget v2, p1, v0

    const/4 v3, 0x3

    or-int/2addr v2, v3

    aput v2, p1, v0

    :goto_5
    move v2, v0

    goto/16 :goto_c

    :cond_13
    :pswitch_6
    aget v2, v2, v0

    and-int/2addr v2, v6

    if-eqz v2, :cond_14

    aget v2, p1, v0

    or-int/2addr v2, v6

    aput v2, p1, v0

    return v3

    :cond_14
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error in expression at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/oro/text/regex/CharStringPointer;->_toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v2, v2, v0

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_16

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    goto :goto_5

    :cond_16
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_17

    const/4 v2, 0x3

    goto :goto_7

    :cond_17
    invoke-direct {v1, v8}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    goto :goto_5

    :cond_18
    :pswitch_7
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "?+* follows nothing in expression"

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v2, v2, v0

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1a

    invoke-direct {v1, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v2

    goto :goto_6

    :cond_1a
    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v2

    :goto_6
    move v4, v2

    iget v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    add-int/2addr v2, v8

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    aget v2, p1, v0

    const/4 v3, 0x3

    or-int/2addr v2, v3

    aput v2, p1, v0

    goto :goto_5

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v2, v2, v0

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1c

    const/4 v2, 0x5

    :goto_7
    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    goto/16 :goto_5

    :cond_1c
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1d

    const/4 v2, 0x6

    goto :goto_7

    :cond_1d
    const/4 v2, 0x4

    goto :goto_7

    :cond_1e
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v5, v5, v0

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-eqz v5, :cond_21

    :goto_8
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1f

    goto :goto_9

    :cond_1f
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    goto :goto_8

    :cond_20
    :goto_9
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result v5

    if-nez v5, :cond_21

    goto/16 :goto_0

    :cond_21
    :goto_a
    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    :goto_b
    move v2, v8

    :goto_c
    if-eqz v2, :cond_3b

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v4

    const v2, 0xffff

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v2

    sub-int/2addr v2, v8

    iget-object v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_getLength()I

    move-result v3

    move v5, v0

    :goto_d
    const/16 v6, 0x7f

    if-ge v5, v6, :cond_36

    if-lt v2, v3, :cond_22

    goto/16 :goto_1c

    :cond_22
    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6, v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_23

    if-eq v6, v15, :cond_36

    if-eq v6, v14, :cond_36

    if-eq v6, v13, :cond_36

    const/16 v7, 0x23

    if-eq v6, v7, :cond_2e

    const/16 v7, 0x24

    if-eq v6, v7, :cond_36

    const/16 v7, 0x28

    if-eq v6, v7, :cond_36

    const/16 v7, 0x29

    if-eq v6, v7, :cond_36

    if-eq v6, v12, :cond_36

    if-eq v6, v11, :cond_24

    packed-switch v6, :pswitch_data_4

    move v6, v2

    const/16 v9, 0xa

    const/4 v10, 0x3

    const/16 v11, 0x20

    goto/16 :goto_19

    :cond_23
    :pswitch_8
    const/16 v9, 0xa

    const/4 v10, 0x3

    goto/16 :goto_16

    :cond_24
    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v6

    if-eqz v6, :cond_2b

    if-eq v6, v10, :cond_36

    if-eq v6, v9, :cond_36

    const/16 v9, 0x53

    if-eq v6, v9, :cond_36

    const/16 v9, 0x57

    if-eq v6, v9, :cond_36

    const/16 v9, 0x5a

    if-eq v6, v9, :cond_36

    const/16 v9, 0x6e

    if-eq v6, v9, :cond_2c

    const v9, 0xffff

    if-eq v6, v9, :cond_2b

    const/16 v9, 0x41

    if-eq v6, v9, :cond_36

    const/16 v9, 0x42

    if-eq v6, v9, :cond_36

    const/16 v9, 0x77

    if-eq v6, v9, :cond_36

    const/16 v9, 0x78

    if-eq v6, v9, :cond_2a

    packed-switch v6, :pswitch_data_5

    packed-switch v6, :pswitch_data_6

    packed-switch v6, :pswitch_data_7

    const/4 v10, 0x3

    goto/16 :goto_13

    :pswitch_9
    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0x9

    goto :goto_e

    :pswitch_a
    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0xd

    goto :goto_e

    :pswitch_b
    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0xc

    goto :goto_e

    :pswitch_c
    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0x1b

    goto :goto_e

    :pswitch_d
    add-int/lit8 v6, v2, 0x2

    iget-object v7, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v9, v2, 0x3

    invoke-virtual {v7, v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    :cond_25
    xor-int/lit8 v6, v6, 0x40

    int-to-char v6, v6

    move v7, v6

    move v6, v9

    goto :goto_e

    :pswitch_e
    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x7

    :goto_e
    const/4 v10, 0x3

    goto/16 :goto_14

    :pswitch_f
    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6, v7}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v6

    const/16 v9, 0x30

    if-ne v6, v9, :cond_26

    move v6, v8

    goto :goto_f

    :cond_26
    move v6, v0

    :goto_f
    iget-object v9, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {v9, v10}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_29

    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v10, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v10, v7}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v10

    move/from16 v17, v7

    :goto_10
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-nez v18, :cond_28

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_29

    iget v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    if-lt v9, v6, :cond_27

    move v6, v8

    goto :goto_11

    :cond_27
    move v6, v0

    goto :goto_11

    :catch_1
    move-exception v0

    new-instance v2, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unexpected number format exception.  Please report this bug.NumberFormatException message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v17, 0x1

    iget-object v11, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v11, v10}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v11

    move/from16 v17, v10

    move v10, v11

    const/16 v11, 0x5c

    goto :goto_10

    :cond_29
    :goto_11
    if-eqz v6, :cond_36

    new-array v6, v8, [I

    iget-object v9, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v9, v9, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    const/4 v10, 0x3

    invoke-static {v9, v7, v10, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseOctal([CII[I)I

    move-result v9

    int-to-char v9, v9

    aget v6, v6, v0

    add-int/2addr v6, v7

    move v7, v9

    goto :goto_14

    :cond_2a
    const/4 v10, 0x3

    new-array v6, v8, [I

    iget-object v7, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v7, v7, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    add-int/lit8 v9, v2, 0x2

    const/4 v11, 0x2

    invoke-static {v7, v9, v11, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseHex([CII[I)I

    move-result v7

    int-to-char v7, v7

    aget v6, v6, v0

    add-int/2addr v6, v9

    goto :goto_14

    :cond_2b
    const/4 v10, 0x3

    goto :goto_12

    :cond_2c
    const/4 v10, 0x3

    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0xa

    goto :goto_14

    :goto_12
    if-ge v7, v3, :cond_2d

    :goto_13
    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v9, v2, 0x2

    invoke-virtual {v6, v7}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v6

    move v7, v6

    move v6, v9

    :goto_14
    const/16 v11, 0x20

    goto :goto_1a

    :cond_2d
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Trailing \\ in expression."

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v10, 0x3

    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v6, v6, v0

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-eqz v6, :cond_31

    move v6, v2

    :goto_15
    if-ge v6, v3, :cond_30

    iget-object v7, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v7, v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_2f

    goto :goto_17

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_30
    const/16 v9, 0xa

    goto :goto_17

    :cond_31
    const/16 v9, 0xa

    :goto_16
    move v6, v2

    :goto_17
    iget-object v7, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v7, v7, v0

    const/16 v11, 0x20

    and-int/2addr v7, v11

    if-eqz v7, :cond_32

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_18
    move v2, v6

    goto :goto_1b

    :cond_32
    :goto_19
    iget-object v7, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v16, v6, 0x1

    invoke-virtual {v7, v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v6

    move v7, v6

    move/from16 v6, v16

    :goto_1a
    iget-object v9, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v9, v9, v0

    and-int/2addr v9, v8

    if-eqz v9, :cond_33

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    :cond_33
    if-ge v6, v3, :cond_35

    iget-object v9, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v9, v9, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    invoke-static {v9, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__isComplexRepetitionOp([CI)Z

    move-result v9

    if-eqz v9, :cond_35

    if-lez v5, :cond_34

    goto :goto_1c

    :cond_34
    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v7}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    move v2, v6

    goto :goto_1c

    :cond_35
    invoke-direct {v1, v7}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    goto :goto_18

    :goto_1b
    add-int/2addr v5, v8

    const/16 v9, 0x47

    const/16 v10, 0x44

    const/16 v11, 0x5c

    goto/16 :goto_d

    :cond_36
    :goto_1c
    :pswitch_10
    iget-object v3, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    sub-int/2addr v2, v8

    invoke-virtual {v3, v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_setOffset(I)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    if-ltz v5, :cond_3a

    if-lez v5, :cond_37

    aget v2, p1, v0

    or-int/2addr v2, v8

    aput v2, p1, v0

    :cond_37
    if-ne v5, v8, :cond_38

    aget v2, p1, v0

    const/4 v3, 0x2

    or-int/2addr v2, v3

    aput v2, p1, v0

    :cond_38
    iget-object v0, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-eqz v0, :cond_39

    invoke-static {v4}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v2

    int-to-char v3, v5

    aput-char v3, v0, v2

    :cond_39
    const v0, 0xffff

    invoke-direct {v1, v0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    goto :goto_1d

    :cond_3a
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Unexpected compilation failure.  Please report this bug!"

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_1d
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x61
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x72
        :pswitch_a
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method

.method private __parseBranch([I)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Unexpected number format exception.  Please report this bug.NumberFormatException message: "

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseAtom([I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    aget v2, v3, v0

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    aget v2, p1, v0

    or-int/lit8 v2, v2, 0x8

    aput v2, p1, v0

    :cond_0
    return v5

    :cond_1
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v5

    const/16 v6, 0x28

    const/16 v7, 0x3f

    const/4 v8, 0x2

    const/4 v9, 0x1

    const v10, 0xffff

    if-ne v5, v6, :cond_4

    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6, v9}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6, v8}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v6

    const/16 v11, 0x23

    if-ne v6, v11, :cond_4

    :goto_0
    if-eq v5, v10, :cond_3

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result v5

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v5, v10, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    iget-object v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v5

    :cond_4
    const/16 v6, 0x7b

    const/16 v11, 0xa

    if-ne v5, v6, :cond_e

    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v6, v6, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iget-object v12, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v12}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v12

    invoke-static {v6, v12}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseRepetition([CI)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v6

    add-int/2addr v6, v9

    iget-object v12, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v12}, Lorg/apache/oro/text/regex/CharStringPointer;->_getLength()I

    move-result v12

    iget-object v13, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v13, v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v13

    move v14, v12

    :goto_2
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    const/16 v10, 0x2c

    if-nez v15, :cond_5

    if-eq v13, v10, :cond_5

    goto :goto_3

    :cond_5
    if-ne v13, v10, :cond_d

    if-eq v14, v12, :cond_c

    :goto_3
    const/16 v15, 0x7d

    if-ne v13, v15, :cond_e

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    if-ne v14, v12, :cond_6

    move v14, v6

    :cond_6
    iget-object v12, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v12}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    iget-object v12, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v12}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v12

    :goto_4
    iget-object v15, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v15, v12}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_b

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v13, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v13, v14}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v13

    if-ne v13, v10, :cond_7

    add-int/2addr v14, v9

    goto :goto_5

    :cond_7
    iget-object v10, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v10}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v14

    :goto_5
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v13, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v13, v14}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v13

    move v15, v14

    :goto_6
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_a

    if-eq v15, v14, :cond_8

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v3, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    const v2, 0xffff

    :goto_7
    if-nez v2, :cond_9

    iget-object v10, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v10, v14}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v10

    const/16 v13, 0x30

    if-eq v10, v13, :cond_9

    const v10, 0xffff

    goto :goto_8

    :cond_9
    move v10, v2

    :goto_8
    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2, v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_setOffset(I)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    move v2, v9

    move v6, v2

    goto :goto_9

    :cond_a
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v15, v15, 0x1

    iget-object v13, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v13, v15}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v13

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v3, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v12, v9

    goto/16 :goto_4

    :cond_c
    move v14, v6

    :cond_d
    add-int/lit8 v6, v6, 0x1

    iget-object v10, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v10, v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v13

    const v10, 0xffff

    goto/16 :goto_2

    :cond_e
    move v2, v0

    move v6, v2

    move v12, v6

    const v10, 0xffff

    :goto_9
    if-nez v2, :cond_16

    invoke-static {v5}, Lorg/apache/oro/text/regex/Perl5Compiler;->__isSimpleRepetitionOp(C)Z

    move-result v2

    if-nez v2, :cond_f

    aget v2, v3, v0

    aput v2, p1, v0

    return v4

    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    const/4 v2, 0x4

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_10

    move v13, v2

    goto :goto_a

    :cond_10
    move v13, v9

    :goto_a
    aput v13, p1, v0

    const/16 v13, 0x2a

    if-ne v5, v13, :cond_11

    aget v14, v3, v0

    and-int/2addr v14, v8

    if-eqz v14, :cond_11

    const/16 v5, 0x10

    invoke-direct {v1, v5, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programInsertOperator(CI)V

    iget v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    add-int/2addr v5, v2

    iput v5, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    goto :goto_b

    :cond_11
    if-ne v5, v13, :cond_12

    move v12, v0

    move v6, v9

    goto :goto_c

    :cond_12
    if-ne v5, v6, :cond_13

    aget v2, v3, v0

    and-int/2addr v2, v8

    if-eqz v2, :cond_13

    const/16 v2, 0x11

    invoke-direct {v1, v2, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programInsertOperator(CI)V

    iget v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    goto :goto_b

    :cond_13
    if-ne v5, v6, :cond_14

    move v6, v9

    move v12, v6

    goto :goto_c

    :cond_14
    if-ne v5, v7, :cond_15

    move v12, v0

    move v6, v9

    move v10, v6

    goto :goto_c

    :cond_15
    :goto_b
    move v6, v0

    :cond_16
    :goto_c
    if-eqz v6, :cond_1b

    aget v2, v3, v0

    and-int/2addr v2, v8

    if-eqz v2, :cond_17

    iget v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    add-int/lit8 v3, v2, 0x2

    div-int/2addr v3, v8

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    invoke-direct {v1, v11, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programInsertOperator(CI)V

    goto :goto_d

    :cond_17
    iget v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    add-int/lit8 v3, v2, 0x4

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v2

    invoke-direct {v1, v4, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    const/16 v2, 0xb

    invoke-direct {v1, v2, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programInsertOperator(CI)V

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v2

    invoke-direct {v1, v4, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    :goto_d
    if-lez v12, :cond_18

    aput v9, p1, v0

    :cond_18
    if-eqz v10, :cond_1a

    if-lt v10, v12, :cond_19

    goto :goto_e

    :cond_19
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Invalid interval {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_e
    iget-object v0, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-eqz v0, :cond_1b

    add-int/lit8 v2, v4, 0x2

    int-to-char v3, v12

    aput-char v3, v0, v2

    add-int/lit8 v2, v4, 0x3

    int-to-char v3, v10

    aput-char v3, v0, v2

    :cond_1b
    iget-object v0, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v0

    if-ne v0, v7, :cond_1c

    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    const/16 v0, 0x1d

    invoke-direct {v1, v0, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programInsertOperator(CI)V

    add-int/lit8 v0, v4, 0x2

    invoke-direct {v1, v4, v0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    :cond_1c
    iget-object v0, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v0, v0, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iget-object v2, v1, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__isComplexRepetitionOp([CI)Z

    move-result v0

    if-nez v0, :cond_1d

    return v4

    :cond_1d
    new-instance v0, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Nested repetitions *?+ in expression"

    invoke-direct {v0, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private __parseExpression(Z[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char v2, v1, v2

    new-array v3, v0, [C

    aput-char v2, v3, v2

    filled-new-array {v2}, [I

    move-result-object v4

    aput v0, p2, v2

    const/16 v5, 0x3a

    const/16 v6, 0x3d

    const/16 v7, 0x21

    const/16 v8, 0x29

    const/4 v9, -0x1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result p1

    const/16 v10, 0x3f

    if-ne p1, v10, :cond_9

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_postIncrement()C

    move-result p1

    if-eq p1, v7, :cond_8

    const/16 v10, 0x23

    const/16 v11, 0x8

    const v12, 0xffff

    if-eq p1, v10, :cond_4

    if-eq p1, v5, :cond_8

    if-eq p1, v6, :cond_8

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_decrement()C

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result p1

    move-object v0, v1

    :goto_0
    if-eq p1, v12, :cond_2

    const-string v4, "iogmsx-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v9, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x2d

    if-ne p1, v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/oro/text/regex/Perl5Compiler;->__setModifierFlag([CC)V

    :goto_1
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result p1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v4, v0, v2

    aget-char v1, v1, v2

    or-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v0, v2

    aget-char v3, v3, v2

    not-int v3, v3

    and-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v0, v2

    if-ne p1, v8, :cond_3

    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    aput v11, p2, v2

    return v9

    :cond_3
    new-instance p2, Lorg/apache/oro/text/regex/MalformedPatternException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Sequence (?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "...) not recognized"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result p1

    :goto_3
    if-eq p1, v12, :cond_6

    if-ne p1, v8, :cond_5

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move-result p1

    goto :goto_3

    :cond_6
    :goto_4
    if-ne p1, v8, :cond_7

    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    aput v11, p2, v2

    return v9

    :cond_7
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string p2, "Sequence (?#... not terminated"

    invoke-direct {p1, p2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    move v1, v2

    goto :goto_5

    :cond_9
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    const/16 v1, 0x1b

    int-to-char v3, p1

    invoke-direct {p0, v1, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitArgNode(CC)I

    move-result v1

    move v3, v1

    move v1, p1

    move p1, v0

    goto :goto_6

    :cond_a
    move p1, v2

    move v1, p1

    :goto_5
    move v3, v9

    :goto_6
    invoke-direct {p0, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseAlternation([I)I

    move-result v10

    if-ne v10, v9, :cond_b

    return v9

    :cond_b
    if-eq v3, v9, :cond_c

    invoke-direct {p0, v3, v10}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    goto :goto_7

    :cond_c
    move v3, v10

    :goto_7
    aget v10, v4, v2

    and-int/2addr v10, v0

    if-nez v10, :cond_d

    aget v10, p2, v2

    and-int/lit8 v10, v10, -0x2

    aput v10, p2, v2

    :cond_d
    aget v10, p2, v2

    aget v11, v4, v2

    and-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    aput v10, p2, v2

    :goto_8
    iget-object v10, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v10}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v10

    const/16 v11, 0x7c

    if-eq v10, v11, :cond_18

    const/16 v10, 0xf

    if-eq p1, v0, :cond_10

    if-eq p1, v7, :cond_f

    if-eq p1, v5, :cond_e

    if-eq p1, v6, :cond_f

    invoke-direct {p0, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result p2

    :goto_9
    move v11, p2

    goto :goto_a

    :cond_e
    invoke-direct {p0, v10}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result p2

    goto :goto_9

    :cond_f
    invoke-direct {p0, v7}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v0

    aget v1, p2, v2

    and-int/lit8 v1, v1, -0x2

    aput v1, p2, v2

    move v11, v0

    goto :goto_a

    :cond_10
    const/16 p2, 0x1c

    int-to-char v0, v1

    invoke-direct {p0, p2, v0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitArgNode(CC)I

    move-result p2

    goto :goto_9

    :goto_a
    invoke-direct {p0, v3, v11}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    move p2, v3

    :goto_b
    if-ne p2, v9, :cond_17

    if-ne p1, v6, :cond_11

    const/16 p2, 0x1f

    :goto_c
    invoke-direct {p0, p2, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programInsertOperator(CI)V

    invoke-direct {p0, v10}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result p2

    invoke-direct {p0, v3, p2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    goto :goto_d

    :cond_11
    if-ne p1, v7, :cond_12

    const/16 p2, 0x20

    goto :goto_c

    :cond_12
    :goto_d
    const-string p2, "Unmatched parentheses."

    if-eqz p1, :cond_14

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    move-result v0

    if-ne v0, v8, :cond_13

    goto :goto_e

    :cond_13
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    invoke-direct {p1, p2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_e
    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result p1

    if-ne p1, v8, :cond_15

    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    invoke-direct {p1, p2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string p2, "Unreached characters at end of expression.  Please report this bug!"

    invoke-direct {p1, p2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    return v3

    :cond_17
    invoke-direct {p0, p2, v11}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddOperatorTail(II)V

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v0, p2}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result p2

    goto :goto_b

    :cond_18
    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    invoke-direct {p0, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseAlternation([I)I

    move-result v10

    if-ne v10, v9, :cond_19

    return v9

    :cond_19
    invoke-direct {p0, v3, v10}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    aget v10, v4, v2

    and-int/2addr v10, v0

    if-nez v10, :cond_1a

    aget v10, p2, v2

    and-int/lit8 v10, v10, -0x2

    aput v10, p2, v2

    :cond_1a
    aget v10, p2, v2

    aget v11, v4, v2

    and-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    aput v10, p2, v2

    goto/16 :goto_8
.end method

.method private static __parseHex([CII[I)I
    .locals 4

    const/4 v0, 0x0

    aput v0, p3, v0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_1

    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1

    const-string p2, "0123456789abcdef0123456789ABCDEFx"

    aget-char v3, p0, p1

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 p2, p2, 0xf

    or-int/2addr v1, p2

    add-int/lit8 p1, p1, 0x1

    aget p2, p3, v0

    add-int/lit8 p2, p2, 0x1

    aput p2, p3, v0

    move p2, v2

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static __parseOctal([CII[I)I
    .locals 4

    const/4 v0, 0x0

    aput v0, p3, v0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_1

    if-lez p2, :cond_1

    aget-char v2, p0, p1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x37

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v2, -0x30

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    aget v2, p3, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private __parsePOSIX([Z)C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v0

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v1}, Lorg/apache/oro/text/regex/CharStringPointer;->_getLength()I

    move-result v1

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2, v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v2

    const/16 v6, 0x5e

    if-ne v2, v6, :cond_1

    const/4 v2, 0x1

    aput-boolean v2, p1, v4

    add-int/lit8 v3, v0, 0x2

    goto :goto_0

    :cond_1
    aput-boolean v4, p1, v4

    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v0

    if-eq v0, v5, :cond_3

    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue(I)C

    move-result v0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    return v4

    :cond_4
    sget-object v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__hashPOSIX:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    return v4

    :cond_5
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v0, v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_setOffset(I)V

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1

    :catch_0
    return v4
.end method

.method private static __parseRepetition([CI)Z
    .locals 4

    aget-char v0, p0, p1

    const/16 v1, 0x7b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    array-length v1, p0

    if-ge p1, v1, :cond_8

    aget-char v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_3

    aget-char v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    array-length v1, p0

    if-ge p1, v1, :cond_5

    aget-char v1, p0, p1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    :cond_5
    array-length v1, p0

    if-ge p1, v1, :cond_6

    aget-char v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    array-length v1, p0

    if-ge p1, v1, :cond_8

    aget-char p0, p0, p1

    const/16 p1, 0x7d

    if-eq p0, p1, :cond_7

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v2
.end method

.method private __parseUnicodeClass()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Z

    aput-boolean v1, v4, v1

    iget-object v5, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v5}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v5

    const/16 v6, 0x5e

    if-ne v5, v6, :cond_0

    const/16 v5, 0x24

    invoke-direct {v0, v5}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v5

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    goto :goto_0

    :cond_0
    const/16 v5, 0x23

    invoke-direct {v0, v5}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitNode(C)I

    move-result v5

    :goto_0
    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v6

    const/16 v7, 0x2d

    const/16 v8, 0x5d

    const v9, 0xffff

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v10, v1

    move v11, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v1

    move v10, v3

    :goto_2
    move v12, v9

    :goto_3
    iget-object v13, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v13}, Lorg/apache/oro/text/regex/CharStringPointer;->_isAtEnd()Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v6

    if-ne v6, v8, :cond_5

    :cond_3
    if-nez v10, :cond_5

    iget-object v2, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v2}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v2

    if-ne v2, v8, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->__getNextChar()C

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    return v5

    :cond_4
    new-instance v1, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Unmatched [] in expression."

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v10, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v10}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    const/4 v10, 0x2

    const/16 v13, 0x5c

    if-eq v6, v13, :cond_8

    const/16 v14, 0x5b

    if-ne v6, v14, :cond_6

    goto :goto_5

    :cond_6
    move v13, v1

    :cond_7
    :goto_4
    move/from16 v16, v12

    move v12, v6

    move/from16 v6, v16

    goto/16 :goto_a

    :cond_8
    :goto_5
    if-ne v6, v13, :cond_9

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_postIncrement()C

    move-result v6

    goto :goto_6

    :cond_9
    invoke-direct {v0, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parsePOSIX([Z)C

    move-result v13

    if-eqz v13, :cond_a

    move v6, v13

    move v13, v3

    goto :goto_7

    :cond_a
    :goto_6
    move v13, v1

    :goto_7
    if-eq v13, v3, :cond_7

    const/16 v14, 0x44

    if-eq v6, v14, :cond_11

    const/16 v14, 0x53

    if-eq v6, v14, :cond_10

    const/16 v14, 0x57

    if-eq v6, v14, :cond_f

    const/16 v14, 0x6e

    if-eq v6, v14, :cond_e

    const/16 v14, 0x77

    if-eq v6, v14, :cond_d

    const/16 v14, 0x78

    if-eq v6, v14, :cond_c

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    goto :goto_4

    :pswitch_0
    const/16 v6, 0x9

    goto :goto_4

    :pswitch_1
    const/16 v6, 0x16

    goto :goto_9

    :pswitch_2
    const/16 v6, 0xd

    goto :goto_4

    :pswitch_3
    const/16 v6, 0xc

    goto :goto_4

    :pswitch_4
    const/16 v6, 0x1b

    goto :goto_4

    :pswitch_5
    const/16 v6, 0x18

    goto :goto_9

    :pswitch_6
    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_postIncrement()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    :cond_b
    xor-int/lit8 v6, v6, 0x40

    int-to-char v6, v6

    goto :goto_4

    :pswitch_7
    const/16 v6, 0x8

    goto :goto_4

    :pswitch_8
    const/4 v6, 0x7

    goto :goto_4

    :pswitch_9
    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v6, v6, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iget-object v14, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v14}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v14

    sub-int/2addr v14, v3

    const/4 v15, 0x3

    invoke-static {v6, v14, v15, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseOctal([CII[I)I

    move-result v6

    int-to-char v6, v6

    iget-object v14, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    aget v15, v2, v1

    sub-int/2addr v15, v3

    :goto_8
    invoke-virtual {v14, v15}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment(I)C

    goto/16 :goto_4

    :cond_c
    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v6, v6, Lorg/apache/oro/text/regex/CharStringPointer;->_array:[C

    iget-object v14, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v14}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v14

    invoke-static {v6, v14, v10, v2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseHex([CII[I)I

    move-result v6

    int-to-char v6, v6

    iget-object v14, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    aget v15, v2, v1

    goto :goto_8

    :cond_d
    const/16 v6, 0x12

    goto :goto_9

    :cond_e
    const/16 v6, 0xa

    goto/16 :goto_4

    :cond_f
    const/16 v6, 0x13

    goto :goto_9

    :cond_10
    const/16 v6, 0x17

    goto :goto_9

    :cond_11
    const/16 v6, 0x19

    :goto_9
    move v13, v3

    move v12, v6

    move v6, v9

    :goto_a
    if-eqz v11, :cond_13

    if-gt v6, v12, :cond_12

    move v11, v1

    goto :goto_b

    :cond_12
    new-instance v1, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Invalid [] range in expression."

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    if-nez v13, :cond_14

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValue()C

    move-result v6

    if-ne v6, v7, :cond_14

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_getOffset()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v14, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v14}, Lorg/apache/oro/text/regex/CharStringPointer;->_getLength()I

    move-result v14

    if-ge v6, v14, :cond_14

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6, v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_getValueRelative(I)C

    move-result v6

    if-eq v6, v8, :cond_14

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v6}, Lorg/apache/oro/text/regex/CharStringPointer;->_increment()C

    move v10, v1

    move v11, v3

    goto/16 :goto_d

    :cond_14
    move v6, v12

    :goto_b
    if-ne v6, v12, :cond_17

    if-ne v13, v3, :cond_16

    aget-boolean v13, v4, v1

    if-nez v13, :cond_15

    const/16 v13, 0x2f

    goto :goto_c

    :cond_15
    const/16 v13, 0x30

    goto :goto_c

    :cond_16
    const/16 v13, 0x31

    :goto_c
    invoke-direct {v0, v13}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    invoke-direct {v0, v12}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    iget-object v13, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v13, v13, v1

    and-int/2addr v13, v3

    if-eqz v13, :cond_17

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_17

    iget v13, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    sub-int/2addr v13, v3

    iput v13, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-direct {v0, v13}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    :cond_17
    if-ge v6, v12, :cond_19

    const/16 v11, 0x25

    invoke-direct {v0, v11}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    invoke-direct {v0, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    invoke-direct {v0, v12}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    iget-object v11, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v11, v11, v1

    and-int/2addr v11, v3

    if-eqz v11, :cond_18

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v11

    if-eqz v11, :cond_18

    iget v11, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    sub-int/2addr v11, v10

    iput v11, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-direct {v0, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-direct {v0, v6}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    :cond_18
    move v11, v1

    :cond_19
    move v10, v1

    :goto_d
    move v6, v12

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private __programAddOperatorTail(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v1, v1, p1

    aget-char v0, v0, v1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/apache/oro/text/regex/Perl5Compiler;->__programAddTail(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private __programAddTail(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v1, p1}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v1, v0, p1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    sub-int p2, p1, p2

    goto :goto_1

    :cond_1
    sub-int/2addr p2, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    int-to-char p2, p2

    aput-char p2, v0, p1

    return-void

    :cond_2
    move p1, v1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private __programInsertOperator(CI)V
    .locals 7

    sget-object v0, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    aget-char v0, v0, p1

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    if-nez v1, :cond_1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    add-int/2addr v0, v3

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    return-void

    :cond_1
    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    :goto_1
    if-gt v1, p2, :cond_3

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    add-int/lit8 v4, p2, 0x1

    aput-char p1, v1, p2

    add-int/2addr p2, v3

    aput-char v2, v1, v4

    :goto_2
    add-int/lit8 p1, v0, -0x1

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    add-int/lit8 v1, p2, 0x1

    aput-char v2, v0, p2

    move v0, p1

    move p2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v6, v5, v1

    aput-char v6, v5, v4

    goto :goto_1
.end method

.method private static __setModifierFlag([CC)V
    .locals 2

    const/16 v0, 0x67

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x69

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    aget-char p1, p0, v1

    or-int/lit8 p1, p1, 0x20

    int-to-char p1, p1

    aput-char p1, p0, v1

    return-void

    :cond_1
    aget-char p1, p0, v1

    or-int/lit8 p1, p1, 0x10

    int-to-char p1, p1

    aput-char p1, p0, v1

    return-void

    :cond_2
    aget-char p1, p0, v1

    or-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    aput-char p1, p0, v1

    return-void

    :cond_3
    aget-char p1, p0, v1

    or-int/lit8 p1, p1, 0x8

    int-to-char p1, p1

    aput-char p1, p0, v1

    return-void

    :cond_4
    aget-char p1, p0, v1

    or-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    aput-char p1, p0, v1

    return-void

    :cond_5
    aget-char p1, p0, v1

    or-int/lit8 p1, p1, 0x2

    int-to-char p1, p1

    aput-char p1, p0, v1

    return-void
.end method

.method public static final quotemeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/apache/oro/text/regex/Perl5Compiler;->quotemeta([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final quotemeta([C)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-char v2, p0, v1

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile([C)Lorg/apache/oro/text/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile([CI)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public compile([CI)Lorg/apache/oro/text/regex/Pattern;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v4

    new-instance v5, Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-direct {v5, v1}, Lorg/apache/oro/text/regex/CharStringPointer;-><init>([C)V

    iput-object v5, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    iget-object v5, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    int-to-char v6, v2

    aput-char v6, v5, v3

    iput-boolean v3, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__sawBackreference:Z

    const/4 v5, 0x1

    iput v5, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    iput v3, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    iput v3, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    const/4 v6, 0x0

    iput-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-direct {v0, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    invoke-direct {v0, v3, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseExpression(Z[I)I

    move-result v7

    const-string v8, "Unknown compilation error."

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2c

    iget v7, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    const v10, 0xfffe

    if-ge v7, v10, :cond_2b

    new-array v7, v7, [C

    iput-object v7, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    new-instance v7, Lorg/apache/oro/text/regex/Perl5Pattern;

    invoke-direct {v7}, Lorg/apache/oro/text/regex/Perl5Pattern;-><init>()V

    iget-object v10, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    iput-object v10, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_program:[C

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v10, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_expression:Ljava/lang/String;

    iget-object v1, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__input:Lorg/apache/oro/text/regex/CharStringPointer;

    invoke-virtual {v1, v3}, Lorg/apache/oro/text/regex/CharStringPointer;->_setOffset(I)V

    iput v5, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    iput v3, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__programSize:I

    iput v3, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    invoke-direct {v0, v3}, Lorg/apache/oro/text/regex/Perl5Compiler;->__emitCode(C)V

    invoke-direct {v0, v3, v4}, Lorg/apache/oro/text/regex/Perl5Compiler;->__parseExpression(Z[I)I

    move-result v1

    if-eq v1, v9, :cond_2a

    iget-object v1, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__modifierFlags:[C

    aget-char v1, v1, v3

    iget v4, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__cost:I

    const/16 v8, 0xa

    if-lt v4, v8, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_isExpensive:Z

    iput v9, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_startClassOffset:I

    iput v3, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    iput v9, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    iput v2, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_options:I

    iput-object v6, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_startString:[C

    iput-object v6, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustString:[C

    iget-object v2, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2, v5}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v4

    aget-char v2, v2, v4

    if-nez v2, :cond_26

    invoke-static {v5}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v2

    iget-object v4, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v4, v4, v2

    move v10, v2

    move v11, v3

    move v12, v11

    :goto_1
    const/16 v13, 0x1b

    const/16 v14, 0x11

    if-ne v4, v13, :cond_2

    move v11, v5

    :cond_1
    move v9, v8

    goto/16 :goto_16

    :cond_2
    const/16 v13, 0xc

    if-ne v4, v13, :cond_3

    iget-object v15, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v15, v10}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v16

    aget-char v15, v15, v16

    if-ne v15, v13, :cond_1

    :cond_3
    if-eq v4, v14, :cond_1

    const/16 v15, 0x1d

    if-eq v4, v15, :cond_1

    sget-object v15, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    aget-char v15, v15, v4

    if-ne v15, v8, :cond_4

    iget-object v15, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v15, v10}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result v15

    if-gtz v15, :cond_1

    :cond_4
    move v4, v5

    move-object v15, v6

    :goto_2
    const/16 v6, 0xe

    if-nez v4, :cond_1c

    const/4 v4, 0x4

    if-eqz v12, :cond_6

    if-eqz v11, :cond_5

    iget-boolean v11, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__sawBackreference:Z

    if-nez v11, :cond_6

    :cond_5
    iget v11, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    or-int/2addr v11, v4

    iput v11, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    :cond_6
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v3

    move/from16 v17, v4

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    :goto_3
    if-lez v2, :cond_17

    iget-object v9, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v8, v9, v2

    if-nez v8, :cond_7

    goto/16 :goto_e

    :cond_7
    const/16 v21, -0x7530

    if-ne v8, v13, :cond_a

    invoke-static {v9, v2}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v8

    aget-char v8, v9, v8

    if-ne v8, v13, :cond_9

    :goto_4
    iget-object v8, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v9, v8, v2

    if-eq v9, v13, :cond_8

    move/from16 v19, v21

    goto :goto_5

    :cond_8
    invoke-static {v8, v2}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v2

    goto :goto_4

    :cond_9
    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v2

    :goto_5
    const/16 v8, 0xa

    goto :goto_3

    :cond_a
    const/16 v13, 0x20

    if-ne v8, v13, :cond_b

    invoke-static {v9, v2}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v2

    move/from16 v19, v21

    const/16 v8, 0xa

    :goto_6
    const/16 v13, 0xc

    goto :goto_3

    :cond_b
    if-ne v8, v6, :cond_10

    move v8, v2

    :goto_7
    iget-object v9, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v9, v8}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v10

    aget-char v9, v9, v10

    const/16 v13, 0x1c

    if-eq v9, v13, :cond_f

    iget-object v9, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v10

    aget-char v9, v9, v10

    add-int v20, v20, v9

    iget-object v9, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v10

    aget-char v9, v9, v10

    sub-int v10, v19, v17

    if-ne v10, v4, :cond_c

    new-instance v10, Ljava/lang/String;

    iget-object v13, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-direct {v10, v13, v2, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v4, v9

    add-int v19, v19, v9

    iget-object v2, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2, v8}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v2

    :goto_8
    move v10, v2

    move v2, v8

    const/16 v9, 0xa

    goto/16 :goto_d

    :cond_c
    if-ltz v19, :cond_d

    move v10, v5

    goto :goto_9

    :cond_d
    move v10, v3

    :goto_9
    add-int/2addr v10, v4

    if-lt v9, v10, :cond_e

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v10, Ljava/lang/String;

    iget-object v11, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-direct {v10, v11, v2, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v4, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int v2, v19, v9

    iget-object v10, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v10, v8}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v10

    move-object v11, v4

    move v4, v9

    move/from16 v17, v19

    const/16 v9, 0xa

    move/from16 v19, v2

    move v2, v8

    goto/16 :goto_d

    :cond_e
    add-int v19, v19, v9

    goto :goto_8

    :cond_f
    move v8, v10

    goto :goto_7

    :cond_10
    sget-object v9, Lorg/apache/oro/text/regex/OpCode;->_opLengthVaries:[C

    invoke-static {v8, v9, v3}, Lorg/apache/oro/text/regex/OpCode;->_isInArray(C[CI)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-le v4, v9, :cond_11

    move/from16 v18, v17

    goto :goto_a

    :cond_11
    move-object v11, v12

    :goto_a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-ne v8, v14, :cond_12

    iget-object v9, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v12

    aget-char v9, v9, v12

    sget-object v12, Lorg/apache/oro/text/regex/OpCode;->_opLengthOne:[C

    invoke-static {v9, v12, v3}, Lorg/apache/oro/text/regex/OpCode;->_isInArray(C[CI)Z

    move-result v9

    if-eqz v9, :cond_12

    add-int/lit8 v20, v20, 0x1

    move-object v12, v11

    move/from16 v19, v21

    const/16 v9, 0xa

    goto :goto_c

    :cond_12
    sget-object v9, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    aget-char v8, v9, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_13

    iget-object v8, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v2}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v12

    const/4 v13, 0x2

    add-int/2addr v12, v13

    aget-char v8, v8, v12

    sget-object v12, Lorg/apache/oro/text/regex/OpCode;->_opLengthOne:[C

    invoke-static {v8, v12, v3}, Lorg/apache/oro/text/regex/OpCode;->_isInArray(C[CI)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v8, v2}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result v8

    add-int v20, v20, v8

    :cond_13
    move-object v12, v11

    move/from16 v19, v21

    goto :goto_c

    :cond_14
    const/16 v9, 0xa

    sget-object v13, Lorg/apache/oro/text/regex/OpCode;->_opLengthOne:[C

    invoke-static {v8, v13, v3}, Lorg/apache/oro/text/regex/OpCode;->_isInArray(C[CI)Z

    move-result v8

    if-eqz v8, :cond_16

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v4, v8, :cond_15

    move/from16 v18, v17

    goto :goto_b

    :cond_15
    move-object v11, v12

    :goto_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v11

    :goto_c
    move-object v11, v4

    move v4, v3

    :cond_16
    :goto_d
    iget-object v8, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v8, v2}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v2

    move v8, v9

    goto/16 :goto_6

    :cond_17
    :goto_e
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sget-object v4, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v6, v6, v10

    aget-char v4, v4, v6

    const/4 v6, 0x4

    if-ne v4, v6, :cond_18

    move v4, v5

    goto :goto_f

    :cond_18
    move v4, v3

    :goto_f
    add-int/2addr v2, v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v2, v4, :cond_19

    goto :goto_10

    :cond_19
    move-object v11, v12

    move/from16 v17, v18

    :goto_10
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1b

    if-nez v15, :cond_1b

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-gez v17, :cond_1a

    const/4 v9, -0x1

    goto :goto_11

    :cond_1a
    move/from16 v9, v17

    :goto_11
    iput v9, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    move/from16 v2, v20

    goto/16 :goto_18

    :cond_1b
    move/from16 v2, v20

    const/4 v6, 0x0

    goto/16 :goto_18

    :cond_1c
    move v9, v8

    iget-object v4, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v4, v4, v10

    if-ne v4, v6, :cond_1e

    new-instance v15, Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    add-int/lit8 v6, v10, 0x1

    invoke-static {v6}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v6

    iget-object v8, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v10}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v13

    aget-char v8, v8, v13

    invoke-direct {v15, v4, v6, v8}, Ljava/lang/String;-><init>([CII)V

    :cond_1d
    :goto_12
    move v4, v3

    :goto_13
    move v8, v9

    const/4 v9, -0x1

    const/16 v13, 0xc

    goto/16 :goto_2

    :cond_1e
    sget-object v6, Lorg/apache/oro/text/regex/OpCode;->_opLengthOne:[C

    const/4 v8, 0x2

    invoke-static {v4, v6, v8}, Lorg/apache/oro/text/regex/OpCode;->_isInArray(C[CI)Z

    move-result v6

    if-eqz v6, :cond_20

    :cond_1f
    :goto_14
    iput v10, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_startClassOffset:I

    goto :goto_12

    :cond_20
    const/16 v6, 0x14

    if-eq v4, v6, :cond_1f

    const/16 v6, 0x15

    if-ne v4, v6, :cond_21

    goto :goto_14

    :cond_21
    sget-object v6, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    aget-char v6, v6, v4

    const/4 v8, 0x3

    if-ne v6, v5, :cond_24

    if-ne v4, v5, :cond_22

    iput v5, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    goto :goto_15

    :cond_22
    const/4 v6, 0x2

    if-ne v4, v6, :cond_23

    iput v6, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    goto :goto_15

    :cond_23
    iput v8, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    :goto_15
    invoke-static {v10}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v10

    move v4, v5

    goto :goto_13

    :cond_24
    const/16 v6, 0x10

    if-ne v4, v6, :cond_1d

    sget-object v4, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    iget-object v6, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    invoke-static {v10}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v13

    aget-char v6, v6, v13

    aget-char v4, v4, v6

    const/4 v6, 0x7

    if-ne v4, v6, :cond_1d

    iget v4, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_1d

    const/16 v4, 0xb

    iput v4, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    goto :goto_15

    :goto_16
    if-ne v4, v14, :cond_25

    move v12, v5

    goto :goto_17

    :cond_25
    sget-object v6, Lorg/apache/oro/text/regex/OpCode;->_operandLength:[I

    aget v4, v6, v4

    add-int/2addr v10, v4

    :goto_17
    invoke-static {v10}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result v10

    iget-object v4, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__program:[C

    aget-char v4, v4, v10

    move v8, v9

    const/4 v6, 0x0

    const/4 v9, -0x1

    goto/16 :goto_1

    :cond_26
    move v2, v3

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_18
    and-int/2addr v1, v5

    if-eqz v1, :cond_27

    move v3, v5

    :cond_27
    iput-boolean v3, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    iget v1, v0, Lorg/apache/oro/text/regex/Perl5Compiler;->__numParentheses:I

    sub-int/2addr v1, v5

    iput v1, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_numParentheses:I

    iput v2, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_minLength:I

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustString:[C

    const/16 v1, 0x64

    iput v1, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustUtility:I

    :cond_28
    if-eqz v15, :cond_29

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v7, Lorg/apache/oro/text/regex/Perl5Pattern;->_startString:[C

    :cond_29
    return-object v7

    :cond_2a
    new-instance v1, Lorg/apache/oro/text/regex/MalformedPatternException;

    invoke-direct {v1, v8}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v1, Lorg/apache/oro/text/regex/MalformedPatternException;

    const-string v2, "Expression is too large."

    invoke-direct {v1, v2}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v1, Lorg/apache/oro/text/regex/MalformedPatternException;

    invoke-direct {v1, v8}, Lorg/apache/oro/text/regex/MalformedPatternException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
