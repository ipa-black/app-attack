.class public Lorg/apache/ldap/common/name/DnParser;
.super Ljava/lang/Object;
.source "DnParser.java"

# interfaces
.implements Ljavax/naming/NameParser;


# instance fields
.field private final m_isNormalizing:Z

.field private m_parser:Lorg/apache/ldap/common/name/antlrNameParser;

.field private m_parserIn:Ljava/io/PipedOutputStream;

.field private m_selector:Lantlr/TokenStreamSelector;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_isNormalizing:Z

    .line 69
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ldap/common/name/DnParser;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "failed while initializing a name parser:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v2, v1, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 76
    invoke-virtual {v2, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 77
    throw v2
.end method

.method public constructor <init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ldap/common/name/DnParser;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_isNormalizing:Z

    .line 103
    iget-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_parser:Lorg/apache/ldap/common/name/antlrNameParser;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/name/antlrNameParser;->setNormalizer(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    return-void

    :catch_0
    move-exception p1

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "failed while initializing a name parser:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v1, v0, v2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 99
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 100
    throw v1
.end method

.method private init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    .line 127
    new-instance v0, Lantlr/TokenStreamSelector;

    invoke-direct {v0}, Lantlr/TokenStreamSelector;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    .line 128
    new-instance v0, Lorg/apache/ldap/common/util/ParserPipedInputStream;

    invoke-direct {v0}, Lorg/apache/ldap/common/util/ParserPipedInputStream;-><init>()V

    .line 129
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 132
    new-instance v1, Lorg/apache/ldap/common/name/antlrTypeLexer;

    invoke-direct {v1, v0}, Lorg/apache/ldap/common/name/antlrTypeLexer;-><init>(Ljava/io/InputStream;)V

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    const-string v2, "typeLexer"

    invoke-virtual {v0, v1, v2}, Lantlr/TokenStreamSelector;->addInputStream(Lantlr/TokenStream;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lorg/apache/ldap/common/name/antlrValueLexer;

    invoke-virtual {v1}, Lorg/apache/ldap/common/name/antlrTypeLexer;->getInputState()Lantlr/LexerSharedInputState;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/ldap/common/name/antlrValueLexer;-><init>(Lantlr/LexerSharedInputState;)V

    .line 136
    iget-object v3, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    const-string v4, "valueLexer"

    invoke-virtual {v3, v0, v4}, Lantlr/TokenStreamSelector;->addInputStream(Lantlr/TokenStream;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    invoke-virtual {v1, v3}, Lorg/apache/ldap/common/name/antlrTypeLexer;->setSelector(Lantlr/TokenStreamSelector;)V

    .line 140
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/name/antlrValueLexer;->setSelector(Lantlr/TokenStreamSelector;)V

    .line 141
    iget-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    invoke-virtual {v0, v2}, Lantlr/TokenStreamSelector;->select(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/apache/ldap/common/name/antlrNameParser;

    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_selector:Lantlr/TokenStreamSelector;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/antlrNameParser;-><init>(Lantlr/TokenStream;)V

    iput-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_parser:Lorg/apache/ldap/common/name/antlrNameParser;

    return-void
.end method


# virtual methods
.method public isNormizing()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_isNormalizing:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljavax/naming/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 255
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0}, Lorg/apache/ldap/common/name/LdapName;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;Lorg/apache/ldap/common/name/LdapName;)Ljavax/naming/Name;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lorg/apache/ldap/common/name/LdapName;)Ljavax/naming/Name;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 165
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ldap/common/util/NestableRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PipedOutputStream;->write([B)V

    .line 168
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/io/PipedOutputStream;->write(I)V

    .line 169
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/PipedOutputStream;->write(I)V

    .line 170
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parserIn:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->flush()V

    if-nez p2, :cond_1

    .line 174
    new-instance p2, Lorg/apache/ldap/common/name/LdapName;

    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parser:Lorg/apache/ldap/common/name/antlrNameParser;

    invoke-virtual {v1}, Lorg/apache/ldap/common/name/antlrNameParser;->name()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/common/name/DnParser;->m_parser:Lorg/apache/ldap/common/name/antlrNameParser;

    invoke-virtual {v1}, Lorg/apache/ldap/common/name/antlrNameParser;->name()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/common/name/LdapName;->setList(Ljava/util/ArrayList;)V

    .line 180
    :goto_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lantlr/RecognitionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lantlr/TokenStreamException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ldap/common/util/NestableRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Lorg/apache/ldap/common/util/NestableRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 233
    instance-of v0, p2, Ljavax/naming/NamingException;

    if-eqz v0, :cond_2

    .line 235
    check-cast p2, Ljavax/naming/NamingException;

    .line 236
    throw p2

    .line 240
    :cond_2
    throw p1

    :catch_1
    move-exception p2

    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Parser failure on name:\n\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\nAntlr exception trace:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/ldap/common/util/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    :try_start_3
    invoke-direct {p0}, Lorg/apache/ldap/common/name/DnParser;->init()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    new-instance p2, Lorg/apache/ldap/common/exception/LdapInvalidNameException;

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->INVALIDDNSYNTAX:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p2, p1, v0}, Lorg/apache/ldap/common/exception/LdapInvalidNameException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p2

    .line 225
    :catch_2
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNamingException;

    const-string p2, "Failed to reinitialize dn parser"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1

    :catch_3
    move-exception p2

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Parser failure on name:\n\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\nAntlr exception trace:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/ldap/common/util/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    :try_start_4
    invoke-direct {p0}, Lorg/apache/ldap/common/name/DnParser;->init()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 212
    new-instance p2, Lorg/apache/ldap/common/exception/LdapInvalidNameException;

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->INVALIDDNSYNTAX:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p2, p1, v0}, Lorg/apache/ldap/common/exception/LdapInvalidNameException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p2

    .line 209
    :catch_4
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNamingException;

    const-string p2, "Failed to reinitialize dn parser"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1

    :catch_5
    move-exception p2

    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Parser failure on name:\n\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\nAntlr exception trace:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/ldap/common/util/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    :try_start_5
    invoke-direct {p0}, Lorg/apache/ldap/common/name/DnParser;->init()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 196
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p2, p1, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p2

    .line 193
    :catch_6
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNamingException;

    const-string p2, "Failed to reinitialize dn parser"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 160
    new-instance p2, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p2}, Lorg/apache/ldap/common/name/LdapName;-><init>()V

    :cond_4
    return-object p2
.end method
