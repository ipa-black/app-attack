.class public Lorg/apache/ldap/common/name/antlrValueParser;
.super Lantlr/LLkParser;
.source "antlrValueParser.java"

# interfaces
.implements Lorg/apache/ldap/common/name/antlrValueParserTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;


# instance fields
.field m_isOid:Z

.field m_lhs:Ljava/lang/String;

.field private m_normalizer:Lorg/apache/ldap/common/name/NameComponentNormalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    .line 206
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

    const-string v2, "EQUAL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "COMMA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SEMI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DN_TERMINATOR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ALPHA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HEXCHAR"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HEXPAIR"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ESCAPED_CHAR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "HEX_STRING"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "QUOTED_STRING"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SIMPLE_STRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ldap/common/name/antlrValueParser;->_tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_isOid:Z

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_lhs:Ljava/lang/String;

    .line 87
    sget-object p1, Lorg/apache/ldap/common/name/antlrValueParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/name/antlrValueParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_isOid:Z

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_lhs:Ljava/lang/String;

    .line 69
    sget-object p1, Lorg/apache/ldap/common/name/antlrValueParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/name/antlrValueParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_isOid:Z

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_lhs:Ljava/lang/String;

    .line 78
    sget-object p1, Lorg/apache/ldap/common/name/antlrValueParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setLhs(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_lhs:Ljava/lang/String;

    return-void
.end method

.method setNormalizer(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_normalizer:Lorg/apache/ldap/common/name/NameComponentNormalizer;

    return-void
.end method

.method setOid(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_isOid:Z

    return-void
.end method

.method public final value()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 107
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueParser;->LA(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    if-lt v1, v2, :cond_4

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 110
    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v3, 0x10

    .line 111
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueParser;->match(I)V

    .line 118
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_normalizer:Lorg/apache/ldap/common/name/NameComponentNormalizer;

    if-eqz v3, :cond_1

    .line 122
    iget-boolean v4, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_isOid:Z

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_lhs:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lorg/apache/ldap/common/name/NameComponentNormalizer;->normalizeByOid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 128
    :cond_0
    iget-object v4, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_lhs:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lorg/apache/ldap/common/name/NameComponentNormalizer;->normalizeByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 157
    :pswitch_1
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v3, 0xf

    .line 158
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueParser;->match(I)V

    .line 162
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 140
    :pswitch_2
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v3, 0xe

    .line 141
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueParser;->match(I)V

    .line 144
    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_normalizer:Lorg/apache/ldap/common/name/NameComponentNormalizer;

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 168
    :pswitch_3
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueParser;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v3, 0xd

    .line 169
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrValueParser;->match(I)V

    .line 173
    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrValueParser;->m_normalizer:Lorg/apache/ldap/common/name/NameComponentNormalizer;

    if-eqz v3, :cond_3

    .line 175
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 193
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_4
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrValueParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrValueParser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Lorg/apache/ldap/common/util/NestableRuntimeException;

    const-string v2, "Failed normalization!"

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/util/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
