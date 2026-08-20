.class public Lorg/apache/ldap/common/name/antlrNameParser;
.super Lantlr/LLkParser;
.source "antlrNameParser.java"

# interfaces
.implements Lorg/apache/ldap/common/name/antlrNameParserTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;


# instance fields
.field private m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 196
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

    const-string v2, "OPEN_BRACKET"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CLOSE_BRACKET"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ATTRIBUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WS"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ldap/common/name/antlrNameParser;->_tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 28
    new-instance p1, Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->getInputState()Lantlr/ParserSharedInputState;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/name/antlrValueParser;-><init>(Lantlr/ParserSharedInputState;)V

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    .line 57
    sget-object p1, Lorg/apache/ldap/common/name/antlrNameParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrNameParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/name/antlrNameParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 28
    new-instance p1, Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->getInputState()Lantlr/ParserSharedInputState;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/name/antlrValueParser;-><init>(Lantlr/ParserSharedInputState;)V

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    .line 39
    sget-object p1, Lorg/apache/ldap/common/name/antlrNameParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrNameParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/name/antlrNameParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 28
    new-instance p1, Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->getInputState()Lantlr/ParserSharedInputState;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/name/antlrValueParser;-><init>(Lantlr/ParserSharedInputState;)V

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    .line 48
    sget-object p1, Lorg/apache/ldap/common/name/antlrNameParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/common/name/antlrNameParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final attributeTypeAndValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LA(I)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 162
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    .line 164
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/ldap/common/name/antlrValueParser;->setOid(Z)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 172
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    .line 174
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {v3, v1}, Lorg/apache/ldap/common/name/antlrValueParser;->setOid(Z)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x4

    .line 185
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    .line 187
    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/name/antlrValueParser;->setLhs(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {v2}, Lorg/apache/ldap/common/name/antlrValueParser;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final name()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->nameComponent()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LA(I)I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LA(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x7

    .line 106
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    return-object v0

    .line 78
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LA(I)I

    move-result v2

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    .line 86
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    goto :goto_2

    .line 91
    :cond_2
    new-instance v0, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    .line 95
    :goto_2
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->nameComponent()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final nameComponent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->attributeTypeAndValue()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v1, 0x1

    .line 127
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;->LA(I)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 128
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/antlrNameParser;->match(I)V

    .line 129
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/antlrNameParser;->attributeTypeAndValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNormalizer(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/ldap/common/name/antlrNameParser;->m_valueParser:Lorg/apache/ldap/common/name/antlrValueParser;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/name/antlrValueParser;->setNormalizer(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    return-void
.end method
