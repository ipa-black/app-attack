.class public final Lorg/apache/oro/text/regex/Perl5Matcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/PatternMatcher;


# static fields
.field private static final __DEFAULT_LAST_MATCH_END_OFFSET:I = -0x64

.field private static final __EOS:C = '\uffff'

.field private static final __INITIAL_NUM_OFFSETS:I = 0x14


# instance fields
.field private __beginMatchOffsets:[I

.field private __bol:I

.field private __caseInsensitive:Z

.field private __currentOffset:I

.field private __currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

.field private __endMatchOffsets:[I

.field private __endOffset:I

.field private __eol:I

.field private __expSize:I

.field private __input:[C

.field private __inputOffset:I

.field private __lastMatchInputEndOffset:I

.field private __lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

.field private __lastParen:I

.field private __lastSuccess:Z

.field private __multiline:Z

.field private __numParentheses:I

.field private __originalInput:[C

.field private __previousChar:C

.field private __program:[C

.field private __stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    iput-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    iput-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__caseInsensitive:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__stack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    const/16 v0, -0x64

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchInputEndOffset:I

    return-void
.end method

.method private static __compare([CI[CII)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    array-length v2, p0

    if-lt p1, v2, :cond_1

    return v0

    :cond_1
    array-length v2, p2

    if-lt p3, v2, :cond_2

    return v0

    :cond_2
    aget-char v2, p0, p1

    aget-char v3, p2, p3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private static __findFirst([CII[C)I
    .locals 6

    array-length v0, p0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    aget-char v1, p3, v0

    :goto_0
    if-lt p1, p2, :cond_1

    goto :goto_3

    :cond_1
    aget-char v2, p0, p1

    if-ne v1, v2, :cond_5

    move v2, p1

    move v3, v0

    :goto_1
    if-ge v2, p2, :cond_4

    array-length v4, p3

    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-char v4, p3, v3

    aget-char v5, p0, v2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    array-length v2, p3

    if-lt v3, v2, :cond_5

    :goto_3
    return p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private __initInterpreterGlobals(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)V
    .locals 3

    iget-boolean v0, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    iput-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__caseInsensitive:Z

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    iput p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Repetition;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Repetition;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastRepetition:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget-object v0, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_program:[C

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    const/16 v0, 0xa

    if-eq p5, p3, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, -0x1

    aget-char p2, p2, v2

    iput-char p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    iget-boolean v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    if-nez v2, :cond_2

    if-ne p2, v0, :cond_2

    iput-char v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    goto :goto_1

    :cond_1
    :goto_0
    iput-char v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    :cond_2
    :goto_1
    iget p1, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_numParentheses:I

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    iput p5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__bol:I

    iput p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    if-eqz p2, :cond_3

    array-length p2, p2

    if-le p1, p2, :cond_5

    :cond_3
    const/16 p2, 0x14

    if-ge p1, p2, :cond_4

    move p1, p2

    :cond_4
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    :cond_5
    return-void
.end method

.method private __interpret(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)Z
    .locals 6

    invoke-direct/range {p0 .. p5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__initInterpreterGlobals(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)V

    iget-object p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustString:[C

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    if-nez v3, :cond_0

    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    :cond_0
    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    if-ltz v3, :cond_7

    :cond_1
    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-static {v3, v4, p4, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__findFirst([CII[C)I

    move-result v3

    iput v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    const v4, 0x8000

    if-lt v3, p4, :cond_3

    iget p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_options:I

    and-int/2addr p2, v4

    if-nez p2, :cond_2

    iget p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustUtility:I

    add-int/2addr p2, v1

    iput p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustUtility:I

    :cond_2
    :goto_0
    move v1, v2

    goto/16 :goto_21

    :cond_3
    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    if-ltz v3, :cond_5

    iget v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    iget v4, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-ge v3, p5, :cond_4

    iput p5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    :cond_4
    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    array-length p2, p2

    add-int/2addr v3, p2

    goto :goto_2

    :cond_5
    iget-boolean v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isExpensive:Z

    if-nez v3, :cond_6

    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_options:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    iget v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustUtility:I

    sub-int/2addr v3, v1

    iput v3, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustUtility:I

    if-gez v3, :cond_6

    iput-object v0, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustString:[C

    iput p5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_1

    :cond_6
    iput p5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    array-length v3, p2

    goto :goto_2

    :cond_7
    :goto_1
    move v3, v2

    :goto_2
    iget p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 p2, p2, 0x3

    if-eqz p2, :cond_d

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-ne p2, p3, :cond_8

    invoke-direct {p0, p3}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_8

    goto/16 :goto_21

    :cond_8
    iget-boolean p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    if-nez p2, :cond_9

    iget p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_9

    iget p1, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    :cond_9
    if-lez v3, :cond_a

    sub-int/2addr v3, v1

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    sub-int p2, p4, v3

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-le p1, p5, :cond_b

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    :cond_b
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p1, p2, :cond_c

    goto/16 :goto_20

    :cond_c
    iget-object p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    add-int/lit8 p4, p1, 0x1

    iput p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    aget-char p1, p3, p1

    const/16 p3, 0xa

    if-ne p1, p3, :cond_b

    if-ge p4, p2, :cond_b

    invoke-direct {p0, p4}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_21

    :cond_d
    iget-object p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_startString:[C

    if-eqz p2, :cond_15

    iget-object p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_startString:[C

    iget p1, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_12

    aget-char p1, p2, v2

    :goto_4
    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p2, p4, :cond_e

    goto/16 :goto_20

    :cond_e
    iget-object p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p3, p2

    if-ne p1, p3, :cond_11

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_f

    goto/16 :goto_21

    :cond_f
    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p2, v1

    :goto_5
    iput p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-ge p2, p4, :cond_11

    iget-object p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p3, p2

    if-eq p3, p1, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_11
    :goto_6
    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_4

    :cond_12
    :goto_7
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-static {p1, p3, p4, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__findFirst([CII[C)I

    move-result p1

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p1, p4, :cond_13

    goto/16 :goto_20

    :cond_13
    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_21

    :cond_14
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_7

    :cond_15
    iget p2, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_startClassOffset:I

    const/4 p5, -0x1

    if-eq p2, p5, :cond_3d

    iget p1, p1, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_16

    move p1, v1

    goto :goto_8

    :cond_16
    move p1, v2

    :goto_8
    if-lez v3, :cond_17

    add-int/lit8 p5, v3, -0x1

    goto :goto_9

    :cond_17
    move p5, v2

    :goto_9
    sub-int p5, p4, p5

    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char p4, p4, p2

    const/16 v4, 0x9

    if-eq p4, v4, :cond_39

    const/16 v4, 0x23

    if-eq p4, v4, :cond_35

    const/16 v4, 0x24

    if-eq p4, v4, :cond_35

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_20

    :pswitch_0
    move p2, v1

    :goto_a
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p5, :cond_18

    goto/16 :goto_20

    :cond_18
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p3

    if-nez p3, :cond_1a

    if-eqz p2, :cond_19

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_19

    goto/16 :goto_21

    :cond_19
    move p2, p1

    goto :goto_b

    :cond_1a
    move p2, v1

    :goto_b
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_a

    :pswitch_1
    move p2, v1

    :goto_c
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p5, :cond_1b

    goto/16 :goto_20

    :cond_1b
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p3

    if-eqz p3, :cond_1d

    if-eqz p2, :cond_1c

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto/16 :goto_21

    :cond_1c
    move p2, p1

    goto :goto_d

    :cond_1d
    move p2, v1

    :goto_d
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_c

    :pswitch_2
    move p2, v1

    :goto_e
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p5, :cond_1e

    goto/16 :goto_20

    :cond_1e
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p3

    if-nez p3, :cond_20

    if-eqz p2, :cond_1f

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    goto/16 :goto_21

    :cond_1f
    move p2, p1

    goto :goto_f

    :cond_20
    move p2, v1

    :goto_f
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_e

    :pswitch_3
    move p2, v1

    :goto_10
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p5, :cond_21

    goto/16 :goto_20

    :cond_21
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p3

    if-eqz p3, :cond_23

    if-eqz p2, :cond_22

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_22

    goto/16 :goto_21

    :cond_22
    move p2, p1

    goto :goto_11

    :cond_23
    move p2, v1

    :goto_11
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_10

    :pswitch_4
    if-lez v3, :cond_24

    add-int/lit8 p5, p5, -0x1

    :cond_24
    move p1, p5

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-eq p2, p3, :cond_25

    iget-object p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    sub-int/2addr p2, v1

    aget-char p2, p3, p2

    goto :goto_12

    :cond_25
    iget-char p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    :goto_12
    invoke-static {p2}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p2

    :goto_13
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p1, :cond_27

    if-gtz v3, :cond_26

    if-nez p2, :cond_2

    :cond_26
    invoke-direct {p0, p3}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_21

    :cond_27
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p3

    if-eq p2, p3, :cond_28

    xor-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_28
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p3}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p3

    if-eqz p3, :cond_29

    goto/16 :goto_21

    :cond_29
    :goto_14
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_13

    :pswitch_5
    if-lez v3, :cond_2a

    add-int/lit8 p5, p5, -0x1

    :cond_2a
    move p2, p5

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-eq p1, p3, :cond_2b

    iget-object p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    sub-int/2addr p1, v1

    aget-char p1, p3, p1

    goto :goto_15

    :cond_2b
    iget-char p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    :goto_15
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p1

    :goto_16
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p2, :cond_2d

    if-gtz v3, :cond_2c

    if-eqz p1, :cond_2

    :cond_2c
    invoke-direct {p0, p3}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_21

    :cond_2d
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p3

    if-eq p1, p3, :cond_2e

    xor-int/lit8 p1, p1, 0x1

    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p3}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p3

    if-eqz p3, :cond_2e

    goto/16 :goto_21

    :cond_2e
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_16

    :pswitch_6
    move p2, v1

    :goto_17
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p5, :cond_2f

    goto/16 :goto_20

    :cond_2f
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p3

    if-nez p3, :cond_31

    if-eqz p2, :cond_30

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_30

    goto/16 :goto_21

    :cond_30
    move p2, p1

    goto :goto_18

    :cond_31
    move p2, v1

    :goto_18
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_17

    :pswitch_7
    move p2, v1

    :goto_19
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p3, p5, :cond_32

    goto/16 :goto_20

    :cond_32
    iget-object p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p3, p4, p3

    invoke-static {p3}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p3

    if-eqz p3, :cond_34

    if-eqz p2, :cond_33

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_33

    goto/16 :goto_21

    :cond_33
    move p2, p1

    goto :goto_1a

    :cond_34
    move p2, v1

    :goto_1a
    iget p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_19

    :cond_35
    invoke-static {p2}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result p3

    move p2, v1

    :goto_1b
    iget v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt v3, p5, :cond_36

    goto/16 :goto_20

    :cond_36
    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v3, v4, v3

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-direct {p0, v3, v4, p3, p4}, Lorg/apache/oro/text/regex/Perl5Matcher;->__matchUnicodeClass(C[CIC)Z

    move-result v3

    if-eqz v3, :cond_38

    if-eqz p2, :cond_37

    iget p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    if-eqz p2, :cond_37

    goto :goto_21

    :cond_37
    move p2, p1

    goto :goto_1c

    :cond_38
    move p2, v1

    :goto_1c
    iget v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_1b

    :cond_39
    invoke-static {p2}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result p2

    move p3, v1

    :goto_1d
    iget p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p4, p5, :cond_3a

    goto :goto_20

    :cond_3a
    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v3, v3, p4

    const/16 v4, 0x100

    if-ge v3, v4, :cond_3c

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    shr-int/lit8 v5, v3, 0x4

    add-int/2addr v5, p2

    aget-char v4, v4, v5

    and-int/lit8 v3, v3, 0xf

    shl-int v3, v1, v3

    and-int/2addr v3, v4

    if-nez v3, :cond_3c

    if-eqz p3, :cond_3b

    invoke-direct {p0, p4}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p3

    if-eqz p3, :cond_3b

    goto :goto_21

    :cond_3b
    move p3, p1

    goto :goto_1e

    :cond_3c
    move p3, v1

    :goto_1e
    iget p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/2addr p4, v1

    iput p4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    goto :goto_1d

    :cond_3d
    if-lez v3, :cond_3e

    sub-int/2addr v3, v1

    goto :goto_1f

    :cond_3e
    move v3, v2

    :goto_1f
    sub-int/2addr p4, v3

    :cond_3f
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_21

    :cond_40
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentOffset:I

    if-lt p1, p4, :cond_3f

    :goto_20
    goto/16 :goto_0

    :goto_21
    iput-boolean v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private __match(I)Z
    .locals 14

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0xffff

    if-eqz v1, :cond_1

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v5, v5, v0

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget-object v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    array-length v6, v6

    move v7, v3

    :goto_2
    if-lt p1, v6, :cond_2

    return v3

    :cond_2
    iget-object v8, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-static {v8, p1}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v8

    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char v10, v9, p1

    const/4 v11, -0x1

    const/16 v12, 0xa

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1c

    :pswitch_1
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result p1

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v5, v5, v0

    :cond_3
    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-direct {p0, v5, v9, p1, v10}, Lorg/apache/oro/text/regex/Perl5Matcher;->__matchUnicodeClass(C[CIC)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    if-nez v1, :cond_5

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-lt v0, p1, :cond_5

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    move p1, v3

    :goto_3
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_2
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget v1, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    add-int/lit8 v4, v1, 0x1

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iget v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastLocation:I

    if-ne v0, v5, :cond_8

    iget-object v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastRepetition:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget v0, v0, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iget v1, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_next:I

    invoke-direct {p0, v1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput v0, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    return v3

    :cond_8
    iget v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_min:I

    if-ge v4, v5, :cond_a

    iput v4, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iput v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastLocation:I

    iget v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_scan:I

    invoke-direct {p0, v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    iput v1, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    return v3

    :cond_a
    iget-boolean v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_minMod:Z

    if-eqz v5, :cond_e

    iget-object v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastRepetition:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget v5, v5, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iget v6, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_next:I

    invoke-direct {p0, v6}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v6

    if-eqz v6, :cond_b

    return v2

    :cond_b
    iget-object v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput v5, v6, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_max:I

    if-lt v4, v5, :cond_c

    return v3

    :cond_c
    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iput v4, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iput v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastLocation:I

    iget v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_scan:I

    invoke-direct {p0, v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_d
    iput v1, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    return v3

    :cond_e
    iget v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_max:I

    if-ge v4, v5, :cond_10

    iget v5, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_parenFloor:I

    invoke-direct {p0, v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__pushState(I)V

    iput v4, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iput v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastLocation:I

    iget v4, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_scan:I

    invoke-direct {p0, v4}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v4

    if-eqz v4, :cond_f

    return v2

    :cond_f
    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Matcher;->__popState()V

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    :cond_10
    iget-object v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastRepetition:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget v0, v0, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iget v4, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_next:I

    invoke-direct {p0, v4}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v4

    if-eqz v4, :cond_11

    return v2

    :cond_11
    iput v0, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput v1, p1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    return v3

    :pswitch_3
    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result p1

    if-eqz p1, :cond_60

    return v3

    :pswitch_4
    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result p1

    if-nez p1, :cond_60

    return v3

    :pswitch_5
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__bol:I

    if-ne v0, p1, :cond_12

    goto/16 :goto_1c

    :cond_12
    return v2

    :pswitch_6
    move v7, v2

    goto/16 :goto_1c

    :pswitch_7
    invoke-static {v9, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result p1

    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aput v0, v9, p1

    iget v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    if-le p1, v9, :cond_60

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    goto/16 :goto_1c

    :pswitch_8
    invoke-static {v9, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result p1

    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aput v0, v9, p1

    iget v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__expSize:I

    if-le p1, v9, :cond_60

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__expSize:I

    goto/16 :goto_1c

    :pswitch_9
    invoke-static {v9, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result p1

    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aget v9, v9, p1

    if-ne v9, v11, :cond_13

    return v3

    :cond_13
    iget-object v10, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget p1, v10, p1

    if-ne p1, v11, :cond_14

    return v3

    :cond_14
    if-ne v9, p1, :cond_15

    goto/16 :goto_1c

    :cond_15
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v10, v1, v9

    if-eq v10, v5, :cond_16

    return v3

    :cond_16
    sub-int/2addr p1, v9

    add-int v5, v0, p1

    iget v10, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-le v5, v10, :cond_17

    return v3

    :cond_17
    if-le p1, v2, :cond_18

    invoke-static {v1, v9, v1, v0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__compare([CI[CII)Z

    move-result p1

    if-nez p1, :cond_18

    return v3

    :cond_18
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v5, p1, :cond_19

    move p1, v2

    goto :goto_4

    :cond_19
    move p1, v3

    :goto_4
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v0, v0, v5

    goto :goto_5

    :cond_1a
    move v0, v4

    :goto_5
    move v1, p1

    move p1, v8

    move v13, v5

    move v5, v0

    move v0, v13

    goto/16 :goto_2

    :pswitch_a
    if-nez v1, :cond_1b

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-lt v0, p1, :cond_1b

    return v3

    :cond_1b
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_1d

    move p1, v2

    goto :goto_6

    :cond_1d
    move p1, v3

    :goto_6
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_b
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_1e

    return v3

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_1f

    move p1, v2

    goto :goto_7

    :cond_1f
    move p1, v3

    :goto_7
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_c
    if-nez v1, :cond_20

    return v3

    :cond_20
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_21

    return v3

    :cond_21
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_22

    move p1, v2

    goto :goto_8

    :cond_22
    move p1, v3

    :goto_8
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_d
    if-nez v1, :cond_23

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-lt v0, p1, :cond_23

    return v3

    :cond_23
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_24

    return v3

    :cond_24
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_25

    move p1, v2

    goto :goto_9

    :cond_25
    move p1, v3

    :goto_9
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_e
    iget v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__bol:I

    if-ne v0, v9, :cond_26

    iget-char v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    goto :goto_a

    :cond_26
    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    add-int/lit8 v10, v0, -0x1

    aget-char v9, v9, v10

    :goto_a
    invoke-static {v9}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result v9

    invoke-static {v5}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result v10

    if-ne v9, v10, :cond_27

    move v9, v2

    goto :goto_b

    :cond_27
    move v9, v3

    :goto_b
    iget-object v10, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char p1, v10, p1

    const/16 v10, 0x14

    if-ne p1, v10, :cond_28

    move p1, v2

    goto :goto_c

    :cond_28
    move p1, v3

    :goto_c
    if-ne v9, p1, :cond_60

    return v3

    :pswitch_f
    if-nez v1, :cond_29

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-lt v0, p1, :cond_29

    return v3

    :cond_29
    invoke-static {v5}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v3

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_2b

    move p1, v2

    goto :goto_d

    :cond_2b
    move p1, v3

    :goto_d
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_10
    if-nez v1, :cond_2c

    return v3

    :cond_2c
    invoke-static {v5}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p1

    if-nez p1, :cond_2d

    return v3

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_2e

    move p1, v2

    goto :goto_e

    :cond_2e
    move p1, v3

    :goto_e
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_11
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result p1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    add-int/lit8 v9, p1, 0x1

    aget-char p1, v1, p1

    aget-char v10, v1, v9

    if-eq v10, v5, :cond_2f

    return v3

    :cond_2f
    iget v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    sub-int/2addr v5, v0

    if-ge v5, p1, :cond_30

    return v3

    :cond_30
    if-le p1, v2, :cond_31

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    invoke-static {v1, v9, v5, v0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__compare([CI[CII)Z

    move-result v1

    if-nez v1, :cond_31

    return v3

    :cond_31
    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_32

    move p1, v2

    goto :goto_f

    :cond_32
    move p1, v3

    :goto_f
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto/16 :goto_1a

    :pswitch_12
    aget-char v8, v9, v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_33

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    goto/16 :goto_2

    :cond_33
    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    move v4, p1

    :cond_34
    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    invoke-static {v4}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result p1

    if-eqz p1, :cond_35

    return v2

    :cond_35
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    :goto_10
    if-gt p1, v1, :cond_37

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-static {p1, v4}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v4

    if-eq v4, v11, :cond_36

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char p1, p1, v4

    if-eq p1, v9, :cond_34

    :cond_36
    return v3

    :cond_37
    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aput v11, v5, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    :pswitch_13
    new-instance v1, Lorg/apache/oro/text/regex/Perl5Repetition;

    invoke-direct {v1}, Lorg/apache/oro/text/regex/Perl5Repetition;-><init>()V

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput-object v2, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastRepetition:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_parenFloor:I

    iput v11, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_numInstances:I

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-static {v2, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result v2

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_min:I

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-static {v2, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg2([CI)C

    move-result v2

    iput v2, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_max:I

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    iput p1, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_scan:I

    iput v8, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_next:I

    iput-boolean v7, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_minMod:Z

    iput v11, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastLocation:I

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    invoke-static {v8}, Lorg/apache/oro/text/regex/OpCode;->_getPrevOperator(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result p1

    iget-object v0, v1, Lorg/apache/oro/text/regex/Perl5Repetition;->_lastRepetition:Lorg/apache/oro/text/regex/Perl5Repetition;

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__currentRep:Lorg/apache/oro/text/regex/Perl5Repetition;

    return p1

    :pswitch_14
    if-ne v10, v12, :cond_38

    invoke-static {v9, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result v1

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-static {v5, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg2([CI)C

    move-result v5

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    goto :goto_12

    :cond_38
    const/16 v1, 0x10

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOperator(I)I

    move-result p1

    if-ne v10, v1, :cond_39

    move v1, v3

    goto :goto_11

    :cond_39
    move v1, v2

    :goto_11
    move v5, v4

    :goto_12
    iget-object v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char v9, v6, v8

    const/16 v10, 0xe

    const/16 v11, -0x3e8

    if-ne v9, v10, :cond_3a

    invoke-static {v8}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result v9

    add-int/2addr v9, v2

    aget-char v6, v6, v9

    move v10, v3

    move v9, v6

    goto :goto_13

    :cond_3a
    move v9, v4

    move v10, v11

    :goto_13
    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    if-eqz v7, :cond_40

    if-lez v1, :cond_3b

    invoke-direct {p0, p1, v1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__repeat(II)I

    move-result v6

    if-ge v6, v1, :cond_3b

    return v3

    :cond_3b
    :goto_14
    if-ge v5, v1, :cond_3c

    if-ne v5, v4, :cond_43

    if-gtz v1, :cond_3c

    goto :goto_16

    :cond_3c
    if-eq v10, v11, :cond_3d

    iget v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iget v7, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v6, v7, :cond_3d

    iget-object v7, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v6, v7, v6

    if-ne v6, v9, :cond_3e

    :cond_3d
    invoke-direct {p0, v8}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    return v2

    :cond_3e
    add-int v6, v0, v1

    iput v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    invoke-direct {p0, p1, v2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__repeat(II)I

    move-result v6

    if-eqz v6, :cond_3f

    add-int/lit8 v1, v1, 0x1

    add-int v6, v0, v1

    iput v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    goto :goto_14

    :cond_3f
    return v3

    :cond_40
    invoke-direct {p0, p1, v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__repeat(II)I

    move-result p1

    if-ge v1, p1, :cond_42

    sget-object v4, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char v5, v5, v8

    aget-char v4, v4, v5

    const/4 v6, 0x4

    if-ne v4, v6, :cond_42

    iget-boolean v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    if-eqz v4, :cond_41

    const/4 v4, 0x6

    if-ne v5, v4, :cond_42

    :cond_41
    move v1, p1

    :cond_42
    :goto_15
    if-ge p1, v1, :cond_44

    :cond_43
    :goto_16
    return v3

    :cond_44
    if-eq v10, v11, :cond_45

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iget v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v4, v5, :cond_45

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v4, v5, v4

    if-ne v4, v9, :cond_46

    :cond_45
    invoke-direct {p0, v8}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v4

    if-eqz v4, :cond_46

    return v2

    :cond_46
    add-int/lit8 p1, p1, -0x1

    add-int v4, v0, p1

    iput v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    goto :goto_15

    :pswitch_15
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result p1

    if-ne v5, v4, :cond_47

    if-eqz v1, :cond_47

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v5, v5, v0

    :cond_47
    const/16 v9, 0x100

    if-ge v5, v9, :cond_4b

    iget-object v9, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    shr-int/lit8 v10, v5, 0x4

    add-int/2addr p1, v10

    aget-char p1, v9, p1

    and-int/lit8 v5, v5, 0xf

    shl-int v5, v2, v5

    and-int/2addr p1, v5

    if-eqz p1, :cond_48

    goto :goto_18

    :cond_48
    if-nez v1, :cond_49

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-lt v0, p1, :cond_49

    return v3

    :cond_49
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_4a

    move p1, v2

    goto :goto_17

    :cond_4a
    move p1, v3

    :goto_17
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto :goto_1a

    :cond_4b
    :goto_18
    return v3

    :pswitch_16
    if-nez v1, :cond_4c

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-lt v0, p1, :cond_4c

    return v3

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_4d

    move p1, v2

    goto :goto_19

    :cond_4d
    move p1, v3

    :goto_19
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto :goto_1a

    :cond_4e
    move v1, v4

    :goto_1a
    move v5, v1

    move v1, p1

    goto/16 :goto_1c

    :pswitch_17
    if-nez v1, :cond_4f

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-ge v0, p1, :cond_50

    :cond_4f
    if-ne v5, v12, :cond_51

    :cond_50
    return v3

    :cond_51
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endOffset:I

    if-ge v0, p1, :cond_52

    move p1, v2

    goto :goto_1b

    :cond_52
    move p1, v3

    :goto_1b
    if-eqz p1, :cond_4e

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v1, v1, v0

    goto :goto_1a

    :pswitch_18
    if-nez v1, :cond_53

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-ge v0, p1, :cond_54

    :cond_53
    if-eq v5, v12, :cond_54

    return v3

    :cond_54
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    sub-int/2addr p1, v0

    if-le p1, v2, :cond_60

    return v3

    :pswitch_19
    if-nez v1, :cond_55

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-ge v0, p1, :cond_60

    :cond_55
    if-eq v5, v12, :cond_60

    return v3

    :pswitch_1a
    if-nez v1, :cond_56

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-ge v0, p1, :cond_57

    :cond_56
    if-eq v5, v12, :cond_57

    return v3

    :cond_57
    iget-boolean p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    if-nez p1, :cond_60

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    sub-int/2addr p1, v0

    if-le p1, v2, :cond_60

    return v3

    :pswitch_1b
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__bol:I

    if-ne v0, p1, :cond_58

    iget-char p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    if-ne p1, v12, :cond_58

    goto :goto_1c

    :cond_58
    return v3

    :pswitch_1c
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__bol:I

    if-ne v0, p1, :cond_59

    iget-char p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    if-ne p1, v12, :cond_5b

    goto :goto_1c

    :cond_59
    if-nez v1, :cond_5a

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-ge v0, p1, :cond_5b

    :cond_5a
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    add-int/lit8 v9, v0, -0x1

    aget-char p1, p1, v9

    if-ne p1, v12, :cond_5b

    goto :goto_1c

    :cond_5b
    return v3

    :pswitch_1d
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__bol:I

    if-ne v0, p1, :cond_5c

    iget-char p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__previousChar:C

    if-ne p1, v12, :cond_5e

    goto :goto_1c

    :cond_5c
    iget-boolean p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    if-eqz p1, :cond_5e

    if-nez v1, :cond_5d

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    if-ge v0, p1, :cond_5e

    :cond_5d
    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    add-int/lit8 v9, v0, -0x1

    aget-char p1, p1, v9

    if-ne p1, v12, :cond_5e

    goto :goto_1c

    :cond_5e
    return v3

    :pswitch_1e
    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchInputEndOffset:I

    if-ne v0, p1, :cond_5f

    return v3

    :cond_5f
    return v2

    :cond_60
    :goto_1c
    move p1, v8

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1e
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private __matchUnicodeClass(C[CIC)Z
    .locals 4

    const/16 v0, 0x23

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v0, :cond_0

    move p4, v2

    goto :goto_0

    :cond_0
    move p4, v1

    :cond_1
    :goto_0
    aget-char v0, p2, p3

    if-nez v0, :cond_2

    xor-int/lit8 p1, p4, 0x1

    return p1

    :cond_2
    const/16 v3, 0x25

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p3, 0x1

    aget-char v0, p2, v0

    if-lt p1, v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    aget-char v0, p2, v0

    if-gt p1, v0, :cond_3

    return p4

    :cond_3
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    :cond_4
    const/16 v3, 0x31

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p3, p3, 0x2

    aget-char v0, p2, v0

    if-ne v0, p1, :cond_1

    return p4

    :cond_5
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_6

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    move p4, v2

    goto :goto_1

    :cond_7
    move p4, v1

    :goto_1
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p3, p3, 0x2

    aget-char v0, p2, v0

    const/16 v3, 0x12

    if-eq v0, v3, :cond_12

    const/16 v3, 0x13

    if-eq v0, v3, :cond_11

    const/16 v3, 0x32

    if-eq v0, v3, :cond_10

    const/16 v3, 0x33

    if-eq v0, v3, :cond_f

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_a

    :cond_8
    const/16 v0, 0x61

    if-lt p1, v0, :cond_9

    const/16 v0, 0x66

    if-le p1, v0, :cond_a

    :cond_9
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    :cond_a
    return p4

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_b

    return p4

    :cond_b
    iget-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__caseInsensitive:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_d

    return p4

    :pswitch_3
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_c

    return p4

    :cond_c
    iget-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__caseInsensitive:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :cond_d
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_e

    return p4

    :cond_e
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_6
    return p4

    :pswitch_7
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :pswitch_8
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :pswitch_9
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :pswitch_a
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    return p4

    :pswitch_b
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :pswitch_c
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    return p4

    :pswitch_d
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :cond_f
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    return p4

    :cond_10
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :cond_11
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result v0

    if-nez v0, :cond_1

    return p4

    :cond_12
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return p4

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private __popState()V
    .locals 6

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__expSize:I

    const/4 v1, 0x1

    aget v2, v0, v1

    iput v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    const/4 v2, 0x3

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_2

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    add-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__expSize:I

    const/4 v2, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aput v2, v1, v0

    :cond_1
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, 0x2

    aget v3, v0, v3

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    aput v5, v4, v3

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    if-gt v3, v4, :cond_3

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget v5, v0, v2

    aput v5, v4, v3

    :cond_3
    add-int/lit8 v2, v2, 0x3

    goto :goto_0
.end method

.method private __pushState(I)V
    .locals 5

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__expSize:I

    sub-int v1, v0, p1

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x3

    :goto_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    iget v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    const/4 v4, 0x1

    aput v3, v2, v4

    iget v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    const/4 v4, 0x2

    aput v3, v2, v4

    :goto_1
    if-gt v0, p1, :cond_1

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__stack:Ljava/util/Stack;

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget v3, v3, v0

    aput v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aget v4, v4, v0

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput v0, v2, v3

    add-int/lit8 v0, v0, -0x3

    add-int/lit8 v1, v1, -0x3

    goto :goto_1
.end method

.method private __repeat(II)I
    .locals 6

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__eol:I

    const v2, 0xffff

    if-eq p2, v2, :cond_0

    sub-int v2, v1, v0

    if-ge p2, v2, :cond_0

    add-int v1, v0, p2

    :cond_0
    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_getOperand(I)I

    move-result p2

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char p1, v2, p1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_10

    const/16 v2, 0x8

    if-eq p1, v2, :cond_f

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-eq p1, v2, :cond_d

    const/16 v2, 0xe

    if-eq p1, v2, :cond_b

    const/16 v2, 0x12

    if-eq p1, v2, :cond_9

    const/16 v2, 0x13

    if-eq p1, v2, :cond_7

    const/16 v2, 0x23

    if-eq p1, v2, :cond_5

    const/16 v2, 0x24

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    :goto_0
    :pswitch_0
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_a

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    :pswitch_2
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_a

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_3
    :pswitch_3
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-ge v0, v1, :cond_12

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v2, v2, v0

    :goto_4
    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    invoke-direct {p0, v2, v3, p2, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__matchUnicodeClass(C[CIC)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_a

    :cond_6
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_12

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v2, v2, v0

    goto :goto_4

    :cond_7
    :goto_5
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    invoke-static {p1}, Lorg/apache/oro/text/regex/OpCode;->_isWordCharacter(C)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    add-int/2addr p2, v3

    :goto_7
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    aget-char p1, p1, p2

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char v2, v2, v0

    if-eq p1, v2, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    const/16 v2, 0x100

    if-ge p1, v2, :cond_12

    :goto_8
    if-ge p1, v2, :cond_12

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__program:[C

    shr-int/lit8 v5, p1, 0x4

    add-int/2addr v5, p2

    aget-char v4, v4, v5

    and-int/lit8 p1, p1, 0xf

    shl-int p1, v3, p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    goto :goto_8

    :cond_f
    move v0, v1

    goto :goto_a

    :cond_10
    :goto_9
    if-ge v0, v1, :cond_12

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__input:[C

    aget-char p1, p1, v0

    const/16 p2, 0xa

    if-ne p1, p2, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    iget p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    sub-int p1, v0, p1

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private __setLastMatchResult()V
    .locals 7

    new-instance v0, Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/oro/text/regex/Perl5MatchResult;-><init>(I)V

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    array-length v3, v3

    if-gt v1, v3, :cond_4

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aget v1, v1, v2

    iput v1, v0, Lorg/apache/oro/text/regex/Perl5MatchResult;->_matchBeginOffset:I

    move v0, v2

    :goto_0
    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aget v2, v5, v2

    sub-int/2addr v0, v2

    invoke-direct {v3, v4, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, v1, Lorg/apache/oro/text/regex/Perl5MatchResult;->_match:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ltz v1, :cond_1

    iget-object v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget-object v4, v4, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    iget v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    iget-object v6, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget v6, v6, Lorg/apache/oro/text/regex/Perl5MatchResult;->_matchBeginOffset:I

    sub-int/2addr v1, v6

    aput v1, v4, v5

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget-object v1, v1, Lorg/apache/oro/text/regex/Perl5MatchResult;->_beginGroupOffset:[I

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    aput v3, v1, v4

    :goto_1
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    aget v1, v1, v4

    if-ltz v1, :cond_2

    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget-object v3, v3, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    iget-object v5, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget v5, v5, Lorg/apache/oro/text/regex/Perl5MatchResult;->_matchBeginOffset:I

    sub-int v5, v1, v5

    aput v5, v3, v4

    if-le v1, v0, :cond_3

    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    array-length v3, v3

    if-gt v1, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget-object v1, v1, Lorg/apache/oro/text/regex/Perl5MatchResult;->_endGroupOffset:[I

    iget v4, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    aput v3, v1, v4

    :cond_3
    :goto_2
    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private __tryExpression(I)Z
    .locals 4

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastParen:I

    iput v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__expSize:I

    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__numParentheses:I

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__match(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aput p1, v2, v0

    iget-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__inputOffset:I

    aput v2, p1, v0

    return v1

    :cond_2
    return v0
.end method


# virtual methods
.method _toLower([C)[C
    .locals 4

    array-length v0, p1

    new-array v1, v0, [C

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    aget-char p1, v1, v3

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eqz p1, :cond_1

    aget-char p1, v1, v3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    aput-char p1, v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->contains([CLorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 9

    iget v0, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    iget v1, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move-object v4, p2

    check-cast v4, Lorg/apache/oro/text/regex/Perl5Pattern;

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-boolean p2, v4, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->_toLower([C)[C

    move-result-object p2

    iput-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    :cond_1
    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    :goto_0
    move-object v5, p2

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->getMatchEndOffset()I

    move-result p2

    iput p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchInputEndOffset:I

    iget v6, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    iget v7, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    iget v8, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/oro/text/regex/Perl5Matcher;->__interpret(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setCurrentOffset(I)V

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__beginMatchOffsets:[I

    aget v0, v0, v2

    iget-object v1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setMatchOffsets(II)V

    goto :goto_1

    :cond_3
    iget v0, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/oro/text/regex/PatternMatcherInput;->setCurrentOffset(I)V

    :goto_1
    const/16 p1, -0x64

    iput p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchInputEndOffset:I

    return p2
.end method

.method public contains([CLorg/apache/oro/text/regex/Pattern;)Z
    .locals 6

    move-object v1, p2

    check-cast v1, Lorg/apache/oro/text/regex/Perl5Pattern;

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-boolean p2, v1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->_toLower([C)[C

    move-result-object p1

    :cond_0
    move-object v2, p1

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__interpret(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)Z

    move-result p1

    return p1
.end method

.method public getMatch()Lorg/apache/oro/text/regex/MatchResult;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/oro/text/regex/Perl5Matcher;->__setLastMatchResult()V

    :cond_1
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    return-object v0
.end method

.method public isMultiline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    return v0
.end method

.method public matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->matches([CLorg/apache/oro/text/regex/Pattern;)Z

    move-result p1

    return p1
.end method

.method public matches(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 6

    move-object v1, p2

    check-cast v1, Lorg/apache/oro/text/regex/Perl5Pattern;

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-boolean p2, v1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->_toLower([C)[C

    move-result-object p2

    iput-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    :cond_0
    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    :goto_0
    move-object v2, p2

    iget v3, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    iget v4, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    iget v5, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__initInterpreterGlobals(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    iget p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget p2, p2, v0

    iget v1, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    if-eq p2, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/oro/text/regex/PatternMatcherInput;->length()I

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    iget p1, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    if-ne p2, p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    return p1

    :cond_3
    iput-boolean v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    return v0
.end method

.method public matches([CLorg/apache/oro/text/regex/Pattern;)Z
    .locals 6

    move-object v1, p2

    check-cast v1, Lorg/apache/oro/text/regex/Perl5Pattern;

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-boolean p2, v1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->_toLower([C)[C

    move-result-object p1

    :cond_0
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__initInterpreterGlobals(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__endMatchOffsets:[I

    aget v0, v0, p2

    array-length p1, p1

    if-ne v0, p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    return p2
.end method

.method public matchesPrefix(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->matchesPrefix([CLorg/apache/oro/text/regex/Pattern;I)Z

    move-result p1

    return p1
.end method

.method public matchesPrefix(Lorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/Pattern;)Z
    .locals 6

    move-object v1, p2

    check-cast v1, Lorg/apache/oro/text/regex/Perl5Pattern;

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_originalBuffer:[C

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-boolean p2, v1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/Perl5Matcher;->_toLower([C)[C

    move-result-object p2

    iput-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    :cond_0
    iget-object p2, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_toLowerBuffer:[C

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    :goto_0
    move-object v2, p2

    iget v3, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_beginOffset:I

    iget v4, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_endOffset:I

    iget v5, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__initInterpreterGlobals(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)V

    iget p1, p1, Lorg/apache/oro/text/regex/PatternMatcherInput;->_currentOffset:I

    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    return p1
.end method

.method public matchesPrefix([CLorg/apache/oro/text/regex/Pattern;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/oro/text/regex/Perl5Matcher;->matchesPrefix([CLorg/apache/oro/text/regex/Pattern;I)Z

    move-result p1

    return p1
.end method

.method public matchesPrefix([CLorg/apache/oro/text/regex/Pattern;I)Z
    .locals 6

    move-object v1, p2

    check-cast v1, Lorg/apache/oro/text/regex/Perl5Pattern;

    iput-object p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__originalInput:[C

    iget-boolean p2, v1, Lorg/apache/oro/text/regex/Perl5Pattern;->_isCaseInsensitive:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/oro/text/regex/Perl5Matcher;->_toLower([C)[C

    move-result-object p1

    :cond_0
    move-object v2, p1

    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/oro/text/regex/Perl5Matcher;->__initInterpreterGlobals(Lorg/apache/oro/text/regex/Perl5Pattern;[CIII)V

    invoke-direct {p0, p3}, Lorg/apache/oro/text/regex/Perl5Matcher;->__tryExpression(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastSuccess:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__lastMatchResult:Lorg/apache/oro/text/regex/Perl5MatchResult;

    return p1
.end method

.method public setMultiline(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/oro/text/regex/Perl5Matcher;->__multiline:Z

    return-void
.end method
