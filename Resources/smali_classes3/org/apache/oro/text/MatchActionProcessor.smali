.class public final Lorg/apache/oro/text/MatchActionProcessor;
.super Ljava/lang/Object;


# instance fields
.field private __actions:Ljava/util/Vector;

.field private __compiler:Lorg/apache/oro/text/regex/PatternCompiler;

.field private __defaultAction:Lorg/apache/oro/text/MatchAction;

.field private __fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

.field private __matcher:Lorg/apache/oro/text/regex/PatternMatcher;

.field private __patterns:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/apache/oro/text/regex/Perl5Compiler;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Compiler;-><init>()V

    new-instance v1, Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {v1}, Lorg/apache/oro/text/regex/Perl5Matcher;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/oro/text/MatchActionProcessor;-><init>(Lorg/apache/oro/text/regex/PatternCompiler;Lorg/apache/oro/text/regex/PatternMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/oro/text/regex/PatternCompiler;Lorg/apache/oro/text/regex/PatternMatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__patterns:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__actions:Ljava/util/Vector;

    new-instance v0, Lorg/apache/oro/text/DefaultMatchAction;

    invoke-direct {v0}, Lorg/apache/oro/text/DefaultMatchAction;-><init>()V

    iput-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__defaultAction:Lorg/apache/oro/text/MatchAction;

    iput-object p1, p0, Lorg/apache/oro/text/MatchActionProcessor;->__compiler:Lorg/apache/oro/text/regex/PatternCompiler;

    iput-object p2, p0, Lorg/apache/oro/text/MatchActionProcessor;->__matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/MatchActionProcessor;->addAction(Ljava/lang/String;I)V

    return-void
.end method

.method public addAction(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__defaultAction:Lorg/apache/oro/text/MatchAction;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/oro/text/MatchActionProcessor;->addAction(Ljava/lang/String;ILorg/apache/oro/text/MatchAction;)V

    return-void
.end method

.method public addAction(Ljava/lang/String;ILorg/apache/oro/text/MatchAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__patterns:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/oro/text/MatchActionProcessor;->__compiler:Lorg/apache/oro/text/regex/PatternCompiler;

    invoke-interface {v1, p1, p2}, Lorg/apache/oro/text/regex/PatternCompiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/oro/text/MatchActionProcessor;->__patterns:Ljava/util/Vector;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/oro/text/MatchActionProcessor;->__actions:Ljava/util/Vector;

    invoke-virtual {p1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addAction(Ljava/lang/String;Lorg/apache/oro/text/MatchAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/oro/text/MatchActionProcessor;->addAction(Ljava/lang/String;ILorg/apache/oro/text/MatchAction;)V

    return-void
.end method

.method public processMatches(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/oro/text/MatchActionProcessor;->processMatches(Ljava/io/Reader;Ljava/io/Writer;)V

    return-void
.end method

.method public processMatches(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/oro/text/MatchActionProcessor;->processMatches(Ljava/io/Reader;Ljava/io/Writer;)V

    return-void
.end method

.method public processMatches(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance p2, Lorg/apache/oro/text/MatchActionInfo;

    invoke-direct {p2}, Lorg/apache/oro/text/MatchActionInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/oro/text/MatchActionProcessor;->__matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    iput-object v2, p2, Lorg/apache/oro/text/MatchActionInfo;->matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    iget-object v2, p0, Lorg/apache/oro/text/MatchActionProcessor;->__fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    iput-object v2, p2, Lorg/apache/oro/text/MatchActionInfo;->fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    iput-object v0, p2, Lorg/apache/oro/text/MatchActionInfo;->input:Ljava/io/BufferedReader;

    iput-object p1, p2, Lorg/apache/oro/text/MatchActionInfo;->output:Ljava/io/PrintWriter;

    const/4 v2, 0x0

    iput-object v2, p2, Lorg/apache/oro/text/MatchActionInfo;->fields:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/oro/text/MatchActionProcessor;->__patterns:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    iput v4, p2, Lorg/apache/oro/text/MatchActionInfo;->lineNumber:I

    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lorg/apache/oro/text/MatchActionInfo;->line:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V

    return-void

    :cond_0
    iget-object v5, p2, Lorg/apache/oro/text/MatchActionInfo;->line:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p2, Lorg/apache/oro/text/MatchActionInfo;->charLine:[C

    move v5, v4

    :goto_1
    if-lt v5, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/apache/oro/text/MatchActionProcessor;->__patterns:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/oro/text/MatchActionProcessor;->__patterns:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/oro/text/regex/Pattern;

    iget-object v7, p0, Lorg/apache/oro/text/MatchActionProcessor;->__matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    iget-object v8, p2, Lorg/apache/oro/text/MatchActionInfo;->charLine:[C

    invoke-interface {v7, v8, v6}, Lorg/apache/oro/text/regex/PatternMatcher;->contains([CLorg/apache/oro/text/regex/Pattern;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/oro/text/MatchActionProcessor;->__matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    invoke-interface {v7}, Lorg/apache/oro/text/regex/PatternMatcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v7

    iput-object v7, p2, Lorg/apache/oro/text/MatchActionInfo;->match:Lorg/apache/oro/text/regex/MatchResult;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v7

    iput v7, p2, Lorg/apache/oro/text/MatchActionInfo;->lineNumber:I

    iput-object v6, p2, Lorg/apache/oro/text/MatchActionInfo;->pattern:Lorg/apache/oro/text/regex/Pattern;

    iget-object v6, p0, Lorg/apache/oro/text/MatchActionProcessor;->__fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_2
    iput-object v2, p2, Lorg/apache/oro/text/MatchActionInfo;->match:Lorg/apache/oro/text/regex/MatchResult;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v6

    iput v6, p2, Lorg/apache/oro/text/MatchActionInfo;->lineNumber:I

    iget-object v6, p0, Lorg/apache/oro/text/MatchActionProcessor;->__fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    if-eqz v6, :cond_3

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lorg/apache/oro/text/MatchActionProcessor;->__matcher:Lorg/apache/oro/text/regex/PatternMatcher;

    iget-object v7, p0, Lorg/apache/oro/text/MatchActionProcessor;->__fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    iget-object v8, p2, Lorg/apache/oro/text/MatchActionInfo;->line:Ljava/lang/String;

    invoke-static {v1, v6, v7, v8}, Lorg/apache/oro/text/regex/Util;->split(Ljava/util/Collection;Lorg/apache/oro/text/regex/PatternMatcher;Lorg/apache/oro/text/regex/Pattern;Ljava/lang/String;)V

    iput-object v1, p2, Lorg/apache/oro/text/MatchActionInfo;->fields:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object v2, p2, Lorg/apache/oro/text/MatchActionInfo;->fields:Ljava/util/List;

    :goto_3
    iget-object v6, p0, Lorg/apache/oro/text/MatchActionProcessor;->__actions:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/oro/text/MatchAction;

    invoke-interface {v6, p2}, Lorg/apache/oro/text/MatchAction;->processMatch(Lorg/apache/oro/text/MatchActionInfo;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setFieldSeparator(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/oro/text/MatchActionProcessor;->setFieldSeparator(Ljava/lang/String;I)V

    return-void
.end method

.method public setFieldSeparator(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/oro/text/regex/MalformedPatternException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/oro/text/MatchActionProcessor;->__fieldSeparator:Lorg/apache/oro/text/regex/Pattern;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/oro/text/MatchActionProcessor;->__compiler:Lorg/apache/oro/text/regex/PatternCompiler;

    invoke-interface {v0, p1, p2}, Lorg/apache/oro/text/regex/PatternCompiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object p1

    goto :goto_0
.end method
