.class public Lorg/apache/regexp/RE;
.super Ljava/lang/Object;
.source "RE.java"


# static fields
.field static final E_ALNUM:C = 'w'

.field static final E_BOUND:C = 'b'

.field static final E_DIGIT:C = 'd'

.field static final E_NALNUM:C = 'W'

.field static final E_NBOUND:C = 'B'

.field static final E_NDIGIT:C = 'D'

.field static final E_NSPACE:C = 'S'

.field static final E_SPACE:C = 's'

.field public static final MATCH_CASEINDEPENDENT:I = 0x1

.field public static final MATCH_MULTILINE:I = 0x2

.field public static final MATCH_NORMAL:I = 0x0

.field public static final MATCH_SINGLELINE:I = 0x4

.field static final NEWLINE:Ljava/lang/String;

.field static final OP_ANY:C = '.'

.field static final OP_ANYOF:C = '['

.field static final OP_ATOM:C = 'A'

.field static final OP_BACKREF:C = '#'

.field static final OP_BOL:C = '^'

.field static final OP_BRANCH:C = '|'

.field static final OP_CLOSE:C = ')'

.field static final OP_END:C = 'E'

.field static final OP_EOL:C = '$'

.field static final OP_ESCAPE:C = '\\'

.field static final OP_GOTO:C = 'G'

.field static final OP_MAYBE:C = '?'

.field static final OP_NOTHING:C = 'N'

.field static final OP_OPEN:C = '('

.field static final OP_PLUS:C = '+'

.field static final OP_POSIXCLASS:C = 'P'

.field static final OP_RELUCTANTMAYBE:C = '/'

.field static final OP_RELUCTANTPLUS:C = '='

.field static final OP_RELUCTANTSTAR:C = '8'

.field static final OP_STAR:C = '*'

.field static final POSIX_CLASS_ALNUM:C = 'w'

.field static final POSIX_CLASS_ALPHA:C = 'a'

.field static final POSIX_CLASS_BLANK:C = 'b'

.field static final POSIX_CLASS_CNTRL:C = 'c'

.field static final POSIX_CLASS_DIGIT:C = 'd'

.field static final POSIX_CLASS_GRAPH:C = 'g'

.field static final POSIX_CLASS_JPART:C = 'k'

.field static final POSIX_CLASS_JSTART:C = 'j'

.field static final POSIX_CLASS_LOWER:C = 'l'

.field static final POSIX_CLASS_PRINT:C = 'p'

.field static final POSIX_CLASS_PUNCT:C = '!'

.field static final POSIX_CLASS_SPACE:C = 's'

.field static final POSIX_CLASS_UPPER:C = 'u'

.field static final POSIX_CLASS_XDIGIT:C = 'x'

.field public static final REPLACE_ALL:I = 0x0

.field public static final REPLACE_FIRSTONLY:I = 0x1

.field static final maxNode:I = 0x10000

.field static final maxParen:I = 0x10

.field static final nodeSize:I = 0x3

.field static final offsetNext:I = 0x2

.field static final offsetOpcode:I = 0x0

.field static final offsetOpdata:I = 0x1


# instance fields
.field end0:I

.field end1:I

.field end2:I

.field endBackref:[I

.field endn:[I

.field idx:I

.field matchFlags:I

.field parenCount:I

.field program:Lorg/apache/regexp/REProgram;

.field search:Lorg/apache/regexp/CharacterIterator;

.field start0:I

.field start1:I

.field start2:I

.field startBackref:[I

.field startn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 446
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/regexp/RE;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 542
    invoke-direct {p0, v0, v1}, Lorg/apache/regexp/RE;-><init>(Lorg/apache/regexp/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, p1, v0}, Lorg/apache/regexp/RE;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/apache/regexp/RECompiler;

    invoke-direct {v0}, Lorg/apache/regexp/RECompiler;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/regexp/RECompiler;->compile(Ljava/lang/String;)Lorg/apache/regexp/REProgram;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/regexp/RE;-><init>(Lorg/apache/regexp/REProgram;)V

    .line 496
    invoke-virtual {p0, p2}, Lorg/apache/regexp/RE;->setMatchFlags(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/regexp/REProgram;)V
    .locals 1

    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, p1, v0}, Lorg/apache/regexp/RE;-><init>(Lorg/apache/regexp/REProgram;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/regexp/REProgram;I)V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    invoke-virtual {p0, p1}, Lorg/apache/regexp/RE;->setProgram(Lorg/apache/regexp/REProgram;)V

    .line 521
    invoke-virtual {p0, p2}, Lorg/apache/regexp/RE;->setMatchFlags(I)V

    return-void
.end method

.method private final allocParens()V
    .locals 4

    const/16 v0, 0x10

    .line 829
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/regexp/RE;->startn:[I

    .line 830
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/regexp/RE;->endn:[I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 835
    :cond_0
    iget-object v2, p0, Lorg/apache/regexp/RE;->startn:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 836
    iget-object v2, p0, Lorg/apache/regexp/RE;->endn:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isNewline(I)Z
    .locals 5

    .line 1748
    sget-object v0, Lorg/apache/regexp/RE;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge p1, v1, :cond_0

    return v3

    .line 1752
    :cond_0
    iget-object v1, p0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v1, p1}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    return v2

    .line 1756
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-gez v0, :cond_2

    return v2

    .line 1757
    :cond_2
    sget-object v1, Lorg/apache/regexp/RE;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v4, p0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v4, p1}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v4

    if-eq v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public static simplePatternToFullRegularExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 552
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 553
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 555
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 559
    :pswitch_0
    const-string v2, ".*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    :pswitch_1
    const/16 v3, 0x5c

    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 577
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMatchFlags()I
    .locals 1

    .line 619
    iget v0, p0, Lorg/apache/regexp/RE;->matchFlags:I

    return v0
.end method

.method public getParen(I)Ljava/lang/String;
    .locals 2

    .line 661
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RE;->getParenStart(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 663
    iget-object v1, p0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RE;->getParenEnd(I)I

    move-result p1

    invoke-interface {v1, v0, p1}, Lorg/apache/regexp/CharacterIterator;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParenCount()I
    .locals 1

    .line 650
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    return v0
.end method

.method public final getParenEnd(I)I
    .locals 1

    .line 706
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 720
    iget-object v0, p0, Lorg/apache/regexp/RE;->endn:[I

    if-nez v0, :cond_0

    .line 722
    invoke-direct {p0}, Lorg/apache/regexp/RE;->allocParens()V

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/apache/regexp/RE;->endn:[I

    aget p1, v0, p1

    return p1

    .line 717
    :cond_1
    iget p1, p0, Lorg/apache/regexp/RE;->end2:I

    return p1

    .line 714
    :cond_2
    iget p1, p0, Lorg/apache/regexp/RE;->end1:I

    return p1

    .line 711
    :cond_3
    iget p1, p0, Lorg/apache/regexp/RE;->end0:I

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public final getParenLength(I)I
    .locals 1

    .line 737
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    if-ge p1, v0, :cond_0

    .line 739
    invoke-virtual {p0, p1}, Lorg/apache/regexp/RE;->getParenEnd(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RE;->getParenStart(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final getParenStart(I)I
    .locals 1

    .line 675
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 689
    iget-object v0, p0, Lorg/apache/regexp/RE;->startn:[I

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lorg/apache/regexp/RE;->allocParens()V

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/apache/regexp/RE;->startn:[I

    aget p1, v0, p1

    return p1

    .line 686
    :cond_1
    iget p1, p0, Lorg/apache/regexp/RE;->start2:I

    return p1

    .line 683
    :cond_2
    iget p1, p0, Lorg/apache/regexp/RE;->start1:I

    return p1

    .line 680
    :cond_3
    iget p1, p0, Lorg/apache/regexp/RE;->start0:I

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public getProgram()Lorg/apache/regexp/REProgram;
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    return-object v0
.end method

.method public grep([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4

    .line 1724
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 1727
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 1740
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 1741
    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    .line 1730
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1733
    invoke-virtual {p0, v2}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1735
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected internalError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "RE internal error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1561
    invoke-virtual {p0, p1, v0}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/lang/String;I)Z
    .locals 1

    .line 1468
    new-instance v0, Lorg/apache/regexp/StringCharacterIterator;

    invoke-direct {v0, p1}, Lorg/apache/regexp/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/regexp/RE;->match(Lorg/apache/regexp/CharacterIterator;I)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/apache/regexp/CharacterIterator;I)Z
    .locals 8

    .line 1481
    iget-object v0, p0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    if-nez v0, :cond_0

    .line 1485
    const-string v0, "No RE program to run!"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RE;->internalError(Ljava/lang/String;)V

    .line 1489
    :cond_0
    iput-object p1, p0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    .line 1492
    iget-object v0, p0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    iget-object v0, v0, Lorg/apache/regexp/REProgram;->prefix:[C

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    :goto_0
    add-int/lit8 v0, p2, -0x1

    .line 1495
    invoke-interface {p1, v0}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1498
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/regexp/RE;->matchAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1508
    :cond_3
    iget v0, p0, Lorg/apache/regexp/RE;->matchFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1509
    :goto_1
    iget-object v3, p0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    iget-object v3, v3, Lorg/apache/regexp/REProgram;->prefix:[C

    .line 1510
    :goto_2
    array-length v4, v3

    add-int/2addr v4, p2

    sub-int/2addr v4, v2

    invoke-interface {p1, v4}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    if-eqz v0, :cond_6

    .line 1515
    invoke-interface {p1, p2}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aget-char v5, v3, v1

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_7

    goto :goto_7

    .line 1517
    :cond_6
    invoke-interface {p1, p2}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v4

    aget-char v5, v3, v1

    if-eq v4, v5, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v4, p2, 0x1

    move v5, v2

    .line 1523
    :goto_3
    array-length v6, v3

    if-lt v5, v6, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    add-int/lit8 v6, v4, 0x1

    .line 1527
    invoke-interface {p1, v4}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v3, v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_a

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v4, 0x1

    .line 1529
    invoke-interface {p1, v4}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v4

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v3, v5

    if-eq v4, v5, :cond_a

    :goto_4
    move v4, v1

    goto :goto_5

    :cond_a
    move v4, v2

    :goto_5
    move v5, v7

    if-nez v4, :cond_c

    .line 1537
    :goto_6
    array-length v4, v3

    if-ne v5, v4, :cond_b

    .line 1540
    invoke-virtual {p0, p2}, Lorg/apache/regexp/RE;->matchAt(I)Z

    move-result v4

    if-eqz v4, :cond_b

    return v2

    :cond_b
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_c
    move v4, v6

    goto :goto_3
.end method

.method protected matchAt(I)Z
    .locals 5

    const/4 v0, -0x1

    .line 1428
    iput v0, p0, Lorg/apache/regexp/RE;->start0:I

    .line 1429
    iput v0, p0, Lorg/apache/regexp/RE;->end0:I

    .line 1430
    iput v0, p0, Lorg/apache/regexp/RE;->start1:I

    .line 1431
    iput v0, p0, Lorg/apache/regexp/RE;->end1:I

    .line 1432
    iput v0, p0, Lorg/apache/regexp/RE;->start2:I

    .line 1433
    iput v0, p0, Lorg/apache/regexp/RE;->end2:I

    const/4 v1, 0x0

    .line 1434
    iput-object v1, p0, Lorg/apache/regexp/RE;->startn:[I

    .line 1435
    iput-object v1, p0, Lorg/apache/regexp/RE;->endn:[I

    const/4 v1, 0x1

    .line 1436
    iput v1, p0, Lorg/apache/regexp/RE;->parenCount:I

    const/4 v2, 0x0

    .line 1437
    invoke-virtual {p0, v2, p1}, Lorg/apache/regexp/RE;->setParenStart(II)V

    .line 1440
    iget-object v3, p0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    iget v3, v3, Lorg/apache/regexp/REProgram;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    .line 1442
    new-array v4, v3, [I

    iput-object v4, p0, Lorg/apache/regexp/RE;->startBackref:[I

    .line 1443
    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/regexp/RE;->endBackref:[I

    :cond_0
    const/high16 v3, 0x10000

    .line 1448
    invoke-virtual {p0, v2, v3, p1}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 1450
    invoke-virtual {p0, v2, p1}, Lorg/apache/regexp/RE;->setParenEnd(II)V

    return v1

    .line 1455
    :cond_1
    iput v2, p0, Lorg/apache/regexp/RE;->parenCount:I

    return v2
.end method

.method protected matchNodes(III)I
    .locals 16

    move-object/from16 v0, p0

    .line 856
    iget-object v1, v0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    iget-object v1, v1, Lorg/apache/regexp/REProgram;->instruction:[C

    move/from16 v2, p1

    move/from16 v3, p3

    :goto_0
    const/4 v4, -0x1

    move/from16 v5, p2

    if-lt v2, v5, :cond_0

    .line 1414
    const-string v1, "Corrupt program"

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RE;->internalError(Ljava/lang/String;)V

    return v4

    .line 859
    :cond_0
    aget-char v6, v1, v2

    add-int/lit8 v7, v2, 0x2

    .line 860
    aget-char v7, v1, v7

    int-to-short v7, v7

    add-int/2addr v7, v2

    add-int/lit8 v8, v2, 0x1

    .line 861
    aget-char v8, v1, v8

    const/16 v9, 0x23

    const/4 v10, 0x0

    if-eq v6, v9, :cond_48

    const/16 v9, 0x24

    const/4 v12, 0x2

    if-eq v6, v9, :cond_46

    const/16 v9, 0x28

    const/high16 v13, 0x10000

    if-eq v6, v9, :cond_42

    const/16 v9, 0x29

    if-eq v6, v9, :cond_3e

    const/16 v9, 0x2e

    if-eq v6, v9, :cond_39

    const/16 v9, 0x2f

    if-eq v6, v9, :cond_35

    const/16 v9, 0x38

    if-eq v6, v9, :cond_33

    const/16 v9, 0x3d

    if-eq v6, v9, :cond_31

    const/16 v9, 0x41

    if-eq v6, v9, :cond_29

    const/16 v15, 0x45

    if-eq v6, v15, :cond_28

    const/16 v15, 0x47

    if-eq v6, v15, :cond_50

    const/16 v15, 0x4e

    if-eq v6, v15, :cond_50

    const/16 v15, 0x50

    const/16 v14, 0x77

    const/16 v9, 0x73

    if-eq v6, v15, :cond_1c

    const/16 v15, 0x5e

    if-eq v6, v15, :cond_1a

    const/16 v12, 0x7c

    if-eq v6, v12, :cond_16

    const/16 v12, 0x5b

    if-eq v6, v12, :cond_f

    const/16 v2, 0x5c

    .line 863
    const-string v12, "\'"

    if-eq v6, v2, :cond_1

    .line 1406
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Invalid opcode \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/regexp/RE;->internalError(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1
    const/16 v2, 0x42

    const/16 v6, 0x62

    if-eq v8, v2, :cond_a

    const/16 v2, 0x57

    const/16 v13, 0x53

    const/16 v15, 0x44

    const/16 v11, 0x64

    if-eq v8, v15, :cond_2

    if-eq v8, v13, :cond_2

    if-eq v8, v2, :cond_2

    if-eq v8, v6, :cond_a

    if-eq v8, v11, :cond_2

    if-eq v8, v9, :cond_2

    if-eq v8, v14, :cond_2

    .line 1103
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Unrecognized escape \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/regexp/RE;->internalError(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1067
    :cond_2
    iget-object v6, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v6, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_3

    return v4

    :cond_3
    if-eq v8, v15, :cond_8

    if-eq v8, v13, :cond_6

    if-eq v8, v2, :cond_4

    if-eq v8, v11, :cond_8

    if-eq v8, v9, :cond_6

    if-eq v8, v14, :cond_4

    goto/16 :goto_d

    .line 1077
    :cond_4
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eq v8, v14, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x1

    :goto_1
    if-eq v2, v10, :cond_3a

    return v4

    .line 1093
    :cond_6
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eq v8, v9, :cond_7

    goto :goto_2

    :cond_7
    const/4 v10, 0x1

    :goto_2
    if-eq v2, v10, :cond_3a

    return v4

    .line 1085
    :cond_8
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eq v8, v11, :cond_9

    goto :goto_3

    :cond_9
    const/4 v10, 0x1

    :goto_3
    if-eq v2, v10, :cond_3a

    return v4

    .line 1049
    :cond_a
    invoke-virtual {v0, v10}, Lorg/apache/regexp/RE;->getParenStart(I)I

    move-result v2

    if-ne v3, v2, :cond_b

    const/16 v2, 0xa

    goto :goto_4

    :cond_b
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v2, v9}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    .line 1050
    :goto_4
    iget-object v9, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v9, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v14, 0xa

    goto :goto_5

    :cond_c
    iget-object v9, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v9, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v14

    .line 1051
    :goto_5
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eq v2, v9, :cond_d

    move v2, v10

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    :goto_6
    if-eq v8, v6, :cond_e

    goto :goto_7

    :cond_e
    const/4 v10, 0x1

    :goto_7
    if-ne v2, v10, :cond_50

    return v4

    .line 1314
    :cond_f
    iget-object v6, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v6, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_10

    return v4

    .line 1320
    :cond_10
    iget-object v6, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v6, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v6

    .line 1321
    iget v9, v0, Lorg/apache/regexp/RE;->matchFlags:I

    const/4 v11, 0x1

    and-int/2addr v9, v11

    if-nez v9, :cond_11

    goto :goto_8

    :cond_11
    const/4 v10, 0x1

    :goto_8
    if-eqz v10, :cond_12

    .line 1324
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    :cond_12
    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    :cond_13
    if-lt v2, v8, :cond_14

    return v4

    :cond_14
    add-int/lit8 v9, v2, 0x1

    .line 1334
    aget-char v11, v1, v2

    add-int/lit8 v2, v2, 0x2

    .line 1335
    aget-char v9, v1, v9

    if-eqz v10, :cond_15

    .line 1340
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    .line 1341
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    :cond_15
    if-lt v6, v11, :cond_13

    if-gt v6, v9, :cond_13

    goto/16 :goto_d

    .line 1364
    :cond_16
    aget-char v6, v1, v7

    if-eq v6, v12, :cond_17

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_17
    add-int/lit8 v5, v2, 0x3

    .line 1376
    invoke-virtual {v0, v5, v13, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v5

    if-eq v5, v4, :cond_18

    return v5

    :cond_18
    add-int/lit8 v5, v2, 0x2

    .line 1382
    aget-char v5, v1, v5

    int-to-short v5, v5

    add-int/2addr v2, v5

    if-eqz v5, :cond_19

    .line 1385
    aget-char v5, v1, v2

    if-eq v5, v12, :cond_17

    :cond_19
    return v4

    :cond_1a
    if-eqz v3, :cond_50

    .line 1008
    iget v2, v0, Lorg/apache/regexp/RE;->matchFlags:I

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_1b

    if-lez v3, :cond_1b

    add-int/lit8 v2, v3, -0x1

    .line 1011
    invoke-direct {v0, v2}, Lorg/apache/regexp/RE;->isNewline(I)Z

    move-result v2

    if-nez v2, :cond_50

    :cond_1b
    return v4

    .line 1173
    :cond_1c
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v4

    :cond_1d
    const/16 v2, 0x21

    if-eq v8, v2, :cond_27

    const/16 v2, 0x67

    if-eq v8, v2, :cond_26

    const/16 v2, 0x70

    const/16 v6, 0xf

    if-eq v8, v2, :cond_25

    if-eq v8, v9, :cond_24

    const/16 v2, 0x75

    if-eq v8, v2, :cond_23

    if-eq v8, v14, :cond_22

    const/16 v2, 0x78

    if-eq v8, v2, :cond_1e

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    .line 1302
    const-string v2, "Bad posix class"

    invoke-virtual {v0, v2}, Lorg/apache/regexp/RE;->internalError(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1237
    :pswitch_0
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v2, v12, :cond_3a

    return v4

    .line 1295
    :pswitch_1
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1288
    :pswitch_2
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1195
    :pswitch_3
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1216
    :pswitch_4
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v2, v6, :cond_3a

    return v4

    .line 1202
    :pswitch_5
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1188
    :pswitch_6
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1277
    :cond_1e
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x30

    if-lt v2, v6, :cond_1f

    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x39

    if-le v2, v6, :cond_3a

    .line 1278
    :cond_1f
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x61

    if-lt v2, v6, :cond_20

    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x66

    if-le v2, v6, :cond_3a

    .line 1279
    :cond_20
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x41

    if-lt v2, v6, :cond_21

    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v6, 0x46

    if-le v2, v6, :cond_3a

    :cond_21
    return v4

    .line 1181
    :cond_22
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1244
    :cond_23
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3a

    return v4

    .line 1209
    :cond_24
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3a

    return v4

    .line 1251
    :cond_25
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-ne v2, v6, :cond_3a

    return v4

    .line 1223
    :cond_26
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    packed-switch v2, :pswitch_data_2

    return v4

    .line 1259
    :cond_27
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    return v4

    .line 1400
    :cond_28
    invoke-virtual {v0, v10, v3}, Lorg/apache/regexp/RE;->setParenEnd(II)V

    return v3

    .line 1131
    :cond_29
    iget-object v6, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v6, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    return v4

    :cond_2a
    add-int/lit8 v6, v2, 0x3

    .line 1141
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int v9, v8, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v2, v9}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v4

    .line 1147
    :cond_2b
    iget v2, v0, Lorg/apache/regexp/RE;->matchFlags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_2e

    :goto_9
    if-lt v10, v8, :cond_2c

    goto/16 :goto_11

    .line 1151
    :cond_2c
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int v3, v6, v10

    aget-char v3, v1, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_2d

    return v4

    :cond_2d
    add-int/lit8 v10, v10, 0x1

    move v3, v9

    goto :goto_9

    :cond_2e
    :goto_a
    if-lt v10, v8, :cond_2f

    goto/16 :goto_11

    .line 1161
    :cond_2f
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    add-int v3, v6, v10

    aget-char v3, v1, v3

    if-eq v2, v3, :cond_30

    return v4

    :cond_30
    add-int/lit8 v10, v10, 0x1

    move v3, v9

    goto :goto_a

    :cond_31
    add-int/lit8 v1, v2, 0x3

    .line 881
    invoke-virtual {v0, v1, v7, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v3

    if-ne v3, v4, :cond_32

    return v4

    .line 884
    :cond_32
    invoke-virtual {v0, v7, v13, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_31

    return v1

    .line 895
    :cond_33
    invoke-virtual {v0, v7, v13, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_34

    return v1

    :cond_34
    add-int/lit8 v1, v2, 0x3

    .line 900
    invoke-virtual {v0, v1, v7, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v3

    if-ne v3, v4, :cond_33

    return v4

    .line 871
    :cond_35
    :goto_b
    invoke-virtual {v0, v7, v13, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_36

    return v1

    :cond_36
    add-int/lit8 v1, v10, 0x1

    if-nez v10, :cond_38

    add-int/lit8 v5, v2, 0x3

    .line 876
    invoke-virtual {v0, v5, v7, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v3

    if-ne v3, v4, :cond_37

    goto :goto_c

    :cond_37
    move v10, v1

    goto :goto_b

    :cond_38
    :goto_c
    return v4

    .line 1109
    :cond_39
    iget v2, v0, Lorg/apache/regexp/RE;->matchFlags:I

    const/4 v6, 0x4

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_3b

    .line 1111
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    return v4

    :cond_3a
    :goto_d
    :pswitch_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 1121
    :cond_3b
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3c

    goto :goto_e

    :cond_3c
    move v3, v6

    goto/16 :goto_11

    :cond_3d
    :goto_e
    return v4

    .line 929
    :cond_3e
    iget-object v1, v0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    iget v1, v1, Lorg/apache/regexp/REProgram;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3f

    .line 931
    iget-object v1, v0, Lorg/apache/regexp/RE;->endBackref:[I

    aput v3, v1, v8

    .line 933
    :cond_3f
    invoke-virtual {v0, v7, v13, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_41

    add-int/lit8 v2, v8, 0x1

    .line 936
    iget v5, v0, Lorg/apache/regexp/RE;->parenCount:I

    if-le v2, v5, :cond_40

    .line 938
    iput v2, v0, Lorg/apache/regexp/RE;->parenCount:I

    .line 942
    :cond_40
    invoke-virtual {v0, v8}, Lorg/apache/regexp/RE;->getParenEnd(I)I

    move-result v2

    if-ne v2, v4, :cond_41

    .line 944
    invoke-virtual {v0, v8, v3}, Lorg/apache/regexp/RE;->setParenEnd(II)V

    :cond_41
    return v1

    .line 906
    :cond_42
    iget-object v1, v0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    iget v1, v1, Lorg/apache/regexp/REProgram;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_43

    .line 908
    iget-object v1, v0, Lorg/apache/regexp/RE;->startBackref:[I

    aput v3, v1, v8

    .line 910
    :cond_43
    invoke-virtual {v0, v7, v13, v3}, Lorg/apache/regexp/RE;->matchNodes(III)I

    move-result v1

    if-eq v1, v4, :cond_45

    add-int/lit8 v2, v8, 0x1

    .line 913
    iget v5, v0, Lorg/apache/regexp/RE;->parenCount:I

    if-le v2, v5, :cond_44

    .line 915
    iput v2, v0, Lorg/apache/regexp/RE;->parenCount:I

    .line 919
    :cond_44
    invoke-virtual {v0, v8}, Lorg/apache/regexp/RE;->getParenStart(I)I

    move-result v2

    if-ne v2, v4, :cond_45

    .line 921
    invoke-virtual {v0, v8, v3}, Lorg/apache/regexp/RE;->setParenStart(II)V

    :cond_45
    return v1

    .line 1024
    :cond_46
    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v10}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    invoke-interface {v2, v3}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 1027
    iget v2, v0, Lorg/apache/regexp/RE;->matchFlags:I

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_47

    .line 1030
    invoke-direct {v0, v3}, Lorg/apache/regexp/RE;->isNewline(I)Z

    move-result v2

    if-nez v2, :cond_50

    :cond_47
    return v4

    .line 952
    :cond_48
    iget-object v2, v0, Lorg/apache/regexp/RE;->startBackref:[I

    aget v2, v2, v8

    .line 953
    iget-object v6, v0, Lorg/apache/regexp/RE;->endBackref:[I

    aget v6, v6, v8

    if-eq v2, v4, :cond_51

    if-ne v6, v4, :cond_49

    goto :goto_12

    :cond_49
    if-eq v2, v6, :cond_50

    sub-int/2addr v6, v2

    .line 971
    iget-object v8, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int v9, v3, v6

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v8, v9}, Lorg/apache/regexp/CharacterIterator;->isEnd(I)Z

    move-result v8

    if-eqz v8, :cond_4a

    return v4

    .line 977
    :cond_4a
    iget v8, v0, Lorg/apache/regexp/RE;->matchFlags:I

    and-int/2addr v8, v11

    if-eqz v8, :cond_4d

    :goto_f
    if-lt v10, v6, :cond_4b

    goto :goto_11

    .line 982
    :cond_4b
    iget-object v8, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v8, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    iget-object v8, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int v11, v2, v10

    invoke-interface {v8, v11}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v3, v8, :cond_4c

    return v4

    :cond_4c
    add-int/lit8 v10, v10, 0x1

    move v3, v9

    goto :goto_f

    :cond_4d
    :goto_10
    if-lt v10, v6, :cond_4e

    goto :goto_11

    .line 993
    :cond_4e
    iget-object v8, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v8, v3}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v3

    iget-object v8, v0, Lorg/apache/regexp/RE;->search:Lorg/apache/regexp/CharacterIterator;

    add-int v11, v2, v10

    invoke-interface {v8, v11}, Lorg/apache/regexp/CharacterIterator;->charAt(I)C

    move-result v8

    if-eq v3, v8, :cond_4f

    return v4

    :cond_4f
    add-int/lit8 v10, v10, 0x1

    move v3, v9

    goto :goto_10

    :cond_50
    :goto_11
    move v2, v7

    goto/16 :goto_0

    :cond_51
    :goto_12
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setMatchFlags(I)V
    .locals 0

    .line 599
    iput p1, p0, Lorg/apache/regexp/RE;->matchFlags:I

    return-void
.end method

.method protected final setParenEnd(II)V
    .locals 1

    .line 785
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 802
    iget-object v0, p0, Lorg/apache/regexp/RE;->endn:[I

    if-nez v0, :cond_0

    .line 804
    invoke-direct {p0}, Lorg/apache/regexp/RE;->allocParens()V

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/apache/regexp/RE;->endn:[I

    aput p2, v0, p1

    goto :goto_0

    .line 798
    :cond_1
    iput p2, p0, Lorg/apache/regexp/RE;->end2:I

    goto :goto_0

    .line 794
    :cond_2
    iput p2, p0, Lorg/apache/regexp/RE;->end1:I

    goto :goto_0

    .line 790
    :cond_3
    iput p2, p0, Lorg/apache/regexp/RE;->end0:I

    :cond_4
    :goto_0
    return-void
.end method

.method protected final setParenStart(II)V
    .locals 1

    .line 751
    iget v0, p0, Lorg/apache/regexp/RE;->parenCount:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 768
    iget-object v0, p0, Lorg/apache/regexp/RE;->startn:[I

    if-nez v0, :cond_0

    .line 770
    invoke-direct {p0}, Lorg/apache/regexp/RE;->allocParens()V

    .line 772
    :cond_0
    iget-object v0, p0, Lorg/apache/regexp/RE;->startn:[I

    aput p2, v0, p1

    goto :goto_0

    .line 764
    :cond_1
    iput p2, p0, Lorg/apache/regexp/RE;->start2:I

    goto :goto_0

    .line 760
    :cond_2
    iput p2, p0, Lorg/apache/regexp/RE;->start1:I

    goto :goto_0

    .line 756
    :cond_3
    iput p2, p0, Lorg/apache/regexp/RE;->start0:I

    :cond_4
    :goto_0
    return-void
.end method

.method public setProgram(Lorg/apache/regexp/REProgram;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lorg/apache/regexp/RE;->program:Lorg/apache/regexp/REProgram;

    return-void
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1576
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1583
    invoke-virtual {p0, p1, v3}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 1586
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/regexp/RE;->getParenStart(I)I

    move-result v4

    .line 1589
    invoke-virtual {p0, v2}, Lorg/apache/regexp/RE;->getParenEnd(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1594
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1599
    :cond_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    goto :goto_0

    .line 1607
    :cond_2
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1608
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1610
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1614
    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 1615
    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1
.end method

.method public subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1646
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/regexp/RE;->subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subst(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1669
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_3

    .line 1676
    invoke-virtual {p0, p1, v3}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1679
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/regexp/RE;->getParenStart(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1682
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1685
    invoke-virtual {p0, v2}, Lorg/apache/regexp/RE;->getParenEnd(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v4

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    :cond_3
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1706
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1710
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
