.class public Lorg/apache/ldap/common/filter/AntlrFilterLexer;
.super Lantlr/CharScanner;
.source "AntlrFilterLexer.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/FilterLexerTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final SELECTOR_KEY:Ljava/lang/String; = "filterLexer"


# direct methods
.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 64
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->caseSensitiveLiterals:Z

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->setCaseSensitive(Z)V

    .line 70
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 58
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 61
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
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

    .line 510
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 514
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 539
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 534
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x41

    const/16 v2, 0x5a

    .line 523
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->matchRange(CC)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x25

    .line 543
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 544
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 546
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x41
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
.end method

.method public final mAMPERSTAND(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x26

    .line 390
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    .line 392
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 393
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 395
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mAPPROX(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 429
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mTILDE(Z)V

    .line 430
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mEQUALS(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 433
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 435
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mASTERISK(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2a

    .line 312
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 314
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 315
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 317
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mATTRIBUTEDESCRIPTION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mOID(Z)V

    .line 795
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mOPTIONS(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2c

    .line 797
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 798
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 800
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCOLON(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3a

    .line 299
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 302
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 304
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCOLONEQUALS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 416
    const-string v1, ":="

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    .line 418
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 419
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 421
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mDESCR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mALPHA(Z)V

    :goto_0
    const/4 v2, 0x1

    .line 624
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    .line 662
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 663
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 665
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 639
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mALPHA(Z)V

    goto :goto_0

    .line 646
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mDIGIT(Z)V

    goto :goto_0

    .line 651
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    goto :goto_0

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
    .packed-switch 0x41
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    .line 467
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 471
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 486
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mLDIGIT(Z)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x30

    .line 474
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 490
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 491
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 493
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
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
.end method

.method public final mDN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 403
    const-string v1, ":dn"

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 406
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 408
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mEQUALS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3d

    .line 338
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    .line 340
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 341
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 343
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mEXCLAMATION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x21

    .line 325
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 328
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 330
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mGREATEROREQUAL(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mRANGLE(Z)V

    .line 444
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mEQUALS(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    .line 446
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 447
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 449
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mLANGLE(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3c

    .line 273
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    .line 275
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 276
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 278
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mLDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x31

    const/16 v2, 0x39

    .line 501
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    .line 503
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 504
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 506
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mLESSOREQUAL(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mLANGLE(Z)V

    .line 458
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mEQUALS(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    .line 460
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 461
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

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
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mLPAREN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 351
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    .line 353
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 354
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 356
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mNUMBER(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 554
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x31

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/16 v6, 0x39

    if-lt v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v3

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    .line 556
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mLDIGIT(Z)V

    move v2, v5

    .line 561
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_0

    .line 562
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 565
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 573
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    if-lt v2, v4, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_4

    .line 574
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mDIGIT(Z)V

    :goto_1
    if-eqz p1, :cond_3

    const/16 p1, 0x26

    .line 581
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 582
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 584
    :goto_2
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 577
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mNUMERICOID(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 592
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mNUMBER(Z)V

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    .line 597
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    .line 598
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    .line 599
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mNUMBER(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x27

    .line 609
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 610
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 612
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 602
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mOID(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 673
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 700
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 688
    :pswitch_0
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mDESCR(Z)V

    goto :goto_0

    .line 695
    :pswitch_1
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mNUMERICOID(Z)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x29

    .line 704
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 705
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 707
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

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
    .packed-switch 0x41
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mOPTION(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    .line 719
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x2a

    .line 758
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 759
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 761
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 751
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 734
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mALPHA(Z)V

    goto :goto_2

    .line 741
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mDIGIT(Z)V

    goto :goto_2

    .line 746
    :cond_2
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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
    .packed-switch 0x41
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mOPTIONS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 772
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 773
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    const/4 v1, 0x0

    .line 774
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mOPTION(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x2b

    .line 783
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 784
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 786
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mRANGLE(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3e

    .line 260
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    .line 262
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 263
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 265
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mRPAREN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x29

    .line 364
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 366
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 367
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 369
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mTILDE(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7e

    .line 286
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 288
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 289
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 291
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mVERTBAR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7c

    .line 377
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 379
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 380
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 382
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mWS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 210
    iget-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 p1, 0x1

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    .line 235
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    .line 236
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->newline()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 239
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    .line 240
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->newline()V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v0, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    .line 218
    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    .line 229
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->newline()V

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->match(C)V

    :goto_0
    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 79
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->resetText()V

    const/4 v0, 0x1

    .line 82
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    const/16 v2, 0x26

    if-eq v1, v2, :cond_7

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_6

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x20

    if-eq v1, v2, :cond_8

    const/16 v2, 0x21

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 171
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mDN(Z)V

    .line 173
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 175
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    .line 176
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mCOLONEQUALS(Z)V

    .line 177
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 179
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 180
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mCOLON(Z)V

    .line 181
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 184
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 185
    :cond_3
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 139
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mGREATEROREQUAL(Z)V

    .line 140
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 103
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mEQUALS(Z)V

    .line 104
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 145
    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mLESSOREQUAL(Z)V

    .line 146
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 166
    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mATTRIBUTEDESCRIPTION(Z)V

    .line 167
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 91
    :pswitch_4
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mASTERISK(Z)V

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 115
    :pswitch_5
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mRPAREN(Z)V

    .line 116
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 109
    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mLPAREN(Z)V

    .line 110
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mEXCLAMATION(Z)V

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mAPPROX(Z)V

    .line 134
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mVERTBAR(Z)V

    .line 122
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 127
    :cond_7
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mAMPERSTAND(Z)V

    .line 128
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 85
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->mWS(Z)V

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    .line 188
    :goto_1
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 189
    :cond_9
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 190
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->testLiteralsTable(I)I

    move-result v0

    .line 191
    iget-object v1, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 192
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 195
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_a

    .line 200
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 203
    :cond_a
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
