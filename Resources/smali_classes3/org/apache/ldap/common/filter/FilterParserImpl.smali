.class public Lorg/apache/ldap/common/filter/FilterParserImpl;
.super Ljava/lang/Object;
.source "FilterParserImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/FilterParser;


# instance fields
.field private lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

.field private parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

.field private parserPipe:Ljava/io/PipedOutputStream;

.field private selector:Lantlr/TokenStreamSelector;

.field private state:Lantlr/LexerSharedInputState;

.field private valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

.field private valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Lorg/apache/ldap/common/filter/FilterParserImpl;->init()V

    return-void
.end method

.method private declared-synchronized init()V
    .locals 3

    monitor-enter p0

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parserPipe:Ljava/io/PipedOutputStream;

    .line 56
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parserPipe:Ljava/io/PipedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    :goto_0
    new-instance v1, Lantlr/LexerSharedInputState;

    invoke-direct {v1, v0}, Lantlr/LexerSharedInputState;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->state:Lantlr/LexerSharedInputState;

    .line 69
    new-instance v0, Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->state:Lantlr/LexerSharedInputState;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterLexer;-><init>(Lantlr/LexerSharedInputState;)V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    .line 70
    new-instance v0, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->state:Lantlr/LexerSharedInputState;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;-><init>(Lantlr/LexerSharedInputState;)V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    .line 72
    new-instance v0, Lantlr/TokenStreamSelector;

    invoke-direct {v0}, Lantlr/TokenStreamSelector;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    .line 73
    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    const-string v2, "filterLexer"

    invoke-virtual {v0, v1, v2}, Lantlr/TokenStreamSelector;->addInputStream(Lantlr/TokenStream;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    const-string v2, "filterValueLexer"

    invoke-virtual {v0, v1, v2}, Lantlr/TokenStreamSelector;->addInputStream(Lantlr/TokenStream;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    invoke-virtual {v0, v1}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V

    .line 77
    new-instance v0, Lorg/apache/ldap/common/filter/AntlrFilterParser;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;-><init>(Lantlr/TokenStream;)V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

    .line 78
    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->setSelector(Lantlr/TokenStreamSelector;)V

    .line 79
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueLexer:Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->setValueLexer(Lorg/apache/ldap/common/filter/AntlrFilterValueLexer;)V

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->setValueParser(Lorg/apache/ldap/common/filter/AntlrFilterValueParser;)V

    .line 82
    new-instance v0, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;-><init>(Lantlr/TokenStream;)V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    .line 83
    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->setSelector(Lantlr/TokenStreamSelector;)V

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->setLexer(Lorg/apache/ldap/common/filter/AntlrFilterLexer;)V

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

    iget-object v1, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->setValueParser(Lorg/apache/ldap/common/filter/AntlrFilterValueParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized parse(Ljava/lang/String;)Lorg/apache/ldap/common/filter/ExprNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Parser failure on filter:\n\t"

    const-string v1, "Parser failure on filter:\n\t"

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 99
    :cond_0
    const-string v2, "**"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    const/16 v2, 0x2a

    .line 101
    invoke-static {p1, v2}, Lorg/apache/ldap/common/util/StringTools;->trimConsecutiveToOne(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 104
    :cond_1
    iget-object v2, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parserPipe:Ljava/io/PipedOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PipedOutputStream;->write([B)V

    .line 105
    iget-object v2, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parserPipe:Ljava/io/PipedOutputStream;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/PipedOutputStream;->write(I)V

    .line 106
    iget-object v2, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parserPipe:Ljava/io/PipedOutputStream;

    invoke-virtual {v2}, Ljava/io/PipedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget-object v2, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

    invoke-virtual {v2}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->filter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->state:Lantlr/LexerSharedInputState;

    invoke-virtual {v3}, Lantlr/LexerSharedInputState;->reset()V

    .line 112
    iget-object v3, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->selector:Lantlr/TokenStreamSelector;

    iget-object v4, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->lexer:Lorg/apache/ldap/common/filter/AntlrFilterLexer;

    invoke-virtual {v3, v4}, Lantlr/TokenStreamSelector;->select(Lantlr/TokenStream;)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lantlr/TokenStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v1

    .line 125
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\nAntlr exception trace:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v1}, Lantlr/TokenStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-direct {p0}, Lorg/apache/ldap/common/filter/FilterParserImpl;->init()V

    .line 128
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception v0

    .line 118
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\nAntlr exception trace:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-direct {p0}, Lorg/apache/ldap/common/filter/FilterParserImpl;->init()V

    .line 121
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Lantlr/RecognitionException;->getColumn()I

    move-result v0

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 96
    :cond_2
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setFilterParserMonitor(Lorg/apache/ldap/common/filter/FilterParserMonitor;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->parser:Lorg/apache/ldap/common/filter/AntlrFilterParser;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterParser;->setFilterParserMonitor(Lorg/apache/ldap/common/filter/FilterParserMonitor;)V

    .line 138
    iget-object v0, p0, Lorg/apache/ldap/common/filter/FilterParserImpl;->valueParser:Lorg/apache/ldap/common/filter/AntlrFilterValueParser;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/filter/AntlrFilterValueParser;->setFilterParserMonitor(Lorg/apache/ldap/common/filter/FilterParserMonitor;)V

    return-void
.end method
