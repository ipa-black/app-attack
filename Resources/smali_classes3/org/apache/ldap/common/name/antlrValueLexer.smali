.class public Lorg/apache/ldap/common/name/antlrValueLexer;
.super Lantlr/CharScanner;
.source "antlrValueLexer.java"

# interfaces
.implements Lorg/apache/ldap/common/name/antlrValueTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final LEXER_KEY:Ljava/lang/String; = "valueLexer"

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;


# instance fields
.field private m_selector:Lantlr/TokenStreamSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 491
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/name/antlrValueLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 499
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/name/antlrValueLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 507
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/name/antlrValueLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 90
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->m_selector:Lantlr/TokenStreamSelector;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->caseSensitiveLiterals:Z

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->setCaseSensitive(Z)V

    .line 96
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 84
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 87
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x5

    .line 488
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff000000000000L
        0x7e00000000L
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_1()[J
    .locals 4

    const/16 v0, 0x8

    .line 493
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x400000001L

    .line 494
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    .line 495
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 496
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_2()[J
    .locals 4

    const/16 v0, 0x8

    .line 501
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x7800180c00000001L

    .line 502
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    .line 503
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 504
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private pop()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->m_selector:Lantlr/TokenStreamSelector;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lantlr/TokenStreamSelector;->pop()Lantlr/TokenStream;

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The selector has not been set for the value lexer!\nCall lexer.setSelector(TokenStreamSelector a_selector) before using the lexer or its owning parser."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final mALPHA(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 192
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 195
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 197
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCOMMA(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2c

    .line 423
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    .line 425
    invoke-direct {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->pop()V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 428
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 429
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 431
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 179
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 182
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mDN_TERMINATOR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x23

    .line 475
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    .line 477
    invoke-direct {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->pop()V

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 480
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 481
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 483
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mESCAPED_CHAR(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 252
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    const/4 v2, 0x1

    .line 254
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_5

    const/16 v4, 0x2c

    const/16 v5, 0x2b

    const/16 v6, 0x23

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    if-eq v3, v1, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 323
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->mHEXPAIR(Z)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    .line 259
    :cond_1
    :pswitch_1
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v1

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    packed-switch v1, :pswitch_data_3

    .line 297
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_2
    const/16 v1, 0x3e

    .line 282
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3d

    .line 267
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x3c

    .line 277
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x3b

    .line 292
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    .line 287
    :cond_4
    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    goto :goto_0

    .line 310
    :cond_5
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_6

    const/16 p1, 0xd

    .line 328
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 329
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 331
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected final mHEXCHAR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 223
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 217
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->mDIGIT(Z)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 228
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 230
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mHEXPAIR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->mHEXCHAR(Z)V

    .line 239
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->mHEXCHAR(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 242
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 244
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mHEX_STRING(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x23

    .line 339
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    const/4 v1, 0x0

    move v2, v1

    .line 344
    :goto_0
    sget-object v3, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->mHEXPAIR(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v4, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0xe

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 356
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 358
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 348
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mPLUS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2b

    .line 455
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    .line 457
    invoke-direct {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->pop()V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 460
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 461
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 463
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mQUOTED_STRING(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 366
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    .line 370
    :goto_0
    sget-object v2, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->mESCAPED_CHAR(Z)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    if-eqz p1, :cond_2

    const/16 p1, 0xf

    .line 386
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 387
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 389
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSEMI(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 439
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(C)V

    .line 441
    invoke-direct {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->pop()V

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 444
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 445
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 447
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSIMPLE_STRING(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 400
    :goto_0
    sget-object v1, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x10

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 413
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 415
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public nextToken()Lantlr/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 105
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueLexer;->resetText()V

    const/4 v0, 0x1

    .line 108
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_5

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/apache/ldap/common/name/antlrValueLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mHEX_STRING(Z)V

    .line 142
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->LA(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mDN_TERMINATOR(Z)V

    .line 146
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mSIMPLE_STRING(Z)V

    .line 150
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mCOMMA(Z)V

    .line 124
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mPLUS(Z)V

    .line 136
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mESCAPED_CHAR(Z)V

    .line 112
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mSEMI(Z)V

    .line 130
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->mQUOTED_STRING(Z)V

    .line 118
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    .line 153
    :goto_1
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_7

    goto :goto_0

    .line 154
    :cond_7
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrValueLexer;->testLiteralsTable(I)I

    move-result v0

    .line 156
    iget-object v1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 160
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_8

    .line 165
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 168
    :cond_8
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSelector(Lantlr/TokenStreamSelector;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueLexer;->m_selector:Lantlr/TokenStreamSelector;

    return-void
.end method
