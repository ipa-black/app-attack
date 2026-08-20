.class public Lorg/apache/oro/text/regex/Perl5Substitution;
.super Lorg/apache/oro/text/regex/StringSubstitution;


# static fields
.field public static final INTERPOLATE_ALL:I = 0x0

.field public static final INTERPOLATE_NONE:I = -0x1

.field static final _OPCODE_COPY:I = -0x1

.field static final _OPCODE_ENDCASE_MODE:I = -0x6

.field static final _OPCODE_LOWERCASE_CHAR:I = -0x2

.field static final _OPCODE_LOWERCASE_MODE:I = -0x4

.field static final _OPCODE_UPPERCASE_CHAR:I = -0x3

.field static final _OPCODE_UPPERCASE_MODE:I = -0x5

.field private static final __MAX_GROUPS:I = 0xffff

.field private static final __OPCODE_STORAGE_SIZE:I = 0x20


# instance fields
.field transient _lastInterpolation:Ljava/lang/String;

.field _numInterpolations:I

.field _subOpcodes:[I

.field _subOpcodesCount:I

.field _substitutionChars:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/oro/text/regex/Perl5Substitution;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/oro/text/regex/Perl5Substitution;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/oro/text/regex/StringSubstitution;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/regex/Perl5Substitution;->setSubstitution(Ljava/lang/String;I)V

    return-void
.end method

.method private __addElement(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    array-length v1, v0

    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodesCount:I

    if-ne v2, v1, :cond_0

    add-int/lit8 v2, v1, 0x20

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    iget v1, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodesCount:I

    aput p1, v0, v1

    return-void
.end method

.method private static final __isInterpolationCharacter(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x26

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

.method private __parseSubs(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lorg/apache/oro/text/regex/Perl5Substitution;->_substitutionChars:[C

    array-length v2, v1

    const/16 v3, 0x20

    new-array v3, v3, [I

    iput-object v3, v0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodesCount:I

    const/4 v4, -0x1

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v10, v8

    move v9, v4

    :goto_0
    if-lt v5, v2, :cond_0

    return-void

    :cond_0
    aget-char v11, v1, v5

    add-int/lit8 v12, v5, 0x1

    const/16 v13, 0x24

    const/4 v14, 0x1

    if-eqz v6, :cond_4

    const/16 v15, 0xa

    invoke-static {v11, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v15

    if-le v15, v4, :cond_2

    const v11, 0xffff

    if-gt v7, v11, :cond_1

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v15

    :cond_1
    if-ne v12, v2, :cond_12

    invoke-direct {v0, v7}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    goto/16 :goto_3

    :cond_2
    const/16 v6, 0x26

    if-ne v11, v6, :cond_3

    add-int/lit8 v6, v5, -0x1

    aget-char v6, v1, v6

    if-ne v6, v13, :cond_3

    invoke-direct {v0, v3}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v6, v3

    move v7, v6

    goto/16 :goto_3

    :cond_3
    invoke-direct {v0, v7}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v6, v3

    move v7, v6

    :cond_4
    const/16 v15, 0x5c

    if-eq v11, v13, :cond_5

    if-ne v11, v15, :cond_6

    :cond_5
    if-eqz v8, :cond_9

    :cond_6
    if-gez v9, :cond_7

    invoke-direct {v0, v4}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    invoke-direct {v0, v5}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v9, v5

    :cond_7
    if-ne v12, v2, :cond_8

    sub-int/2addr v12, v9

    invoke-direct {v0, v12}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    :cond_8
    move v8, v3

    goto :goto_3

    :cond_9
    if-ltz v9, :cond_a

    sub-int v9, v5, v9

    invoke-direct {v0, v9}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v9, v4

    :cond_a
    if-ne v12, v2, :cond_b

    goto :goto_3

    :cond_b
    aget-char v3, v1, v12

    if-ne v11, v13, :cond_c

    invoke-static {v3}, Lorg/apache/oro/text/regex/Perl5Substitution;->__isInterpolationCharacter(C)Z

    move-result v6

    goto :goto_3

    :cond_c
    if-ne v11, v15, :cond_12

    const/16 v11, 0x6c

    if-ne v3, v11, :cond_d

    if-nez v10, :cond_12

    const/4 v3, -0x2

    :goto_1
    invoke-direct {v0, v3}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v5, v12

    goto :goto_3

    :cond_d
    const/16 v11, 0x75

    if-ne v3, v11, :cond_e

    if-nez v10, :cond_12

    const/4 v3, -0x3

    goto :goto_1

    :cond_e
    const/16 v11, 0x4c

    if-ne v3, v11, :cond_f

    const/4 v3, -0x4

    :goto_2
    invoke-direct {v0, v3}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v5, v12

    move v10, v14

    goto :goto_3

    :cond_f
    const/16 v11, 0x55

    if-ne v3, v11, :cond_10

    const/4 v3, -0x5

    goto :goto_2

    :cond_10
    const/16 v11, 0x45

    if-ne v3, v11, :cond_11

    const/4 v3, -0x6

    invoke-direct {v0, v3}, Lorg/apache/oro/text/regex/Perl5Substitution;->__addElement(I)V

    move v5, v12

    const/4 v10, 0x0

    goto :goto_3

    :cond_11
    move v8, v14

    :cond_12
    :goto_3
    add-int/2addr v5, v14

    const/4 v3, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method _calcSub(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    iget-object v4, v0, Lorg/apache/oro/text/regex/Perl5Substitution;->_substitutionChars:[C

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/apache/oro/text/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget v7, v0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodesCount:I

    move v8, v5

    move v9, v8

    :goto_0
    if-lt v8, v7, :cond_0

    return-void

    :cond_0
    aget v10, v3, v8

    const/4 v11, -0x3

    const/4 v12, -0x2

    const/4 v13, -0x5

    const/4 v14, -0x4

    if-ltz v10, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/apache/oro/text/regex/MatchResult;->groups()I

    move-result v15

    if-ge v10, v15, :cond_4

    invoke-interface {v2, v10}, Lorg/apache/oro/text/regex/MatchResult;->begin(I)I

    move-result v15

    if-gez v15, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-interface {v2, v10}, Lorg/apache/oro/text/regex/MatchResult;->end(I)I

    move-result v10

    if-gez v10, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/apache/oro/text/regex/MatchResult;->length()I

    move-result v5

    if-ge v15, v5, :cond_12

    if-gt v10, v5, :cond_12

    if-lt v15, v10, :cond_3

    goto/16 :goto_8

    :cond_3
    sub-int/2addr v10, v15

    move-object v5, v6

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    if-ne v10, v5, :cond_d

    add-int/lit8 v5, v8, 0x1

    if-lt v5, v7, :cond_5

    move v8, v5

    goto/16 :goto_8

    :cond_5
    aget v15, v3, v5

    add-int/lit8 v8, v8, 0x2

    if-lt v8, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    aget v10, v3, v8

    move-object v5, v4

    :goto_1
    if-ne v9, v12, :cond_7

    add-int/lit8 v9, v15, 0x1

    aget-char v11, v5, v15

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    :goto_2
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v5, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_3
    const/4 v9, 0x0

    goto :goto_8

    :cond_7
    if-ne v9, v11, :cond_8

    add-int/lit8 v9, v15, 0x1

    aget-char v11, v5, v15

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    goto :goto_2

    :cond_8
    if-ne v9, v14, :cond_a

    add-int v11, v15, v10

    :goto_4
    if-lt v15, v11, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v15, 0x1

    aget-char v12, v5, v15

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v15, v10

    goto :goto_4

    :cond_a
    if-ne v9, v13, :cond_c

    add-int v11, v15, v10

    :goto_5
    if-lt v15, v11, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v10, v15, 0x1

    aget-char v12, v5, v15

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v15, v10

    goto :goto_5

    :cond_c
    invoke-virtual {v1, v5, v15, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_d
    if-eq v10, v12, :cond_10

    if-ne v10, v11, :cond_e

    goto :goto_6

    :cond_e
    if-eq v10, v14, :cond_11

    if-ne v10, v13, :cond_f

    goto :goto_7

    :cond_f
    const/4 v5, -0x6

    if-ne v10, v5, :cond_12

    goto :goto_3

    :cond_10
    :goto_6
    if-eq v9, v14, :cond_12

    if-eq v9, v13, :cond_12

    :cond_11
    :goto_7
    move v9, v10

    :cond_12
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method _finalInterpolatedSub(Lorg/apache/oro/text/regex/MatchResult;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/oro/text/regex/Perl5Substitution;->_calcSub(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public appendSubstitution(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;ILorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p6}, Lorg/apache/oro/text/regex/StringSubstitution;->appendSubstitution(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;ILorg/apache/oro/text/regex/PatternMatcherInput;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;)V

    return-void

    :cond_0
    iget p4, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_numInterpolations:I

    const/4 p5, 0x1

    if-lt p4, p5, :cond_3

    if-ge p3, p4, :cond_1

    goto :goto_0

    :cond_1
    if-ne p3, p4, :cond_2

    invoke-virtual {p0, p2}, Lorg/apache/oro/text/regex/Perl5Substitution;->_finalInterpolatedSub(Lorg/apache/oro/text/regex/MatchResult;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_lastInterpolation:Ljava/lang/String;

    :cond_2
    iget-object p2, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_lastInterpolation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/oro/text/regex/Perl5Substitution;->_calcSub(Ljava/lang/StringBuffer;Lorg/apache/oro/text/regex/MatchResult;)V

    :goto_1
    return-void
.end method

.method public setSubstitution(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/regex/Perl5Substitution;->setSubstitution(Ljava/lang/String;I)V

    return-void
.end method

.method public setSubstitution(Ljava/lang/String;I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/oro/text/regex/StringSubstitution;->setSubstitution(Ljava/lang/String;)V

    iput p2, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_numInterpolations:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const/16 p2, 0x24

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ne p2, v1, :cond_0

    const/16 p2, 0x5c

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/oro/text/regex/Perl5Substitution;->__parseSubs(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_subOpcodes:[I

    :goto_0
    iput-object v0, p0, Lorg/apache/oro/text/regex/Perl5Substitution;->_lastInterpolation:Ljava/lang/String;

    return-void
.end method
