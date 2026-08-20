.class public Lorg/apache/ldap/common/name/antlrTypeLexer;
.super Lantlr/CharScanner;
.source "antlrTypeLexer.java"

# interfaces
.implements Lorg/apache/ldap/common/name/antlrTypeTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final LEXER_KEY:Ljava/lang/String; = "typeLexer"


# instance fields
.field private m_selector:Lantlr/TokenStreamSelector;


# direct methods
.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 89
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->m_selector:Lantlr/TokenStreamSelector;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->caseSensitiveLiterals:Z

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->setCaseSensitive(Z)V

    .line 95
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 83
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 86
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method private push()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->m_selector:Lantlr/TokenStreamSelector;

    if-eqz v0, :cond_0

    .line 80
    const-string v1, "valueLexer"

    invoke-virtual {v0, v1}, Lantlr/TokenStreamSelector;->push(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The selector has not been set for the type lexer!\nCall lexer.setSelector(TokenStreamSelector a_selector) before using the lexer or its owning parser."

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

    .line 182
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 186
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/name/antlrTypeLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 189
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mATTRIBUTE(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mALPHA(Z)V

    :goto_0
    const/4 v2, 0x1

    .line 304
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 337
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 339
    :goto_1
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 313
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mALPHA(Z)V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mDIGIT(Z)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    goto :goto_0

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

.method protected final mCLOSE_BRACKET(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7d

    .line 212
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 214
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 215
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 217
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

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

    .line 169
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 173
    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/name/antlrTypeLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    .line 175
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 176
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mEQUAL(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 403
    const-string v1, "="

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->push()V

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 408
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 409
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 411
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mOID(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    .line 229
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt v4, v6, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v4

    if-gt v4, v5, :cond_0

    .line 230
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_8

    .line 242
    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_3

    .line 243
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    move v2, v1

    .line 248
    :goto_2
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v4

    if-gt v4, v5, :cond_1

    .line 249
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 252
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 266
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x7b

    if-ne v2, v4, :cond_6

    .line 267
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mOPEN_BRACKET(Z)V

    move v2, v1

    .line 272
    :goto_3
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v4

    if-lt v4, v6, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v4

    if-gt v4, v5, :cond_4

    .line 273
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    if-lt v2, v3, :cond_5

    .line 282
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mCLOSE_BRACKET(Z)V

    goto :goto_4

    .line 276
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    const/16 p1, 0xd

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 290
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    .line 292
    :goto_5
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 233
    :cond_8
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mOPEN_BRACKET(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7b

    .line 199
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 202
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 204
    :goto_0
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

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

    .line 343
    iget-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 p1, 0x1

    .line 348
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    goto :goto_1

    .line 386
    :cond_0
    new-instance v0, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getColumn()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    .line 361
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    goto :goto_1

    .line 367
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 368
    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    .line 371
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    goto :goto_0

    .line 373
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    .line 374
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->newline()V

    goto :goto_1

    .line 377
    :cond_5
    new-instance v0, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getColumn()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0

    .line 356
    :cond_6
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->match(C)V

    :goto_1
    const/4 p1, 0x0

    .line 395
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 104
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->resetText()V

    const/4 v0, 0x1

    .line 107
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 143
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 144
    :cond_0
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 124
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mATTRIBUTE(Z)V

    .line 125
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 112
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mOID(Z)V

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mEQUAL(Z)V

    .line 138
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->mWS(Z)V

    .line 132
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    .line 147
    :goto_1
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_3

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 149
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;->testLiteralsTable(I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 151
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 154
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_4

    .line 159
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 162
    :cond_4
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1

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

.method public setSelector(Lantlr/TokenStreamSelector;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrTypeLexer;->m_selector:Lantlr/TokenStreamSelector;

    return-void
.end method
