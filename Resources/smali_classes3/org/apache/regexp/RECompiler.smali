.class public Lorg/apache/regexp/RECompiler;
.super Ljava/lang/Object;
.source "RECompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/regexp/RECompiler$RERange;
    }
.end annotation


# static fields
.field static final ESC_BACKREF:C = '\uffff'

.field static final ESC_CLASS:C = '\ufffd'

.field static final ESC_COMPLEX:C = '\ufffe'

.field static final ESC_MASK:C = '\ufff0'

.field static final NODE_NORMAL:I = 0x0

.field static final NODE_NULLABLE:I = 0x1

.field static final NODE_TOPLEVEL:I = 0x2

.field static bracketEnd:[I = null

.field static final bracketFinished:I = -0x2

.field static bracketMin:[I = null

.field static bracketOpt:[I = null

.field static bracketStart:[I = null

.field static final bracketUnbounded:I = -0x1

.field static brackets:I = 0x0

.field static hashPOSIX:Ljava/util/Hashtable; = null

.field static final maxBrackets:I = 0xa


# instance fields
.field idx:I

.field instruction:[C

.field len:I

.field lenInstruction:I

.field parens:I

.field pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    .line 113
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x77

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "alnum"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x61

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x62

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "blank"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x63

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "cntrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "digit"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x67

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "graph"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "lower"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x70

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "print"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "punct"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x73

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "space"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x75

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "upper"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "xdigit"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "javastart"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6b

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "javapart"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 135
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    return-void
.end method


# virtual methods
.method allocBrackets()V
    .locals 7

    .line 262
    sget-object v0, Lorg/apache/regexp/RECompiler;->bracketStart:[I

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 265
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/regexp/RECompiler;->bracketStart:[I

    .line 266
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/regexp/RECompiler;->bracketEnd:[I

    .line 267
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/regexp/RECompiler;->bracketMin:[I

    .line 268
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    sget-object v2, Lorg/apache/regexp/RECompiler;->bracketStart:[I

    sget-object v3, Lorg/apache/regexp/RECompiler;->bracketEnd:[I

    sget-object v4, Lorg/apache/regexp/RECompiler;->bracketMin:[I

    sget-object v5, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    const/4 v6, -0x1

    aput v6, v5, v1

    aput v6, v4, v1

    aput v6, v3, v1

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method atom()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    const/16 v0, 0x41

    const/4 v1, 0x0

    .line 735
    invoke-virtual {p0, v0, v1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v0

    .line 744
    :goto_0
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v3, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-lt v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x7b

    const/16 v6, 0x3f

    if-ge v4, v3, :cond_4

    .line 749
    iget-object v3, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 752
    iget-object v3, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v4, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    .line 754
    iget v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 755
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->escape()C

    .line 756
    iget v4, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v4, v7, :cond_1

    .line 758
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 760
    :cond_1
    iput v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    :cond_2
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    .line 781
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_6

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 830
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/regexp/RECompiler;->emit(C)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :pswitch_0
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 811
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->escape()C

    move-result v3

    const v4, 0xfff0

    and-int v5, v3, v4

    if-ne v5, v4, :cond_5

    .line 817
    iput v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    goto :goto_3

    .line 822
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/regexp/RECompiler;->emit(C)V

    goto :goto_2

    :cond_6
    :pswitch_1
    if-nez v1, :cond_7

    .line 802
    const-string v2, "Missing operand to closure"

    invoke-virtual {p0, v2}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_7
    :goto_3
    :pswitch_2
    if-nez v1, :cond_8

    .line 839
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->internalError()V

    .line 843
    :cond_8
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    add-int/lit8 v3, v0, 0x1

    int-to-char v1, v1

    aput-char v1, v2, v3

    return v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method bracket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 285
    const-string v0, "Expected valid number"

    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->internalError()V

    .line 291
    :cond_1
    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    const-string v3, "Expected digit"

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 297
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    :goto_0
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v4, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 300
    :cond_4
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v4, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 304
    :cond_5
    :goto_1
    :try_start_0
    sget-object v2, Lorg/apache/regexp/RECompiler;->bracketMin:[I

    sget v4, Lorg/apache/regexp/RECompiler;->brackets:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 308
    :catch_0
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 312
    :goto_2
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v4, p0, Lorg/apache/regexp/RECompiler;->len:I

    const-string v5, "Expected comma or right bracket"

    if-lt v2, v4, :cond_6

    .line 314
    invoke-virtual {p0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 318
    :cond_6
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v4, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    const/16 v6, 0x7d

    if-ne v2, v6, :cond_7

    .line 320
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 321
    sget-object v0, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    sget v1, Lorg/apache/regexp/RECompiler;->brackets:I

    aput v4, v0, v1

    return-void

    .line 326
    :cond_7
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v2, v7, :cond_8

    iget-object v7, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_9

    .line 328
    :cond_8
    const-string v2, "Expected comma"

    invoke-virtual {p0, v2}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 332
    :cond_9
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-lt v2, v7, :cond_a

    .line 334
    invoke-virtual {p0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 338
    :cond_a
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v5, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_b

    .line 340
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 341
    sget-object v0, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    sget v1, Lorg/apache/regexp/RECompiler;->brackets:I

    const/4 v2, -0x1

    aput v2, v0, v1

    return-void

    .line 346
    :cond_b
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v5, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v2, v5, :cond_c

    iget-object v5, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_d

    .line 348
    :cond_c
    invoke-virtual {p0, v3}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 352
    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 353
    :goto_3
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v3, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v2, v3, :cond_f

    iget-object v3, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    .line 355
    :cond_e
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 359
    :cond_f
    :goto_4
    :try_start_1
    sget-object v2, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    sget v3, Lorg/apache/regexp/RECompiler;->brackets:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Lorg/apache/regexp/RECompiler;->bracketMin:[I

    sget v5, Lorg/apache/regexp/RECompiler;->brackets:I

    aget v4, v4, v5

    sub-int/2addr v1, v4

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 363
    :catch_1
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 367
    :goto_5
    sget-object v0, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    sget v1, Lorg/apache/regexp/RECompiler;->brackets:I

    aget v0, v0, v1

    if-gtz v0, :cond_10

    .line 369
    const-string v0, "Bad range"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 373
    :cond_10
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v1, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_12

    .line 375
    :cond_11
    const-string v0, "Missing close brace"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method branch([I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    const/16 v0, 0x7c

    const/4 v1, 0x0

    .line 1143
    invoke-virtual {p0, v0, v1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    .line 1147
    :goto_0
    iget v7, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v8, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v0, :cond_3

    iget-object v7, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v8, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 1150
    :cond_0
    filled-new-array {v1}, [I

    move-result-object v7

    .line 1151
    invoke-virtual {p0, v7}, Lorg/apache/regexp/RECompiler;->closure([I)I

    move-result v8

    .line 1152
    aget v7, v7, v1

    if-nez v7, :cond_1

    move v6, v1

    :cond_1
    if-eq v5, v3, :cond_2

    .line 1160
    invoke-virtual {p0, v5, v8}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    :cond_2
    move v5, v8

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v5, v3, :cond_4

    const/16 v0, 0x4e

    .line 1170
    invoke-virtual {p0, v0, v1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    :cond_4
    if-eqz v6, :cond_5

    .line 1176
    aget v0, p1, v1

    or-int/2addr v0, v4

    aput v0, p1, v1

    :cond_5
    return v2
.end method

.method characterClass()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 515
    iget-object v1, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v2, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    .line 517
    invoke-virtual/range {p0 .. p0}, Lorg/apache/regexp/RECompiler;->internalError()V

    .line 521
    :cond_0
    iget v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v3, v1, 0x1

    iget v4, v0, Lorg/apache/regexp/RECompiler;->len:I

    const/16 v5, 0x5d

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    iget-object v3, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/2addr v1, v6

    iput v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 523
    :cond_1
    const-string v1, "Empty or unterminated class"

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 527
    :cond_2
    iget v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v3, v0, Lorg/apache/regexp/RECompiler;->len:I

    const/16 v4, 0x7a

    const/16 v7, 0x61

    if-ge v1, v3, :cond_7

    iget-object v3, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_7

    .line 530
    iget v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 534
    :goto_0
    iget v8, v0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v9, v0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_4

    iget-object v8, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v9, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v8, v4, :cond_3

    goto :goto_1

    .line 536
    :cond_3
    iget v8, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v8, v6

    iput v8, v0, Lorg/apache/regexp/RECompiler;->idx:I

    goto :goto_0

    .line 540
    :cond_4
    :goto_1
    iget v8, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v9, v8, 0x1

    iget v10, v0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v9, v10, :cond_6

    iget-object v9, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_6

    iget-object v3, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v8, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v8, v6

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    .line 543
    iget-object v3, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v8, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 546
    sget-object v3, Lorg/apache/regexp/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_5

    .line 550
    iget v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    const/16 v1, 0x50

    .line 553
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v1

    return v1

    .line 555
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v8, "Invalid POSIX character class \'"

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 557
    :cond_6
    const-string v1, "Invalid POSIX character class syntax"

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x0

    .line 561
    invoke-virtual {v0, v2, v1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v2

    .line 569
    iget v3, v0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 572
    new-instance v8, Lorg/apache/regexp/RECompiler$RERange;

    invoke-direct {v8, v0}, Lorg/apache/regexp/RECompiler$RERange;-><init>(Lorg/apache/regexp/RECompiler;)V

    const v9, 0xffff

    move v10, v1

    move v13, v10

    move v11, v6

    move v12, v9

    .line 573
    :goto_2
    iget v14, v0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v15, v0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v14, v15, :cond_1a

    iget-object v15, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v5, :cond_8

    goto/16 :goto_9

    .line 579
    :cond_8
    iget-object v14, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v15, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2d

    const-string v5, "Bad character class"

    if-eq v14, v15, :cond_11

    const/16 v15, 0x5c

    if-eq v14, v15, :cond_b

    const/16 v15, 0x5e

    if-eq v14, v15, :cond_9

    .line 673
    iget-object v12, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v14, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_3
    const/16 v14, 0x5d

    goto/16 :goto_7

    :cond_9
    xor-int/lit8 v11, v11, 0x1

    .line 583
    iget v5, v0, Lorg/apache/regexp/RECompiler;->idx:I

    if-ne v5, v3, :cond_a

    .line 585
    invoke-virtual {v8, v1, v9, v6}, Lorg/apache/regexp/RECompiler$RERange;->include(IIZ)V

    .line 587
    :cond_a
    iget v5, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v5, v6

    iput v5, v0, Lorg/apache/regexp/RECompiler;->idx:I

    :goto_4
    const/16 v5, 0x5d

    goto :goto_2

    .line 594
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/regexp/RECompiler;->escape()C

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_3

    .line 600
    :pswitch_0
    invoke-virtual {v0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    :pswitch_1
    if-eqz v10, :cond_c

    .line 607
    invoke-virtual {v0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 611
    :cond_c
    iget-object v12, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v14, v0, Lorg/apache/regexp/RECompiler;->idx:I

    sub-int/2addr v14, v6

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x44

    if-eq v12, v14, :cond_f

    const/16 v14, 0x53

    if-eq v12, v14, :cond_f

    const/16 v14, 0x57

    if-eq v12, v14, :cond_f

    const/16 v5, 0x64

    if-eq v12, v5, :cond_e

    const/16 v5, 0x73

    if-eq v12, v5, :cond_10

    const/16 v5, 0x77

    if-eq v12, v5, :cond_d

    goto :goto_5

    .line 628
    :cond_d
    invoke-virtual {v8, v7, v4, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(IIZ)V

    const/16 v5, 0x41

    const/16 v12, 0x5a

    .line 629
    invoke-virtual {v8, v5, v12, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(IIZ)V

    const/16 v5, 0x5f

    .line 630
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    :cond_e
    const/16 v5, 0x30

    const/16 v12, 0x39

    .line 635
    invoke-virtual {v8, v5, v12, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(IIZ)V

    goto :goto_5

    .line 616
    :cond_f
    invoke-virtual {v0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_10
    const/16 v5, 0x9

    .line 619
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0xd

    .line 620
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0xc

    .line 621
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0xa

    .line 622
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0x8

    .line 623
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0x20

    .line 624
    invoke-virtual {v8, v5, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    :goto_5
    move v12, v9

    goto :goto_4

    :cond_11
    if-eqz v10, :cond_12

    .line 657
    const-string v10, "Bad class range"

    invoke-virtual {v0, v10}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_12
    if-ne v12, v9, :cond_13

    move v13, v1

    goto :goto_6

    :cond_13
    move v13, v12

    .line 665
    :goto_6
    iget v10, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v14, v10, 0x1

    iget v15, v0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v14, v15, :cond_17

    iget-object v14, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x5d

    if-ne v10, v14, :cond_18

    move v10, v6

    move v12, v9

    :goto_7
    if-eqz v10, :cond_15

    if-lt v13, v12, :cond_14

    .line 686
    invoke-virtual {v0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 688
    :cond_14
    invoke-virtual {v8, v13, v12, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(IIZ)V

    move v10, v1

    move v12, v9

    move v5, v14

    goto/16 :goto_2

    .line 697
    :cond_15
    iget v5, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v15, v5, 0x1

    iget v1, v0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v15, v1, :cond_16

    iget-object v1, v0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_19

    .line 699
    :cond_16
    invoke-virtual {v8, v12, v11}, Lorg/apache/regexp/RECompiler$RERange;->include(CZ)V

    goto :goto_8

    :cond_17
    const/16 v14, 0x5d

    :cond_18
    move v10, v6

    :cond_19
    :goto_8
    move v5, v14

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 706
    :cond_1a
    :goto_9
    iget v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v3, v0, Lorg/apache/regexp/RECompiler;->len:I

    if-ne v1, v3, :cond_1b

    .line 708
    const-string v1, "Unterminated character class"

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 712
    :cond_1b
    iget v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v1, v6

    iput v1, v0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 715
    iget-object v1, v0, Lorg/apache/regexp/RECompiler;->instruction:[C

    add-int/lit8 v3, v2, 0x1

    iget v4, v8, Lorg/apache/regexp/RECompiler$RERange;->num:I

    int-to-char v4, v4

    aput-char v4, v1, v3

    const/4 v1, 0x0

    .line 716
    :goto_a
    iget v3, v8, Lorg/apache/regexp/RECompiler$RERange;->num:I

    if-lt v1, v3, :cond_1c

    return v2

    .line 718
    :cond_1c
    iget-object v3, v8, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    aget v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lorg/apache/regexp/RECompiler;->emit(C)V

    .line 719
    iget-object v3, v8, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lorg/apache/regexp/RECompiler;->emit(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method closure([I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 936
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    const/4 v1, 0x1

    .line 939
    new-array v2, v1, [I

    .line 942
    invoke-virtual {p0, v2}, Lorg/apache/regexp/RECompiler;->terminal([I)I

    move-result v3

    const/4 v4, 0x0

    .line 945
    aget v5, p1, v4

    aget v6, v2, v4

    or-int/2addr v5, v6

    aput v5, p1, v4

    .line 948
    iget v5, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v6, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-lt v5, v6, :cond_0

    return v3

    .line 953
    :cond_0
    iget-object v6, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7b

    const/16 v7, 0x2b

    const/16 v8, 0x2a

    const/16 v9, 0x3f

    if-eq v5, v8, :cond_1

    if-eq v5, v7, :cond_2

    if-eq v5, v9, :cond_1

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 960
    :cond_1
    aget v10, p1, v4

    or-int/2addr v10, v1

    aput v10, p1, v4

    .line 965
    :cond_2
    iget p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 970
    :cond_3
    iget-object p1, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    aget-char p1, p1, v3

    const/16 v10, 0x5e

    if-eq p1, v10, :cond_4

    const/16 v10, 0x24

    if-ne p1, v10, :cond_5

    .line 973
    :cond_4
    const-string p1, "Bad closure operand"

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 975
    :cond_5
    aget p1, v2, v4

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    .line 977
    const-string p1, "Closure operand can\'t be nullable"

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 983
    :cond_6
    :goto_0
    iget p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge p1, v2, :cond_7

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v9, :cond_7

    .line 985
    iget p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    move p1, v4

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_1
    if-eqz p1, :cond_13

    const/16 v2, 0x47

    const/16 v10, 0x4e

    const/16 v11, 0x7c

    if-eq v5, v8, :cond_11

    if-eq v5, v7, :cond_10

    if-eq v5, v9, :cond_11

    if-eq v5, v6, :cond_8

    goto/16 :goto_6

    .line 999
    :cond_8
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->allocBrackets()V

    move v5, v4

    .line 1000
    :goto_2
    sget v6, Lorg/apache/regexp/RECompiler;->brackets:I

    if-lt v5, v6, :cond_a

    const/16 v5, 0xa

    if-lt v6, v5, :cond_9

    .line 1014
    const-string v5, "Too many bracketed closures (limit is 10)"

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 1016
    :cond_9
    sget-object v5, Lorg/apache/regexp/RECompiler;->bracketStart:[I

    sget v6, Lorg/apache/regexp/RECompiler;->brackets:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->idx:I

    aput v7, v5, v6

    .line 1017
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->bracket()V

    .line 1018
    sget-object v5, Lorg/apache/regexp/RECompiler;->bracketEnd:[I

    sget v6, Lorg/apache/regexp/RECompiler;->brackets:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->idx:I

    aput v7, v5, v6

    add-int/lit8 v5, v6, 0x1

    .line 1019
    sput v5, Lorg/apache/regexp/RECompiler;->brackets:I

    move v5, v6

    goto :goto_3

    .line 1002
    :cond_a
    sget-object v6, Lorg/apache/regexp/RECompiler;->bracketStart:[I

    aget v6, v6, v5

    iget v7, p0, Lorg/apache/regexp/RECompiler;->idx:I

    if-ne v6, v7, :cond_f

    .line 1023
    :goto_3
    sget-object v6, Lorg/apache/regexp/RECompiler;->bracketMin:[I

    aget v7, v6, v5

    sub-int/2addr v7, v1

    aput v7, v6, v5

    if-lez v7, :cond_b

    .line 1026
    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    goto/16 :goto_6

    .line 1031
    :cond_b
    sget-object v1, Lorg/apache/regexp/RECompiler;->bracketOpt:[I

    aget v6, v1, v5

    const/4 v7, -0x2

    if-ne v6, v7, :cond_c

    .line 1036
    aput v4, v1, v5

    .line 1037
    sget-object v0, Lorg/apache/regexp/RECompiler;->bracketEnd:[I

    aget v0, v0, v5

    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    move v5, v8

    goto :goto_4

    :cond_c
    const/4 v12, -0x1

    if-ne v6, v12, :cond_d

    .line 1042
    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 1043
    aput v7, v1, v5

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v7, v6, -0x1

    .line 1047
    aput v7, v1, v5

    if-lez v6, :cond_e

    .line 1050
    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    move v5, v9

    goto :goto_4

    .line 1056
    :cond_e
    sget-object p1, Lorg/apache/regexp/RECompiler;->bracketEnd:[I

    aget p1, p1, v5

    iput p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1097
    :cond_10
    invoke-virtual {p0, v11, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    .line 1098
    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1099
    invoke-virtual {p0, v2, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1100
    invoke-virtual {p0, v11, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1101
    invoke-virtual {p0, v10, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    goto :goto_6

    :cond_11
    :goto_4
    if-eqz p1, :cond_17

    if-ne v5, v9, :cond_12

    .line 1074
    invoke-virtual {p0, v11, v4, v3}, Lorg/apache/regexp/RECompiler;->nodeInsert(CII)V

    .line 1075
    invoke-virtual {p0, v11, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1076
    invoke-virtual {p0, v10, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    .line 1077
    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    add-int/lit8 v0, v3, 0x3

    .line 1078
    invoke-virtual {p0, v0, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    :cond_12
    if-ne v5, v8, :cond_17

    .line 1084
    invoke-virtual {p0, v11, v4, v3}, Lorg/apache/regexp/RECompiler;->nodeInsert(CII)V

    add-int/lit8 p1, v3, 0x3

    .line 1085
    invoke-virtual {p0, v11, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1086
    invoke-virtual {p0, v2, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1087
    invoke-virtual {p0, p1, v3}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1088
    invoke-virtual {p0, v11, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1089
    invoke-virtual {p0, v10, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    goto :goto_6

    :cond_13
    const/16 p1, 0x45

    .line 1109
    invoke-virtual {p0, p1, v4}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    if-eq v5, v8, :cond_16

    if-eq v5, v7, :cond_15

    if-eq v5, v9, :cond_14

    goto :goto_5

    :cond_14
    const/16 p1, 0x2f

    .line 1115
    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/regexp/RECompiler;->nodeInsert(CII)V

    goto :goto_5

    :cond_15
    const/16 p1, 0x3d

    .line 1123
    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/regexp/RECompiler;->nodeInsert(CII)V

    goto :goto_5

    :cond_16
    const/16 p1, 0x38

    .line 1119
    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/regexp/RECompiler;->nodeInsert(CII)V

    .line 1128
    :goto_5
    iget p1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    invoke-virtual {p0, v3, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    :cond_17
    :goto_6
    return v3
.end method

.method public compile(Ljava/lang/String;)Lorg/apache/regexp/REProgram;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 1270
    iput-object p1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    .line 1271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/regexp/RECompiler;->len:I

    const/4 v0, 0x0

    .line 1272
    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 1273
    iput v0, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    const/4 v1, 0x1

    .line 1274
    iput v1, p0, Lorg/apache/regexp/RECompiler;->parens:I

    .line 1275
    sput v0, Lorg/apache/regexp/RECompiler;->brackets:I

    const/4 v1, 0x2

    .line 1278
    filled-new-array {v1}, [I

    move-result-object v1

    .line 1281
    invoke-virtual {p0, v1}, Lorg/apache/regexp/RECompiler;->expr([I)I

    .line 1284
    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-eq v1, v2, :cond_1

    .line 1286
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x29

    if-ne p1, v1, :cond_0

    .line 1288
    const-string p1, "Unmatched close paren"

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 1290
    :cond_0
    const-string p1, "Unexpected input remains"

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 1294
    :cond_1
    iget p1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    new-array v1, p1, [C

    .line 1295
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    invoke-static {v2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    new-instance p1, Lorg/apache/regexp/REProgram;

    invoke-direct {p1, v1}, Lorg/apache/regexp/REProgram;-><init>([C)V

    return-object p1
.end method

.method emit(C)V
    .locals 3

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->ensure(I)V

    .line 175
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    iget v1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    aput-char p1, v0, v1

    return-void
.end method

.method ensure(I)V
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    array-length v0, v0

    .line 150
    iget v1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    add-int/2addr v1, p1

    if-lt v1, v0, :cond_1

    .line 153
    :goto_0
    iget v1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    add-int v2, v1, p1

    if-ge v2, v0, :cond_0

    .line 159
    new-array p1, v0, [C

    .line 160
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object p1, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method escape()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->internalError()V

    .line 397
    :cond_0
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ne v0, v1, :cond_1

    .line 399
    const-string v0, "Escape terminates string"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 403
    :cond_1
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 404
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_f

    const/16 v1, 0x44

    if-eq v0, v1, :cond_e

    const/16 v1, 0x53

    if-eq v0, v1, :cond_e

    const/16 v1, 0x57

    if-eq v0, v1, :cond_e

    const/16 v1, 0x62

    if-eq v0, v1, :cond_f

    const/16 v1, 0x64

    if-eq v0, v1, :cond_e

    const/16 v1, 0x66

    if-eq v0, v1, :cond_d

    const/16 v2, 0x6e

    const/16 v3, 0xa

    if-eq v0, v2, :cond_c

    const/16 v2, 0x77

    if-eq v0, v2, :cond_e

    const/16 v2, 0x78

    const/16 v4, 0x30

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return v0

    :pswitch_0
    const/16 v0, 0x9

    return v0

    :pswitch_1
    const/16 v0, 0xd

    return v0

    .line 482
    :pswitch_2
    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-ne v0, v4, :cond_5

    :cond_3
    sub-int/2addr v0, v4

    .line 486
    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    shl-int/lit8 v0, v0, 0x3

    .line 488
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 489
    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v2, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    shl-int/lit8 v0, v0, 0x3

    .line 491
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_4
    int-to-char v0, v0

    return v0

    :cond_5
    const v0, 0xffff

    return v0

    :cond_6
    :pswitch_3
    const/16 v2, 0x75

    if-ne v0, v2, :cond_7

    const/4 v2, 0x4

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    :goto_0
    const/4 v5, 0x0

    .line 427
    :goto_1
    iget v6, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->len:I

    if-ge v6, v7, :cond_b

    add-int/lit8 v7, v2, -0x1

    if-gtz v2, :cond_8

    goto :goto_3

    .line 430
    :cond_8
    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_9

    const/16 v6, 0x39

    if-gt v2, v6, :cond_9

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    goto :goto_2

    .line 441
    :cond_9
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    const/16 v6, 0x61

    if-lt v2, v6, :cond_a

    if-gt v2, v1, :cond_a

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    goto :goto_2

    .line 451
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "Expected "

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " hexadecimal digits after \\"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 427
    :goto_2
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    move v2, v7

    goto :goto_1

    :cond_b
    :goto_3
    int-to-char v0, v5

    return v0

    :cond_c
    return v3

    :cond_d
    const/16 v0, 0xc

    return v0

    :cond_e
    :pswitch_4
    const v0, 0xfffd

    return v0

    :cond_f
    const v0, 0xfffe

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x72
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method expr([I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 1193
    iget v0, p0, Lorg/apache/regexp/RECompiler;->parens:I

    const/4 v1, 0x0

    .line 1194
    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v5, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_0

    .line 1196
    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 1198
    iget v2, p0, Lorg/apache/regexp/RECompiler;->parens:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lorg/apache/regexp/RECompiler;->parens:I

    invoke-virtual {p0, v5, v2}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result v2

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v1

    move v2, v4

    .line 1200
    :goto_0
    aget v6, p1, v1

    and-int/lit8 v6, v6, -0x3

    aput v6, p1, v1

    .line 1203
    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->branch([I)I

    move-result v6

    if-ne v2, v4, :cond_1

    move v2, v6

    goto :goto_1

    .line 1210
    :cond_1
    invoke-virtual {p0, v2, v6}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1214
    :goto_1
    iget v6, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v7, p0, Lorg/apache/regexp/RECompiler;->len:I

    const/16 v8, 0x7c

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_2

    goto :goto_2

    .line 1216
    :cond_2
    iget v6, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 1217
    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->branch([I)I

    move-result v6

    .line 1218
    invoke-virtual {p0, v2, v6}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    .line 1225
    iget p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    iget v1, p0, Lorg/apache/regexp/RECompiler;->len:I

    const/16 v5, 0x29

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_4

    .line 1227
    iget p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    goto :goto_3

    .line 1231
    :cond_4
    const-string p1, "Missing close paren"

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 1233
    :goto_3
    invoke-virtual {p0, v5, v0}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    goto :goto_4

    :cond_5
    const/16 p1, 0x45

    .line 1237
    invoke-virtual {p0, p1, v1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    .line 1241
    :goto_4
    invoke-virtual {p0, v2, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    move v0, v2

    :goto_5
    if-nez v4, :cond_6

    return v2

    .line 1247
    :cond_6
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    aget-char v1, v1, v0

    if-ne v1, v8, :cond_7

    add-int/lit8 v1, v0, 0x3

    .line 1249
    invoke-virtual {p0, v1, p1}, Lorg/apache/regexp/RECompiler;->setNextOfEnd(II)V

    .line 1244
    :cond_7
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    add-int/lit8 v3, v0, 0x2

    aget-char v4, v1, v3

    add-int/2addr v0, v4

    goto :goto_5
.end method

.method internalError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method node(CI)I
    .locals 2

    const/4 v0, 0x3

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->ensure(I)V

    .line 228
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    iget v1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    aput-char p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    int-to-char p2, p2

    .line 229
    aput-char p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    const/4 p2, 0x0

    .line 230
    aput-char p2, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 231
    iput p1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    return v1
.end method

.method nodeInsert(CII)V
    .locals 4

    const/4 v0, 0x3

    .line 188
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->ensure(I)V

    .line 191
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    add-int/lit8 v2, p3, 0x3

    iget v3, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    sub-int/2addr v3, p3

    invoke-static {v1, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v1, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    aput-char p1, v1, p3

    add-int/lit8 p1, p3, 0x1

    int-to-char p2, p2

    .line 193
    aput-char p2, v1, p1

    add-int/lit8 p3, p3, 0x2

    const/4 p1, 0x0

    .line 194
    aput-char p1, v1, p3

    .line 195
    iget p1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/regexp/RECompiler;->lenInstruction:I

    return-void
.end method

.method setNextOfEnd(II)V
    .locals 3

    .line 207
    :goto_0
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->instruction:[C

    add-int/lit8 v1, p1, 0x2

    aget-char v2, v0, v1

    if-nez v2, :cond_0

    sub-int/2addr p2, p1

    int-to-short p1, p2

    int-to-char p1, p1

    .line 213
    aput-char p1, v0, v1

    return-void

    :cond_0
    add-int/2addr p1, v2

    goto :goto_0
.end method

.method syntaxError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 253
    new-instance v0, Lorg/apache/regexp/RESyntaxException;

    invoke-direct {v0, p1}, Lorg/apache/regexp/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method terminal([I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v1, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x24

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 863
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->characterClass()I

    move-result p1

    return p1

    .line 869
    :pswitch_1
    const-string v0, "Unexpected close paren"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/regexp/RECompiler;->expr([I)I

    move-result p1

    return p1

    .line 872
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->internalError()V

    .line 875
    :pswitch_3
    const-string v0, "Mismatched class"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_1
    :pswitch_4
    iget-object p1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    return p1

    .line 878
    :cond_2
    :goto_1
    const-string v0, "Unexpected end of input"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 884
    :cond_3
    :pswitch_5
    const-string v0, "Missing operand to closure"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 889
    :pswitch_6
    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 892
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->escape()C

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 914
    iput v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    .line 915
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    goto :goto_2

    .line 901
    :pswitch_7
    iget-object v0, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v2, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    int-to-char v0, v0

    .line 902
    iget v2, p0, Lorg/apache/regexp/RECompiler;->parens:I

    if-gt v2, v0, :cond_4

    .line 904
    const-string v2, "Bad backreference"

    invoke-virtual {p0, v2}, Lorg/apache/regexp/RECompiler;->syntaxError(Ljava/lang/String;)V

    .line 906
    :cond_4
    aget v2, p1, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    const/16 p1, 0x23

    .line 907
    invoke-virtual {p0, p1, v0}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    return p1

    .line 896
    :pswitch_8
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    .line 897
    iget-object p1, p0, Lorg/apache/regexp/RECompiler;->pattern:Ljava/lang/String;

    iget v0, p0, Lorg/apache/regexp/RECompiler;->idx:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, p1}, Lorg/apache/regexp/RECompiler;->node(CI)I

    move-result p1

    return p1

    .line 923
    :goto_2
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    .line 924
    invoke-virtual {p0}, Lorg/apache/regexp/RECompiler;->atom()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfffd
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
