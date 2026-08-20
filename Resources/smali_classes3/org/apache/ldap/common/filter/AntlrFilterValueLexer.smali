.class public Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;
.super Lantlr/CharScanner;
.source "AntlrFilterValueLexer.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/FilterValueLexerTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final SELECTOR_KEY:Ljava/lang/String; = "filterValueLexer"

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 600
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 613
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 622
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 631
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 67
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->caseSensitiveLiterals:Z

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->setCaseSensitive(Z)V

    .line 73
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 61
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 64
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 7

    const/16 v0, 0x800

    .line 590
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x70000000002L

    .line 591
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    if-gt v1, v2, :cond_0

    .line 592
    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const-wide v5, 0xffffffffffL

    .line 593
    aput-wide v5, v0, v1

    const/4 v1, 0x6

    const-wide/32 v5, -0x100000

    .line 594
    aput-wide v5, v0, v1

    const/4 v1, 0x7

    .line 595
    aput-wide v3, v0, v1

    const/16 v1, 0x8

    const-wide v2, 0x3ffffffffffffffL

    .line 596
    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f

    .line 597
    aput-wide v2, v0, v1

    return-object v0
.end method

.method private static final mk_tokenSet_1()[J
    .locals 7

    const/16 v0, 0x800

    .line 602
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x70000000002L

    .line 603
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    .line 604
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    if-gt v1, v2, :cond_0

    .line 605
    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const-wide v5, 0xffffffffffL

    .line 606
    aput-wide v5, v0, v1

    const/4 v1, 0x6

    const-wide/32 v5, -0x100000

    .line 607
    aput-wide v5, v0, v1

    const/4 v1, 0x7

    .line 608
    aput-wide v3, v0, v1

    const/16 v1, 0x8

    const-wide v2, 0x3ffffffffffffffL

    .line 609
    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f

    .line 610
    aput-wide v2, v0, v1

    return-object v0
.end method

.method private static final mk_tokenSet_2()[J
    .locals 4

    const/16 v0, 0x800

    .line 615
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x70000000002L

    .line 616
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    .line 617
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 618
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const-wide v2, 0xffffffffffL

    .line 619
    aput-wide v2, v0, v1

    return-object v0
.end method

.method private static final mk_tokenSet_3()[J
    .locals 4

    const/16 v0, 0x401

    .line 624
    new-array v0, v0, [J

    const/4 v1, 0x6

    const-wide/32 v2, -0x100000

    .line 625
    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide/16 v2, -0x1

    .line 626
    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, 0x3ffffffffffffffL

    .line 627
    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f

    .line 628
    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method protected final mAMPERSAND(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 334
    const-string v1, "&"

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 337
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 339
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

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

    .line 343
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2a

    .line 347
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 349
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 350
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 352
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mCOLON(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3a

    .line 386
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 388
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 389
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 391
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

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

    .line 136
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 140
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 143
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 145
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mESC(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 308
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 311
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 313
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mESCAPED(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mESC(Z)V

    .line 242
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mHEXDIG(Z)V

    .line 243
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mHEXDIG(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 246
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 248
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mEXCLAMATION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x21

    .line 321
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 324
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 326
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mHEXDIG(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 175
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 170
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x41

    const/16 v2, 0x46

    .line 164
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mDIGIT(Z)V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 179
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 180
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 182
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

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
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
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

    .line 356
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 360
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    .line 362
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 363
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 365
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mNORMAL(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 219
    sget-object v1, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF1SUBSET(Z)V

    goto :goto_0

    .line 222
    :cond_0
    sget-object v1, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTFMB(Z)V

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x7

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 231
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 233
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 226
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
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

    .line 369
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x29

    .line 373
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 376
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 378
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

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

    .line 408
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7e

    .line 412
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 414
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 415
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 417
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mUTF0(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x128

    const/16 v2, 0x191

    .line 580
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    .line 582
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 583
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 585
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mUTF1(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x127

    .line 447
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    .line 449
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 450
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 452
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mUTF1SUBSET(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 257
    sget-object v1, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(Lantlr/collections/impl/BitSet;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    .line 260
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 261
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 263
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mUTF2(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x194

    const/16 v2, 0x223

    .line 460
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    .line 463
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 464
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 466
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mUTF3(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 474
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 517
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x238

    const/16 v2, 0x239

    .line 509
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 510
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    .line 511
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x237

    .line 500
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    const/16 v1, 0x128

    const/16 v2, 0x159

    .line 501
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 502
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x225

    const/16 v2, 0x236

    .line 491
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 492
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    .line 493
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x224

    .line 478
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    const/16 v1, 0x160

    const/16 v2, 0x191

    .line 479
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 480
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x18

    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 522
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 524
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x224
        :pswitch_3
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mUTF4(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 532
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 565
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x244

    .line 556
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    const/16 v1, 0x128

    const/16 v2, 0x143

    .line 557
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 558
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    .line 559
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x241

    const/16 v2, 0x243

    .line 546
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 547
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    .line 548
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    .line 549
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x240

    .line 536
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    const/16 v1, 0x144

    const/16 v2, 0x191

    .line 537
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->matchRange(CC)V

    .line 538
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    .line 539
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF0(Z)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x19

    .line 569
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 570
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 572
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x240
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final mUTF8(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x127

    if-gt v2, v4, :cond_0

    .line 426
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF1(Z)V

    goto :goto_0

    .line 428
    :cond_0
    sget-object v2, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTFMB(Z)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x13

    .line 436
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 437
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 439
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 432
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mUTFMB(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 289
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x194

    if-lt v2, v4, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x223

    if-gt v2, v4, :cond_0

    .line 290
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF2(Z)V

    goto :goto_0

    .line 293
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 285
    :pswitch_0
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF4(Z)V

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mUTF3(Z)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x14

    .line 297
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 298
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 300
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x224
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
    .packed-switch 0x240
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final mVALUEENCODING(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 194
    :goto_0
    sget-object v3, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mNORMAL(Z)V

    goto :goto_1

    .line 197
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    .line 198
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mESCAPED(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lt v2, v4, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 209
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 211
    :goto_2
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 201
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mVERTBAR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7c

    .line 399
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 401
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 402
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 404
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 82
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->resetText()V

    const/4 v0, 0x1

    .line 85
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    sget-object v1, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    goto :goto_1

    .line 88
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mASTERISK(Z)V

    .line 89
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_2

    .line 100
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mRPAREN(Z)V

    .line 101
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_2

    .line 94
    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mLPAREN(Z)V

    .line 95
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_2

    .line 105
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->mVALUEENCODING(Z)V

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    goto :goto_2

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    .line 114
    :goto_2
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->testLiteralsTable(I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 118
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->_returnToken:Lantlr/Token;

    return-object v0

    .line 111
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 121
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_3
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_3

    .line 126
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 129
    :cond_3
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
