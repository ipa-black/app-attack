.class public final Lorg/apache/oro/text/regex/Perl5Debug;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _printOperator([CILjava/lang/StringBuffer;)V
    .locals 3

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-char v0, p0, p1

    const/16 v1, 0x7d

    const/16 v2, 0x2c

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Operator is unrecognized.  Faulty expression code!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_1
    const-string p0, "ASCII"

    goto/16 :goto_3

    :pswitch_2
    const-string p0, "ALNUMC"

    goto/16 :goto_3

    :pswitch_3
    const-string p0, "XDIGIT"

    goto/16 :goto_3

    :pswitch_4
    const-string p0, "UPPER"

    goto/16 :goto_3

    :pswitch_5
    const-string p0, "PUNCT"

    goto/16 :goto_3

    :pswitch_6
    const-string p0, "PRINT"

    goto/16 :goto_3

    :pswitch_7
    const-string p0, "LOWER"

    goto/16 :goto_3

    :pswitch_8
    const-string p0, "GRAPH"

    goto/16 :goto_3

    :pswitch_9
    const-string p0, "CNTRL"

    goto/16 :goto_3

    :pswitch_a
    const-string p0, "BLANK"

    goto/16 :goto_3

    :pswitch_b
    const-string p0, "ALPHA"

    goto/16 :goto_3

    :pswitch_c
    const-string p0, "NANYOFUN"

    goto/16 :goto_3

    :pswitch_d
    const-string p0, "ANYOFUN"

    goto/16 :goto_3

    :pswitch_e
    const-string p0, "WHILEM"

    goto/16 :goto_3

    :pswitch_f
    const-string p0, "SUCCEED"

    goto/16 :goto_3

    :pswitch_10
    const-string p0, "UNLESSM"

    goto/16 :goto_3

    :pswitch_11
    const-string p0, "IFMATCH"

    goto/16 :goto_3

    :pswitch_12
    const-string p0, "GBOL"

    goto/16 :goto_3

    :pswitch_13
    const-string p0, "MINMOD"

    goto/16 :goto_3

    :pswitch_14
    const-string v0, "CLOSE"

    goto :goto_0

    :pswitch_15
    const-string v0, "OPEN"

    goto :goto_0

    :pswitch_16
    const-string v0, "REF"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_17
    const-string p0, "NDIGIT"

    goto/16 :goto_3

    :pswitch_18
    const-string p0, "DIGIT"

    goto/16 :goto_3

    :pswitch_19
    const-string p0, "NSPACE"

    goto/16 :goto_3

    :pswitch_1a
    const-string p0, "SPACE"

    goto/16 :goto_3

    :pswitch_1b
    const-string p0, "NBOUND"

    goto :goto_3

    :pswitch_1c
    const-string p0, "BOUND"

    goto :goto_3

    :pswitch_1d
    const-string p0, "NALNUM"

    goto :goto_3

    :pswitch_1e
    const-string p0, "ALNUM"

    goto :goto_3

    :pswitch_1f
    const-string p0, "PLUS"

    goto :goto_3

    :pswitch_20
    const-string p0, "STAR"

    goto :goto_3

    :pswitch_21
    const-string p0, "NOTHING"

    goto :goto_3

    :pswitch_22
    const-string p0, "EXACTLY"

    goto :goto_3

    :pswitch_23
    const-string p0, "BACK"

    goto :goto_3

    :pswitch_24
    const-string p0, "BRANCH"

    goto :goto_3

    :pswitch_25
    const-string v0, "CURLYX {"

    goto :goto_1

    :pswitch_26
    const-string v0, "CURLY {"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg1([CI)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/apache/oro/text/regex/OpCode;->_getArg2([CI)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_27
    const-string p0, "ANYOF"

    goto :goto_3

    :pswitch_28
    const-string p0, "SANY"

    goto :goto_3

    :pswitch_29
    const-string p0, "ANY"

    goto :goto_3

    :pswitch_2a
    const-string p0, "MEOL"

    goto :goto_3

    :pswitch_2b
    const-string p0, "EOL"

    goto :goto_3

    :pswitch_2c
    const-string p0, "SBOL"

    goto :goto_3

    :pswitch_2d
    const-string p0, "MBOL"

    goto :goto_3

    :pswitch_2e
    const-string p0, "BOL"

    goto :goto_3

    :pswitch_2f
    const-string p0, "END"

    goto :goto_3

    :goto_2
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static printProgram(Lorg/apache/oro/text/regex/Perl5Pattern;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_program:[C

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x1b

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0xa

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_startString:[C

    const-string v3, "\' "

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "start `"

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_startString:[C

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_startClassOffset:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    const-string v2, "stclass `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_startClassOffset:I

    invoke-static {v0, v2, v1}, Lorg/apache/oro/text/regex/Perl5Debug;->_printOperator([CILjava/lang/StringBuffer;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    const-string v0, "anchored "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const-string v0, "plus "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_anchor:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const-string v0, "implicit "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustString:[C

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "must have \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_mustString:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\" back "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_back:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "minlen "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_minLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    aget-char v2, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {v0, v3, v1}, Lorg/apache/oro/text/regex/Perl5Debug;->_printOperator([CILjava/lang/StringBuffer;)V

    invoke-static {v0, v3}, Lorg/apache/oro/text/regex/OpCode;->_getNext([CI)I

    move-result v5

    sget-object v6, Lorg/apache/oro/text/regex/OpCode;->_operandLength:[I

    aget v6, v6, v2

    add-int/2addr v3, v6

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0x2

    const/16 v6, 0x9

    if-ne v2, v6, :cond_7

    add-int/lit8 v3, v3, 0x12

    goto :goto_3

    :cond_7
    const/16 v6, 0x23

    if-eq v2, v6, :cond_a

    const/16 v6, 0x24

    if-ne v2, v6, :cond_8

    goto :goto_2

    :cond_8
    const/16 v6, 0xe

    if-ne v2, v6, :cond_b

    add-int/lit8 v3, v3, 0x3

    const-string v5, " <"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    aget-char v5, v0, v3

    const v6, 0xffff

    if-ne v5, v6, :cond_9

    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    aget-char v3, v0, v5

    if-nez v3, :cond_c

    add-int/lit8 v5, v5, 0x1

    :cond_b
    move v3, v5

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x25

    if-ne v3, v6, :cond_d

    add-int/lit8 v5, v5, 0x3

    goto :goto_2

    :cond_d
    add-int/lit8 v5, v5, 0x2

    goto :goto_2
.end method
