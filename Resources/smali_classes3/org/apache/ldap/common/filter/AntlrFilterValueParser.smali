.class public Lorg/apache/ldap/common/filter/AntlrFilterValueParser;
.super Lantlr/LLkParser;
.source "AntlrFilterValueParser.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/AntlrFilterValueParserTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;


# instance fields
.field lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

.field monitor:Lorg/apache/ldap/common/filter/FilterParserMonitor;

.field selector:Lantlr/TokenStreamSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1a

    .line 411
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<0>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EOF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<2>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NULL_TREE_LOOKAHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HEXDIG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "VALUEENCODING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NORMAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ESCAPED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UTF1SUBSET"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EXCLAMATION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AMPERSAND"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ASTERISK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "COLON"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "VERTBAR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TILDE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "UTF8"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UTFMB"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UTF0"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "UTF1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "UTF2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UTF3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "UTF4"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenNames:[Ljava/lang/String;

    .line 444
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x3

    .line 125
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 126
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x3

    .line 112
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 108
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x3

    .line 121
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 117
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private matchedProduction(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->monitor:Lorg/apache/ldap/common/filter/FilterParserMonitor;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Lorg/apache/ldap/common/filter/FilterParserMonitor;->matchedProduction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    .line 441
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2
        0x0
    .end array-data
.end method


# virtual methods
.method public final equal()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v0

    const/4 v2, 0x6

    .line 180
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 182
    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v3, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    invoke-virtual {v2, v3}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 183
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe

    .line 185
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->reportError(Lantlr/RecognitionException;)V

    .line 189
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consume()V

    .line 190
    sget-object v0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_0
    return-object v1
.end method

.method public final presence(Ljava/lang/String;)Lorg/apache/ldap/common/filter/PresenceNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 209
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 211
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v2, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    invoke-virtual {v0, v2}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 212
    new-instance v0, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/filter/PresenceNode;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0xe

    .line 214
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 217
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->reportError(Lantlr/RecognitionException;)V

    .line 218
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consume()V

    .line 219
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public setFilterParserMonitor(Lorg/apache/ldap/common/filter/FilterParserMonitor;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->monitor:Lorg/apache/ldap/common/filter/FilterParserMonitor;

    return-void
.end method

.method public setLexer(Lorg/apache/ldap/common/filter/AntlrFilterLexer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    return-void
.end method

.method public setSelector(Lantlr/TokenStreamSelector;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->selector:Lantlr/TokenStreamSelector;

    return-void
.end method

.method public final substring(Ljava/lang/String;)Lorg/apache/ldap/common/filter/LeafNode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0xe

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0xc

    if-ne v3, v7, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 247
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 248
    invoke-virtual {p0, v7}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 250
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v8}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    move-object v3, v2

    goto/16 :goto_2

    .line 254
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    const/4 v9, 0x0

    if-ne v3, v8, :cond_7

    move-object v3, v2

    .line 259
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 260
    invoke-virtual {p0, v8}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 261
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 262
    invoke-virtual {p0, v7}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    if-lt v9, v1, :cond_6

    .line 280
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v4

    if-eq v4, v8, :cond_4

    if-ne v4, v5, :cond_3

    move-object v1, v2

    goto/16 :goto_2

    .line 300
    :cond_3
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_4
    invoke-virtual {p0, v8}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    if-eqz v3, :cond_5

    .line 285
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 287
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v2

    move-object v3, v1

    goto :goto_2

    .line 273
    :cond_6
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    if-ne v3, v7, :cond_10

    invoke-virtual {p0, v6}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    if-ne v3, v8, :cond_10

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v3

    if-ne v3, v7, :cond_10

    .line 306
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v3

    .line 307
    invoke-virtual {p0, v7}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 309
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    .line 315
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v6

    if-ne v6, v8, :cond_9

    .line 316
    invoke-virtual {p0, v8}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 317
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v6

    .line 318
    invoke-virtual {p0, v7}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    if-eqz v4, :cond_8

    .line 320
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 322
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_8
    invoke-virtual {v6}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_9
    if-lt v9, v1, :cond_f

    move-object v1, v3

    move-object v3, v4

    .line 341
    :goto_2
    invoke-virtual {p0, v5}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->match(I)V

    .line 343
    iget-object v4, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->selector:Lantlr/TokenStreamSelector;

    iget-object v5, p0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    invoke-virtual {v4, v5}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 380
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    .line 384
    :cond_b
    new-instance v0, Lorg/apache/ldap/common/filter/PresenceNode;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/filter/PresenceNode;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    move-object v1, v2

    :cond_d
    if-eqz v3, :cond_e

    .line 393
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    move-object v3, v2

    .line 398
    :cond_e
    new-instance v4, Lorg/apache/ldap/common/filter/SubstringNode;

    invoke-direct {v4, v0, p1, v1, v3}, Lorg/apache/ldap/common/filter/SubstringNode;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_3

    .line 329
    :cond_f
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_10
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 403
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->reportError(Lantlr/RecognitionException;)V

    .line 404
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consume()V

    .line 405
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_3
    return-object v2
.end method

.method public final value(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 143
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x6

    const/4 v4, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->equal()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    const/16 v5, 0xc

    if-ne v1, v5, :cond_1

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->presence(Ljava/lang/String;)Lorg/apache/ldap/common/filter/PresenceNode;

    move-result-object p1

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    if-ne v1, v5, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LA(I)I

    move-result v1

    if-ne v1, v5, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->substring(Ljava/lang/String;)Lorg/apache/ldap/common/filter/LeafNode;

    move-result-object p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->reportError(Lantlr/RecognitionException;)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consume()V

    .line 161
    sget-object p1, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
