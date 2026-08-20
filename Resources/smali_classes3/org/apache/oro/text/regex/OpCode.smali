.class final Lorg/apache/oro/text/regex/OpCode;
.super Ljava/lang/Object;


# static fields
.field static final _ALNUM:C = '\u0012'

.field static final _ALNUMC:C = '2'

.field static final _ALPHA:C = '&'

.field static final _ANY:C = '\u0007'

.field static final _ANYOF:C = '\t'

.field static final _ANYOFUN:C = '#'

.field static final _ASCII:C = '3'

.field static final _BACK:C = '\r'

.field static final _BLANK:C = '\''

.field static final _BOL:C = '\u0001'

.field static final _BOUND:C = '\u0014'

.field static final _BRANCH:C = '\u000c'

.field static final _CLOSE:C = '\u001c'

.field static final _CNTRL:C = '('

.field static final _CURLY:C = '\n'

.field static final _CURLYX:C = '\u000b'

.field static final _DIGIT:C = '\u0018'

.field static final _END:C = '\u0000'

.field static final _EOL:C = '\u0004'

.field static final _EXACTLY:C = '\u000e'

.field static final _GBOL:C = '\u001e'

.field static final _GRAPH:C = ')'

.field static final _IFMATCH:C = '\u001f'

.field static final _LOWER:C = '*'

.field static final _MBOL:C = '\u0002'

.field static final _MEOL:C = '\u0005'

.field static final _MINMOD:C = '\u001d'

.field static final _NALNUM:C = '\u0013'

.field static final _NANYOFUN:C = '$'

.field static final _NBOUND:C = '\u0015'

.field static final _NDIGIT:C = '\u0019'

.field static final _NOPCODE:C = '0'

.field static final _NOTHING:C = '\u000f'

.field static final _NSPACE:C = '\u0017'

.field static final _NULL_OFFSET:I = -0x1

.field static final _NULL_POINTER:C = '\u0000'

.field static final _ONECHAR:C = '1'

.field static final _OPCODE:C = '/'

.field static final _OPEN:C = '\u001b'

.field static final _PLUS:C = '\u0011'

.field static final _PRINT:C = '+'

.field static final _PUNCT:C = ','

.field static final _RANGE:C = '%'

.field static final _REF:C = '\u001a'

.field static final _SANY:C = '\u0008'

.field static final _SBOL:C = '\u0003'

.field static final _SEOL:C = '\u0006'

.field static final _SPACE:C = '\u0016'

.field static final _STAR:C = '\u0010'

.field static final _SUCCEED:C = '!'

.field static final _UNLESSM:C = ' '

.field static final _UPPER:C = '-'

.field static final _WHILEM:C = '\"'

.field static final _XDIGIT:C = '.'

.field static final _opLengthOne:[C

.field static final _opLengthVaries:[C

.field static final _opType:[C

.field static final _operandLength:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x34

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/oro/text/regex/OpCode;->_operandLength:[I

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/oro/text/regex/OpCode;->_opType:[C

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/oro/text/regex/OpCode;->_opLengthVaries:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/oro/text/regex/OpCode;->_opLengthOne:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x1s
        0x4s
        0x4s
        0x4s
        0x7s
        0x7s
        0x9s
        0xas
        0xas
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1s
        0xcs
        0xcs
        0x0s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
    .end array-data

    :array_2
    .array-data 2
        0xcs
        0xds
        0x10s
        0x11s
        0xas
        0xbs
        0x1as
        0x22s
    .end array-data

    :array_3
    .array-data 2
        0x7s
        0x8s
        0x9s
        0x12s
        0x13s
        0x16s
        0x17s
        0x18s
        0x19s
        0x23s
        0x24s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final _getArg1([CI)C
    .locals 0

    add-int/lit8 p1, p1, 0x2

    aget-char p0, p0, p1

    return p0
.end method

.method static final _getArg2([CI)C
    .locals 0

    add-int/lit8 p1, p1, 0x3

    aget-char p0, p0, p1

    return p0
.end method

.method static final _getNext([CI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/oro/text/regex/OpCode;->_getNextOffset([CI)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    aget-char p0, p0, p1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    sub-int/2addr p1, v1

    return p1

    :cond_2
    add-int/2addr p1, v1

    return p1
.end method

.method static final _getNextOffset([CI)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    return p0
.end method

.method static final _getNextOperator(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static final _getOperand(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static final _getPrevOperator(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method static final _isInArray(C[CI)Z
    .locals 1

    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    aget-char p2, p1, p2

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method static final _isWordCharacter(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

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
